unit uftpconnector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, OverbyteIcsWndControl,
  OverbyteIcsFtpCli;

type
  Tformftp = class(TForm)
    ftpc: TFtpClient;
    procedure FormCreate(Sender: TObject);
    procedure ftpcProgress64(Sender: TObject; Count: Int64; var Abort: Boolean);

  private
    size64: Int64;
    function getsubdirs(path: string): Tstringlist;
    function insert(filename: string): Boolean;
    function connect(): Boolean;
    function cwd(path: string): Boolean;
    function get(filename: string): boolean;
    { Private-Deklarationen }
  public
    function getVersioninfo(pathtofile, localfile: string): boolean;
    function movetoserver(size: Int64; path, oldfile, newfile: string): Boolean;
    { Public-Deklarationen }
  end;

var
  formftp: Tformftp;

implementation
{$R *.dfm}


uses umain, uworker;
function Tformftp.connect: Boolean;
begin
  if not ftpc.Connected then
    ftpc.connect;
  Result := ftpc.Connected;
end;

function Tformftp.cwd(path: string): Boolean;

var
  dirs: Tstringlist;
  dir: string;
begin
  dirs := getsubdirs(path);
  // if not ftpc.connected then
  // ftpc.connect;
  // if not ftpc.connected then
  // exit;

  for dir in dirs do
  begin
    ftpc.HostDirName := dir;
    if not ftpc.cwd then
    begin
      ftpc.HostFileName := dir;
      if not ftpc.mkd then
      begin
        outputdebugstring('kann nicht erstellt werdne');
        exit;
      end
      else
      begin
        // ftpc.HostDirName := ftpc.HostFileName;
        if not ftpc.cwd then
          exit;
      end;

    end;
  end;
  Result := true;
end;

procedure Tformftp.FormCreate(Sender: TObject);
begin

  ftpc.HostName := '148.251.138.2';
  ftpc.UserName := 'tiffy';
  ftpc.PassWord := 'maunze01';
  ftpc.Binary := true;
end;

procedure Tformftp.ftpcProgress64(Sender: TObject; Count: Int64;
  var Abort: Boolean);

var
  schritt: integer;
begin
  if Count = 0 then
    exit;
  schritt := round(100 / size64 * Count);
  formmain.ProgressBar1.Position := schritt;
end;

function Tformftp.get(filename: string): boolean;
begin
  ftpc.HostFileName := filename;
  ftpc.Get;
end;

function Tformftp.getsubdirs(path: string): Tstringlist;
var
  list: Tstringlist;
begin
  list := Tstringlist.Create;
  ExtractStrings(['\', '/'], [], pchar(path), list);
  Result := list;
end;

function Tformftp.getVersioninfo(pathtofile, localfile: string): boolean;
begin
  ftpc.localfilename := localfile;
  if not connect then exit;
  if not cwd(ExtractFilePath(pathtofile)) then exit;
  if not get(ExtractFileName(pathtofile)) then exit;
  Result := true;

end;

function Tformftp.insert(filename: string): Boolean;
begin
  ftpc.HostFileName := filename;
  Result := ftpc.Put;
end;

function Tformftp.movetoserver(size: Int64; path, oldfile, newfile: string)
  : Boolean;
begin
  try
    size64 := size;
    ftpc.localfilename := oldfile;
    if not connect then
      exit;
    if not cwd(path) then
      exit;
    if not insert(newfile) then
      exit;
  finally
    ftpc.Quit;
    Result := true;
  end;
end;

end.
