unit uthread;

interface

uses
  System.Classes, Overbyteicsftpcli, OverbyteIcsMultiProgressBar, uconstants;

type
  tmyftpthread = class(TThread)
    path, oldfilepath, newfilename: string;
    ftpc: TFTpclient;
    mtpbar: Tmultiprogressbar;
  private
    { Private-Deklarationen }
  protected
    procedure Execute; override;
    function connect: boolean;
    function getsubdirs(path: string): tstringlist;
    function insert(filename: string): boolean;
    function cwd(path: string): boolean;
  public
    Constructor Create(path, oldfilepath, newfilename: string; ftpc: TFTpclient;
      mtpbar: Tmultiprogressbar; mode: boolean);
  end;

const
  hostname = '148.251.138.2';
  user = 'tiffy';
  passwd = 'maunze01';

implementation

uses umain;
{
  Wichtig: Methoden und Eigenschaften von Objekten in visuellen Komponenten können nur
  in einer Methode verwendet werden, die mit 'Synchronize' aufgerufen wird, z.B.:

  Synchronize(UpdateCaption);

  und UpdateCaption könnte folgendermaßen aussehen:

  procedure tworker.UpdateCaption;
  begin
  Form1.Caption := 'Im Thread aktualisiert';
  end;

  oder

  Synchronize(
  procedure
  begin
  Form1.Caption := 'Im Thread über eine anonyme Methode aktualisiert'
  end
  )
  );

  wobei eine anonyme Methode übergeben wird.

  Entsprechend kann der Entwickler die Methode 'Queue' mit den gleichen Parametern wie oben
  aufrufen, anstatt eine andere TThread-Klasse als ersten Parameter zu übergeben, und
  den aufrufenden Thread in eine Warteschlange mit dem anderen Thread zu stellen.

}

{ tworker }

function tmyftpthread.connect: boolean;
begin
  ftpc.hostname := hostname;
  ftpc.UserName := user;
  ftpc.PassWord := passwd;
  ftpc.LocalFileName := oldfilepath;
  ftpc.HostDirName := '/';
  ftpc.HostFileName := newfilename;
  Result := ftpc.connect;

end;

constructor tmyftpthread.Create(path, oldfilepath, newfilename: string;
  ftpc: TFTpclient; mtpbar: Tmultiprogressbar; mode: boolean);
begin
  inherited Create(mode);
  self.path := path;
  self.oldfilepath := oldfilepath;
  self.newfilename := newfilename;
  self.ftpc := ftpc;
end;

function tmyftpthread.cwd(path: string): boolean;
var
  dirs: tstringlist;
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
        exit;
      end
      else
      begin
        // ftpc.HostDirName := ftpc.HostFileName;
        if not ftpc.cwd then
          exit;
      end;

    end;
    formmain.lprogress.Caption := dir;
  end;
  Result := true;
end;

procedure tmyftpthread.Execute;
var
  res: boolean;
begin
  try

    while not terminated do
    begin

      res := false;
      formmain.lprogress.Caption := 'Verbindung zum Server herstellen';
      if not connect then
      begin
        exit;
      end;
      formmain.lprogress.Caption := 'Lege Verzeichnisse an...';

      if not cwd(path) then
      begin
        exit;
      end;

      formmain.lprogress.Caption := 'Datei hochladen...';
      if not insert(newfilename) then
      begin
        exit;
      end;
      formmain.lprogress.Caption := 'Datei erfolgreich hochgeladen';
      res := true;
      Break;

    end;
  finally
      ftpc.Quit;
  end;

end;

function tmyftpthread.getsubdirs(path: string): tstringlist;
var
  list: tstringlist;
begin
  list := tstringlist.Create;
  ExtractStrings(['\', '/'], [], pchar(path), list);
  Result := list;
end;

function tmyftpthread.insert(filename: string): boolean;
begin
  ftpc.HostFileName := filename;
  Result := ftpc.Put;
end;

end.
