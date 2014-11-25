unit usettings;

interface

// Pfade und Registry-Einstellungen
procedure getSettings;
function MD5String(const Input: string): String;
// Code chiffre
function VernamCode(sOriginal, sPassword: String): String;

implementation

uses umain, uconstants, uutils, Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, NxPageControl, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.FileCtrl, Vcl.Imaging.pngimage, ShellApi, tlhelp32,
  System.Generics.collections, Contnrs, ShlObj, Registry, StrUtils, DateUtils,
  IdHashMessageDigest, IdFTPList, IdAllFTPListParsers,
  IdExplicitTLSClientServerBase, IdFTP, IdSSLOpenSSL, IdFTPCommon, CommCtrl,
  udbconnector, uEinstellungen;

// MD5-Checksumme für einen String bilden
function MD5String(const Input: string): string;
begin
  with TIdHashMessageDigest5.Create do begin
    Result := AnsiLowerCase(HashStringAsHex(Input));
    DisposeOf;
  end;
end;

function VernamCode(sOriginal, sPassword: String): String;
var
  i, aktpos  : Integer;
  bAkt, bCode: Integer;
  bst        : Char;
begin
  Result      := '';
  aktpos      := 1;
  for i       := Length(sPassword) To Length(sOriginal) do begin
    sPassword := sPassword + Copy(sPassword, aktpos, 1);
    aktpos    := aktpos + 1;
    If aktpos > Length(sPassword) Then aktpos := 1;
  end;

  For i   := 1 To Length(sOriginal) do begin
    bst   := sOriginal[i];
    bAkt  := Ord(bst);
    bst   := sPassword[i];
    bCode := Ord(bst);

    Result := Result + Chr(bAkt Xor bCode);
  end;
End;

// Pfade und Registry-Einstellungen
procedure getSettings;
var
  Passzei, sOriginal, passw, hash, chk: string;
  STR                                 : TMemoryStream;
  // str             : TStringlist;
  XZFRTWert: Array [1 .. 17] of Char;
  buff     : array [0 .. 65] of Char;
  // intern, isTernes: boolean;
  // Passwort                            : string;
  apppath      : string;
  stream       : TStringStream;
  test         : string;
  kundennummern: TList<Integer>;
begin
  kundennummern := TList<Integer>.Create;
  STR           := TMemoryStream.Create();
  stream        := TStringStream.Create('', tencoding.ANSI);
  // STR      := TStringList.Create;
  try

    XZFRTWert[16] := 'f';
    XZFRTWert[6]  := 'p';
    XZFRTWert[12] := 'u';
    XZFRTWert[2]  := '7';
    XZFRTWert[4]  := '1';
    XZFRTWert[1]  := '6';
    XZFRTWert[5]  := '3';
    XZFRTWert[7]  := 'a';
    XZFRTWert[9]  := 't';
    XZFRTWert[10] := '1';
    XZFRTWert[11] := 'Z';
    XZFRTWert[15] := 'i';
    XZFRTWert[8]  := 'b';
    XZFRTWert[13] := 'g';
    XZFRTWert[14] := 'r';
    XZFRTWert[3]  := 'z';
    XZFRTWert[17] := 'f';
    passw         := '';
    passw         := passw + XZFRTWert[1];
    passw         := passw + XZFRTWert[2];
    passw         := passw + XZFRTWert[3];
    passw         := passw + XZFRTWert[4];
    passw         := passw + XZFRTWert[5];
    passw         := passw + XZFRTWert[6];
    passw         := passw + XZFRTWert[7];
    passw         := passw + XZFRTWert[8];
    passw         := passw + XZFRTWert[9];
    passw         := passw + XZFRTWert[10];

    apppath := includetrailingpathdelimiter(getlocalfolder('Scannerprogramm'));

    stream.LoadFromfile(IncludeTrailingPathDelimiter(ExtractFilePath
      (Application.ExeName))  + 'printpcl.org');
    test      := stream.DataString;
    sOriginal := VernamCode(test, passw);
    outputdebugstring(pchar(sOriginal));
    if formmain.getpasswort = '' then begin
      formmain.showeinstellungen;
      ShowMessage('Bitte geben Sie Ihr Passwort ein!');
      exit;
    end;

    if Copy(sOriginal, 16, 6) = formmain.getpasswort then begin
      formmain.kdNr := Copy(sOriginal, 65, 2);
    end;
    // BFW intern
    hash            := MD5String(formmain.getpasswort);
    chk             := ReverseString('be8b6a30fa4876bbbcf744a787f9ecff');
    formmain.intern := chk = hash;
    if formmain.kdNr = '06' then formmain.isTernes := true;
    // if not(formmain.kdNr = '') then

    // if not formmain.intern then

    try
      kundennummern := formmain.dokcons.getKundennrn(strtoint(formmain.kdNr));
      // else kundennummern := getAllKundennrn;
      formmain.setkundennummern(kundennummern);
    except
      outputdebugstring('keine Kundennummer eingegeben');
      ShowMessage
        ('Bitte geben Sie in den Einstellungen Ihr Firmenpasswort ein!');
      try
        Einstellungen.Show;
        Einstellungen.epasswort.SetFocus;
      except

      end;
      ;

    end;
  finally STR.Free;
  end;
end;

end.
