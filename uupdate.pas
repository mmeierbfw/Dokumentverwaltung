{===============================================================================

    Unit uUpdate - startet Threads, welche auf Aktualisierungen prüfen

===============================================================================}

unit uupdate;

interface

uses
  Windows, Classes, SysUtils, Forms, uFTPModule;

  type TVersionInfo = array[1..3] of Integer;

type
  TUpdate = class(TThread)
  private
    { Private-Deklarationen }
  protected
    updateID:   Integer;
    updStatus:  Byte;
    newDoc,
    HasJob:     Boolean;
    lVers,
    rVers:      TVersionInfo;
    FVerz:      String;
    procedure setUPDStatus;
    procedure hasNewDoc;
    procedure setVerz(Verz: String);
    procedure Execute; override;
    function GetVersionInfo(filename:string):TVersionInfo;
    function StreamToArray(stream: TStream):TVersionInfo;
  public constructor Create(UPDID: Integer);
    function StartProcess:Boolean;
    property Verz: String read FVerz write setVerz;
  end;

implementation
uses umain;

constructor TUpdate.Create(UPDID: Integer);
begin
    inherited Create(True);
    HasJob   := FALSE;
    updateID := UPDID;
end;

procedure TUpdate.setUPDStatus;
begin

end;

procedure TUpdate.hasNewDoc;
begin

end;
procedure TUpdate.setVerz(Verz: String);
begin
    if Length(Verz) <> 0 then FVerz := Trim(Verz);
end;

function TUpdate.StartProcess:Boolean;
begin
    // wenn der Thread nicht Suspended ist, läuft noch ein Vorgang
    // --> kein erneuter Start!
    if Self.Suspended then begin
        Self.HasJob := TRUE;
        Self.Resume;
        Result := TRUE;
    end else
        Result := FALSE;
end;

procedure TUpdate.Execute;
begin

end;

function TUpdate.GetVersionInfo(filename:string):TVersionInfo;
var iSize    : Integer;
    data     : Pointer;
    dw       : DWord;
    FileInfo : PVSFixedFileInfo;
    Major, Minor, Revision:Integer;
begin
    Major := 0;     // Hauptversion
    Minor := 0;     // Nebenversion
    Revision := 0;  // Build
    iSize := GetFileVersionInfoSize(PChar(filename),dw);
    if iSize >0 then begin
        GetMem(data,iSize);
        if GetFileVersionInfo(PChar(filename),0,iSize,data) then
            if VerQueryValue(data,'\',Pointer(FileInfo),dw) then begin
                Major := (FileInfo^.dwFileVersionMS shr 16);
                Minor := (FileInfo^.dwFileVersionMS and $FFFF);
                Revision := (FileInfo^.dwFileVersionLS and $FFFF);
              end;
        FreeMem(data,iSize);
    end;
//    Version := IntToStr(Major)+'.'+IntToStr(Minor)+'.'+IntToStr(Revision);
//    Result[1]:= Major;
//    Result[2]:= Minor;
//    Result[3]:= Revision;
end;

// Hilfsfunktion, um die Versionsinformation auszuwerten
function TUpdate.StreamToArray(stream: TStream):TVersionInfo;
var tmp: String;
    a,i: integer;
begin
    stream.Position := 0;
    SetLength(tmp, 7);
    stream.Read(Pointer(tmp)^, Length(tmp));
    a := 1;
    for I := a to Length(tmp) do
        if (tmp[i] <> #13) AND (tmp[i] <> #10) then begin
            if a > 3 then break;
            Result[a] := StrToInt(tmp[i]);
            inc(a);
        end;
end;

end.
