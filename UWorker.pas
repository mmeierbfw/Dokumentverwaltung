unit UWorker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ucollector, strutils, math, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls,
  uusables, shellapi, uutils, uconstants, udbconnector,
  System.generics.collections, uparser, umysqlcontroller, uftpconnector;

type

  TStringArray = array of string;

  TWorker = class(TObject)

  private
    scannedDocument: string;
    jahr, lieg, nnummer, anummer, knummer, erl, Dok, Dokname, PE, ntzn, nname,
      abldat, vertbg, datname, einbaudat, gueltigkeitsdat: string;
    fmypath, pathname                                    : string;

    col             : TCollector;
    no              : string;
    zielverzeichnis : string;
    zieldatei       : string;
    abspathziel     : string;
    size64          : Int64;
    scanneddocuments: TStringList;
    zieldateien     : TStringList;
    dict            : TDictionary<string, string>;
    ftpcollectorlist: TStringList;
    { erzeuge eine Pfad aus Kundennummer, Liegenschaft, Dateityp und Datum }
    function createPath(dict: TDictionary<string, string>;
      doctype: integer): string;

    { erzeuge einen Dateinamen für das neue Dokument aus Kundennummer, Dateityp, Datum
      und ID }
    function createFileName(doc: string; dict: TDictionary<string, string>;
      doctype: integer): string;
    function filled(list: TStringList): boolean;
    function insertquery(doctype: integer;
      dict: TDictionary<string, string>): boolean;

    function doStuff(doctype: integer): boolean;
    function writenote(text, filepath: string): boolean;
    function emailsent(): boolean;
    function getemailinfo(): Temail;
    function createfiles(dict: TDictionary<string, string>; doctype: integer)
      : TStringList;
    function moveonewlocation(path, newfilename: string): boolean; overload;
    function moveonewlocation(path: string; filenames: TStringList)
      : boolean; overload;
    procedure createfileandpath(doc: string; dict: TDictionary<string, string>;
      doctpy: integer);

    procedure createfilesandpath(dict: TDictionary<string, string>;
      doctype: integer);
    function createfilenamewithoutending(doc: string;
      dict: TDictionary<string, string>; doctype: integer): string;
    function compareversions: boolean;
    function onlydigital: boolean;
    function movetoftpcollector(originaldocument, newfilename: string): boolean;
    procedure handleemails(doctype: integer);
    procedure handledigitals;
    procedure Handledocuments(doctype: integer);
  public
    Constructor Create();
    function getnewsetup: boolean;
    function checkUpdate(): boolean;
    function deleteimage(): boolean;
    function dowork(path: string; tag: integer): boolean; overload;
    function dowork(path: TStringList; tag: integer): boolean; overload;
    function installupdate: boolean;
    function setauftragsdaten: boolean;
    function addtolist(item: string): boolean;

    function createrescue(item: string): string;
    function rescueolddata(list: TStringList): boolean;
    function getnutzerdaten(nutzernummer, kundennummer, liegenschaft: string)
      : TDictionary<string, string>;
  end;

const
  BufSize = 512;

implementation

{ TWorker }

uses umain;

constructor TWorker.Create;
begin

  // pad zum erstellen temporärer Dateien in appdata...
  fmypath          := getLocalFolder('Scannerprogramm');
  col              := TCollector.Create();
  ftpcollectorlist := TStringList.Create;

end;

procedure TWorker.createfilesandpath(dict: TDictionary<string, string>;
  doctype: integer);
var
  line: string;
begin
  zielverzeichnis := createPath(dict, doctype);
  zieldateien     := createfiles(dict, doctype);
  abspathziel     := '';
  for line in zieldateien do begin
    abspathziel := abspathziel + ';' + includetrailingpathdelimiter
      (zielverzeichnis) + line;
  end;
end;

{ erzeuge einen Dateinamen aus Kundennummer, Liegenscahft, Nutzerunmmer, Typ,
  Datum und ID }
procedure TWorker.createfileandpath(doc: string;
  dict: TDictionary<string, string>; doctpy: integer);
begin
  zieldateien     := TStringList.Create;
  zielverzeichnis := createPath(dict, doctpy);
  zieldatei       := createFileName(doc, dict, doctpy);

  abspathziel := zielverzeichnis + zieldatei;
  zieldateien.Add(abspathziel);
end;

function TWorker.createfiles(dict: TDictionary<string, string>;
  doctype: integer): TStringList;
var
  filename, ending: string;
  i, size         : integer;
  list            : TStringList;
begin
  list              := TStringList.Create;
  Dok               := Format('%.3d', [doctype]);
  size              := scanneddocuments.Count;
  for i             := 0 to size - 1 do begin
    scannedDocument := scanneddocuments[i];
    ending          := ExtractFileExt(scannedDocument);
    filename := createfilenamewithoutending(scannedDocument, dict, doctype);
    filename := filename + '(' + inttostr(i) + ')' + ending;
    list.Add(filename);
  end;
  Result := list;
end;

function TWorker.createfilenamewithoutending(doc: string;
  dict: TDictionary<string, string>; doctype: integer): string;

var
  ending, li, ni, pi, ii, nowstring: string;
var
  Dok   : string;
  helper: string;
begin
  with formmain.dokcons do begin
    Dok := Format('%.3d', [doctype]);

    li := StringOfchar('0', 7 - Length(dict.items[formmain.dokcons.liegenschaft]
      )) + dict.items[liegenschaft];
    try ni := StringOfchar('0', 3 - Length(dict[nutzernummer])) + dict.items
        [nutzernummer];
    except ni := 'xxx';
    end;
    pi        := dict.items[Posteingang];
    try ii    := dict.items['Dokumentid'];
    except ii := 'xx';

    end;
    DateTimeToString(nowstring, 'yymmddhhmmsszzz', now);
    if ii = '' then ii := 'xx';
    Result := li + '_' + ni + '_' + Dok + '_' + pi + '_' + nowstring + '_' + ii;
  end;
end;

function TWorker.createFileName(doc: string; dict: TDictionary<string, string>;
  doctype: integer): string;
var
  name, ending: string;
begin
  name := createfilenamewithoutending(doc, dict, doctype);
  if not(doc = '') then ending := ExtractFileExt(scannedDocument)
  else // es gibt kein gescanntes Dokument, weil es nur eine Telefonnotiz ist...
      ending := '.txt'; { TODO : was, wenn erst später gescannt wird?! }
  Result     := name + ending;

end;

{ erzeuge einen Pfad aus Kundennummer, LIegenschaft, Typ und Jahr im Tiffverzeichnis }
function TWorker.getemailinfo: Temail;
begin
  Result := formparser.getInfoFromMail(scannedDocument);
end;

function TWorker.getnewsetup: boolean;
begin
  formftp := Tformftp.Create(nil);
  try
    screen.Cursor := crHourGlass;
    if formftp.downloadsetup(formmain.dokcons.setupdirection,
      getsetuplocation('Scannerprogramm')) then

      // begin
        ShellExecute(Application.Handle, 'open',
        pchar(getsetuplocation('Scannerprogramm')), nil, nil, SW_SHOWNORMAL);
    formmain.Close;
    // end
    // else Showmessage('nicht so einfach');
  finally
    screen.Cursor := crdefault;
    formftp.Free;
  end;
end;

procedure TWorker.handledigitals;
begin
  if onlydigital then
    // es sind alles digitale Dateien. Nicht analog vorhanden-
    try dict.Remove('Dokumentid');
    except outputdebugstring('keine Dokumentid vorhanden');
    end;
end;

procedure TWorker.Handledocuments(doctype: integer);
var
  hastowritefile: boolean;
begin
  hastowritefile := Length(scanneddocuments[0]) = 0;
  if scanneddocuments.Count > 1 then { viele Dokumente }
      createfilesandpath(dict, doctype);
  if scanneddocuments.Count = 1 then { gilt auch, wenn kein Dokument
      eingegeben wurde!! (txt Datei, die im Anschluss angelegt wird }
      createfileandpath(scannedDocument, dict, doctype);

  if hastowritefile then // es darf keine dokid vergeben werden!!
  begin
    dict.Remove('Dokumentid');
    writenote(dict[formmain.dokcons.Notizen], abspathziel);
  end;

  dict.AddOrSetValue(formmain.dokcons.Dateiname, escapetext(abspathziel));
end;

procedure TWorker.handleemails(doctype: integer);
var
  email: Temail;
begin
  if emailsent then begin
    email := getemailinfo;
    dict  := col.collect(doctype, email.getproperties);
  end
  else dict := col.collect(doctype);
end;

function TWorker.addtolist(item: string): boolean;
begin
  ftpcollectorlist.Add(item);
end;

function TWorker.checkUpdate: boolean;
var
  serverloc, localloc: string;
begin
  if formftp = nil then formftp := Tformftp.Create(nil);

  localloc  := gettmpversion('Scannerprogramm');
  serverloc := formmain.dokcons.serverversionsdatei;

  if formftp.getversioninfo(serverloc, localloc) then Result := compareversions
  else Result := false;
end;

function TWorker.compareversions: boolean;
var
  thisversion          : string;
  serverversion        : string;
  list                 : TStringList;
  serverlist, locallist: TStringList;
  i, size              : integer;
  serverint, localint  : integer;
begin
  list := TStringList.Create;
  try
    list.loadfromfile(gettmpversion('Scannerprogramm'));
    serverversion      := list[0];
  except serverversion := '1.0.0';

  end;
  // showmessage('Version online: ' + serverversion);
  thisversion := GetCurrentVersionforcheck;
  // showmessage('installierte Version: ' + thisversion);
  serverlist               := TStringList.Create;
  locallist                := TStringList.Create;
  serverlist.DelimitedText := serverversion;
  locallist.DelimitedText  := thisversion;
  serverlist.Delimiter     := '.';
  locallist.Delimiter      := '.';
  size                     := min(locallist.Count, serverlist.Count);
  for i                    := 0 to size - 1 do begin
    if (serverlist[i] > locallist[i]) then begin
      Result := true;
      exit;
    end;
    if (serverlist[i] = locallist[i]) then continue;
  end;
end;

function TWorker.createPath(dict: TDictionary<string, string>;
  doctype: integer): string;
var
  path            : WideString;
  Dok             : string;
  tp, kn, li, year: string;
begin

  with formmain.dokcons do begin
    kn := StringOfchar('0', 2 - Length(dict.items[formmain.dokcons.kundennummer]
      )) + dict.items[kundennummer];
    li := StringOfchar('0', 7 - Length(dict.items[liegenschaft])) +
      dict.items[liegenschaft];
    year                := '20' + copy(dict.items[Posteingang], 1, 2);
    if goOnline then tp := tiffpathonline
    else tp             := tiffPath;
    Dok                 := Format('%.3d', [doctype]);
    Result              := '';
    if not daheim then
        path  := tp + '\' + kn + '\' + li + '\' + Dok + '\' + year + '\'
    else path := 'c:\Users\Melanie\Documents\Arbeitsordner\gescannt\' + knummer
        + '\' + lieg + '\' + Dok + '\' + jahr + '\';

    if goOnline then begin
      Result := path;
      exit;
    end;
    if not Directoryexists(path) then begin
      forcedirectories(path);
    end;
    Result := path;
  end;
end;

function TWorker.createrescue(item: string): string;
var
  path                : string;
  l                   : string;
  n                   : string;
  j                   : string;
  t                   : string;
  k                   : string;
  tp                  : string;
  list                : TStringList;
  abspath, newfilename: String;
  str                 : string;
begin
  list               := TStringList.Create;
  list.Delimiter     := '_';
  list.DelimitedText := item;
  tp                 := 'scdb';
  l                  := list[0];
  k                  := copy(l, 1, 2);
  t                  := list[2];
  n                  := list[1];
  j                  := '20' + copy(list[3], 1, 2);
  path               := tp + '\' + k + '\' + l + '\' + t + '\' + j + '\';
  // showmessage(path);
  abspath := includetrailingpathdelimiter
    (getCollectorfolder('Scannerprogramm')) + item;
  newfilename := includetrailingpathdelimiter(path) + item;
  Result      := 'SET ' + abspath + '^' + newfilename;
  // formmain.npc.Send(str);
end;

function TWorker.doStuff(doctype: integer): boolean;
var

  tmplist       : TDictionary<string, string>;
  email         : Temail;
  col           : TCollector;
  hastowritefile: boolean;
  line          : string;
  scannedd      : TObject;
  helpersb      : string;
  helperid      : string;
  helperint     : integer;
begin
  col := TCollector.Create;
  try
    handleemails(doctype);
    handledigitals;
    Handledocuments(doctype);

    if not moveonewlocation(zielverzeichnis, zieldateien) then begin
      exit;
    end;

    // und endlich der echte insert-Aufruf
    if not insertquery(doctype, dict) then begin
      Result := false;
      exit;
    end;
    // und die Datenbank hochsetzen
    tmplist         := TDictionary<string, string>.Create;
    helpersb        := formmain.getsachbearbeiter;
    try helperid    := dict.items['Dokumentid'];
    except helperid := '-1';
    end;
    if helperid = '' then helperid := '0';
    try helperint                  := strtoint(helperid);
    except helperint               := 0;
    end;
    if (helperint > 0) then begin

      try
        try
          tmplist.Add(formmain.dokcons.sachbearbeiter,
            formmain.getsachbearbeiter);
          tmplist.Add('Dokumentid.Dokumentid', helperid);
          formdb.replacequery('Dokumentid', tmplist);
        except
          begin
            Result := false;
            exit;
          end;
        end;
      finally tmplist.Free;
      end;
    end;

    // alle temporären Dateien wieder löschen - sind jetzt auf dem Server
    for line in scanneddocuments do DeleteFile(line);
    Result := true;
  finally
    col.Free;
    dict.Free;
  end;

end;

function TWorker.dowork(path: TStringList; tag: integer): boolean;
begin
  scanneddocuments    := path;
  try scannedDocument := scanneddocuments[0];
  except
    scannedDocument := '';
    scanneddocuments.Add(scannedDocument);
  end;
  Result := doStuff(tag);
end;

function TWorker.dowork(path: string; tag: integer): boolean;
begin
  scanneddocuments := TStringList.Create;
  scannedDocument  := path;
  scanneddocuments.Add(scannedDocument);
  Result := doStuff(tag);
end;

function TWorker.deleteimage: boolean;
begin
  DeleteFile(scannedDocument);
end;

function TWorker.emailsent: boolean;
begin
  Result := scannedDocument.EndsWith('eml');
end;

function TWorker.filled(list: TStringList): boolean;
begin
  Result := list.Count > 0;
end;

function TWorker.insertquery(doctype: integer;
  dict: TDictionary<string, string>): boolean;
var
  table: string;
begin

  table := gettable(doctype);
  with formmain.dokcons do begin
    Result := formdb.insertquery(doctype, table, dict);
  end;

end;

function TWorker.installupdate: boolean;
var
  serverloc, localloc: string;
begin
  serverloc := formmain.dokcons.setupdirection;
  {$IFDEF debug}
  localloc := 'c:\Users\jovani\Pictures\setup.exe';
  {$ENDIF}
  {$IFDEF release}
  localloc := getlocalsetupdirection('Scannerprogramm');
  {$ENDIF}
  if not formftp.getupdate(serverloc, localloc) then begin
    showmessage('update konnte nicht heruntergeladen werden');
    Result := false;
    exit;
  end;
  Shellmyex(pchar(localloc), SW_SHOWNORMAL);
end;

function TWorker.moveonewlocation(path, newfilename: string): boolean;
var
  dateinamen: string;
begin
  dateinamen               := dict.items[formmain.dokcons.Dateiname];
  formmain.Gauge1.MinValue := 0;
  formmain.Gauge1.Progress := 0;

  size64 := formmain.getfilesizeex(scannedDocument);

  Result := formftp.movetoserver(size64, path, scannedDocument, newfilename);
end;

function TWorker.moveonewlocation(path: string; filenames: TStringList)
  : boolean;
var
  filename: string;
  i, size : integer;
begin
  size                               := filenames.Count;
  for i                              := 0 to size - 1 do begin
    filename                         := filenames[i];
    if size > 1 then scannedDocument := scanneddocuments[i];
    // if not moveonewlocation(zielverzeichnis, filename) then
    if not movetoftpcollector(scannedDocument, filename) then exit;
  end;
  Result := true;
end;

function TWorker.movetoftpcollector(originaldocument,
  newfilename: string): boolean;
var
  collectdir: string;
  abspath   : string;
  stream    : TFileStream;
  str       : pchar;
  buf       : array [0 .. BufSize - 1] of char;
  written   : Cardinal;
  pipe      : Thandle;
  FSA       : SECURITY_ATTRIBUTES;
  FSD       : SECURITY_DESCRIPTOR;
  MS        : TMemoryStream;
  elem      : string;
  lastminute: TStringList;
begin

  // stream := TFileStream.Create(getcollectorlistfile, fmOpenReadWrite);
  collectdir := getCollectorfolder('Scannerprogramm');
  abspath    := includetrailingpathdelimiter(collectdir) +
    extractfilename(newfilename);
  if copyfile(pchar(originaldocument), pchar(abspath), true) then
      DeleteFile(originaldocument);

  str := pchar('SET ' + abspath + '^' + newfilename);
  formmain.npc.Send(str);
  // if not isexerunning('ftpcollectorui.exe') then formmain.connecttocollector;
  // ftpcollectorlist := formmain.getcollectorlist;
  Result := true;
  // lastminute := TStringList.Create;
  // listfiledir(getCollectorfolder, lastminute);
  // for elem in lastminute do begin
  // createrescue(elem);
  // end;
  // if not filled(ftpcollectorlist) then exit;
  // for elem in ftpcollectorlist do begin
  // formmain.npc.Send(elem);
end;

// FillChar(buf, BufSize, #0);
// move(str[0], buf[0], Length(str) * SizeOf(char));
// WriteFile(pipe, buf[0], Length(str) * sizeof(char), written ,nil);
// CloseHandle(pipe);

// end;

function TWorker.onlydigital: boolean;
var
  absname, filename: string;
begin
  for absname in scanneddocuments do begin
    filename := extractfilename(absname);
    if AnsiStartsStr('scan', filename) then begin
      Result := false;
      exit;
    end;
  end;
  Result := true;
end;

function TWorker.rescueolddata(list: TStringList): boolean;
var
  elem     : string;
  sendingel: string;
begin
  try
    for elem in list do begin
      sendingel := createrescue(elem);
      formmain.npc.Send(sendingel);
      Result := true;
    end;
  except Result := false;
  end;
end;

function TWorker.setauftragsdaten: boolean;
var
  list: TStringList;
begin
  if FileExists(getauftragsdaten('Scannerprogramm')) then exit;
  list := TStringList.Create;
  list.Add('Zwischenablesung');
  list.Add('Montage');
  list.Add('Reklamation');
  list.SaveToFile(getauftragsdaten('Scannerprogramm'));
end;

function TWorker.getnutzerdaten(nutzernummer, kundennummer,
  liegenschaft: string): TDictionary<string, string>;

var
  dict                 : TDictionary<string, string>;
  hostname, wherestring: string;
  list                 : TStringList;
  database             : string;
  table                : string;
begin
  list := TStringList.Create;
  list.Add('WO5');
  list.Add('WO6');
  database := formmain.dokcons.kuarchiv + kundennummer + '\' + liegenschaft +
    '\' + liegenschaft + '.DB';
  wherestring := ' WHERE WO1 = ' + inttostr(strtoint(nutzernummer)) +
    ' AND WO0=' + QuotedStr('W');
  table  := 'WO_TYP';
  dict   := formdb.getfromhn(database, table, wherestring, list);
  Result := dict;
end;

function TWorker.writenote(text, filepath: string): boolean;
var
  myfile: TextFile;
begin
  if not formmain.dokcons.goOnline then AssignFile(myfile, filepath)
  else begin
    scannedDocument := getLocalFolder('Scannerprogramm') + 'tmp.txt';
    scanneddocuments.Add(scannedDocument);
  end;

  AssignFile(myfile, scannedDocument);
  Rewrite(myfile);
  writeln(myfile, text);
  closefile(myfile);
  Result := true;
  exit;
end;

end.
