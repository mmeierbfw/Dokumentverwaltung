unit uConstants;

interface

uses Windows, System.generics.collections, SysUtils, Variants, Classes,
  Graphics, uutils, Controls, Forms, messages, dialogs;

type
  TItem = record
    _Key: integer;
    _Value: string;
  end;

const

  aenderungsdatei = 'aenderung.txt';
  auftragsdatei   = 'auftrag.txt';
  goOnline        = true;
  daheim          = false;
  default_value   = '';
  { für main-Formular }
  CSIDL_LOCAL_APPDATA    = $001C;
  CSIDL_COMMON_DOCUMENTS = $002E;
  CSIDL_COMMON_APPDATA   = $0023;
  tiffPath               = '\\192.168.1.4\jovani\scdb';
  tiffpathonline         = 'scdb';

  kuarchiv            = '\\BFWKA\KUARCHIV\';
  versionlocation     = 'dokver/';
  serverversionsdatei = versionlocation + 'version.txt';

  setupdirection = versionlocation + 'setup.exe';
  localsetup     = 'setup.exe';
  inidatei       = 'scannertool.ini';
  ending         = 'pdf';
  { middle }
  runningLabelText = 'Dokumentennummer';
  { uscanningWiaWia }

  table_zwi   = 'scandokumente.zwischenablesung';
  table_zwi2  = 'scandokumente.zwischenablesung_copy';
  table_mon   = 'scandokumente.montagen';
  table_en    = 'scandokumente.energieausweis';
  table_kos   = 'scandokumente.kostenermittlungen';
  table_rekl  = 'scandokumente.reklamation';
  table_ang   = 'scandokumente.angebotsanfrage';
  table_auf   = 'scandokumente.auftragsanforderung';
  table_nut   = 'scandokumente.nutzerlisten';
  table_sonst = 'scandokumente.sonstiges';
  table_vert  = 'scandokumente.verträge';

  // muss halt so
  WiaFormatBMP  = '{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}';
  WiaFormatTIFF = '{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}';
  { B96B3CB1-0728-11D3-9D7B-0000F81EF32E }
  // dito
  cancelError = true;
  // Zeit, die der Scanner wartet, bis er einen erneuten Papiereinzug versucht.
  sleeptime = 3000;
  tooslow   = 'Fertig mit Scannen?';
  nopaper   = 'Es konnte kein Papier im Einzug gefunden werden. ' + #13 +
    'Bitte Einlegen um zu scannen';

  // Dateiname; so wird in tiffpath gespeichert. Ist vorerst die laufende Nummer.
  tifffilename = '%s.pdf';
  { NUR ZUM TESTEN!!!!!!! }
  // user = 'Scantest12';
  // password = '12';

  { lokal auf Laufwerk H }
  localmysqluser = 'Scantest12';
  localpassword  = 'maunze01';

  // localmysqluser = 'root';
  localhostname = '192.168.1.215';
  localPort     = '3306';
  { auf Server }
  servermysqluser     = 'root';
  serveruser          = 'tiffy';
  serverpassword      = 'C3_az?!a';
  serverhostname      = '148.251.138.2';
  serverport          = '7777';
  serverlocalhost     = '127.0.0.1';
  serverremotePort    = '3306';
  serverlocalhostport = serverport + ':' + serverlocalhost + ':' +
    serverremotePort;

  database  = 'scandokumente';
  runningID = 'runningid';

  defaulttext =
    'Wenn das Sammelverzeichnis (links mittig) leer ist, bitte mindestens ein Dokument scannen.'
    + #13#13#13 +
    'Eine Vorschau ist mit dem "Thumbnail" Button über der Verzeichnisliste möglich.'
    + #13 + 'Innerhalb der Reiter kann man sich sowohl per Tabtaste, als auch per Pfeiltasten bewegen'
    + #13 + 'Scannen ist auch während der Maskeneingabe möglich' +
    'Zwischenablesungen sicher, Montagen und Telefonnotiz ungetestet' + #13 +
    'Eingaben werden nicht mehr gelöscht, wenn der Reiter gewechselt wird' + #13
    + 'Einige Labels angepasst' + #13 +
    'Emails können auch in den Sammelordner geschoben werden:' + #13 +
    'Für den Benutzer unverändert, im Hintergrund werden Daten aus der Mail gespeichert'
    + #13 + '(Betreff, Absender und Empfänger und deren Emailadressen)';

  { für Zwischenablesung }
  zwischenablesung   = 'zwischenablesung';
  montage            = 'montagen';
  sonstiges          = 'sonstiges';
  reklamation        = 'reklamation';
  Energieausweis     = 'energieausweis';
  Kostenermittlungen = 'kostenermittlungen';
  nutzerlisten       = 'nutzerlisten';
  vertrag            = 'verträge';
  angebote           = 'angebotsanfrage';
  auftrag            = 'auftragsanforderung';

  liegenschaft    = 'liegenschaft';
  Kundennummer    = 'kundennummer';
  Posteingang     = 'posteingang';
  Vertragsbeginn  = 'Vertragsbeginn';
  Ablesedatum     = 'Ablesedatum';
  Nutzernummer    = 'Nutzernummer';
  Nutzername1     = 'Nutzername1';
  nutzername2     = 'Nutzername2';
  nutzername      = 'Nutzername';
  erledigt        = 'erledigt';
  Notizen         = 'Notizen';
  Auftragsnummer  = 'Auftragsnummer';
  Dateiname       = 'Dateiname';
  id              = 'Dokumentid';
  sachbearbeiter  = 'sachbearbeiter';
  datumgepr       = 'datumgeprueft';
  sammelordner    = 'Sammelordner';
  abrechnungsende = 'Abrechnungsende';
  { für Montage }
  Gueltigkeitsdatum = 'Gueltigkeitsdatum';
  Montagedatum      = 'Einbaudatum';

  nicherledigtstr = '0';
  erledigtstr     = '1';

  pseudoliegenschaft = 'Pseudoliegenschaft';
  strasse            = 'Strasse';
  ort                = 'Ort';
  plz                = 'PLZ';

  { für neue Aufträge }
  auftragstyp = 'Auftragstyp';
  { Dokumentarten }
  ZwischenablsgINT  = 1;
  MontageINT        = 0;
  ReklamationINT    = 7;
  EnergieausweisINT = 4;
  KostenINT         = 5;
  Nutzerint         = 6;
  SonstigesInt      = 8;
  Vertragsint       = 9;
  Angebotsint       = 2;
  Auftragsint       = 3;

  { für Email }
  Absendername     = 'Absendername';
  Absenderadresse  = 'Absenderadresse';
  Empfängername    = 'Empfängername';
  Empfängeradresse = 'Empfängeradresse';
  Betref           = 'Betreff';

  { für anrufe }
  Anrufer       = 'Anrufer';
  Telefonnummer = 'Telefonnummer';
  { für MysqlAufrufe }
  insertBegin  = '%s %s (';
  insertMiddle = ') VALUES(';
  insertEnd    = ');';
  // Variable für count(*) Aufrufe
  cntVar      = 'cnt';
  selectCount = 'SELECT COUNT(*) AS ' + cntVar + ' FROM %s Where ' +
    Kundennummer + ' = %d';

  selectLIegenschaftsdaten =
    'SELECT plz, Ort, Strasse, databr, vermerke FROM danlsuc' +
    ' WHERE lienr = %d';

  { Farben }

  blau            = $00EBBE8E;
  hellgrau        = $00F1F1F1;
  neueshellblau   = $00FEEACF;
  neuestesellblau = $00FFFFF6;
  hellorange      = $00008EFF;
  dunkelblau      = $00745243;
  hellblau        = $00DEC7BC;
  grau            = $00DCDCDC;
  orange          = $004E87FF;
  hellbraun       = $005899AC;
  dunkelgrau      = $696969;

  { Dokumenttyp }

  pdf     = '  PDF-Datei';
  bild    = 'gescanntes Dokument';
  eml     = '  Email';
  default = '  unbekanntes Dateiformat';
  digital = 'digitales Dokument';

  emailverarbeitung = 1;
  bildverarbeitung  = 2;
  scandokument      = 3;
  // fmypath = showspecialFolder(CSIDL_LOCAL_APPDATA) + '\ScannerProgramm' ;
  // ShellAufruf = '/C plink.exe -ssh ' + serverhostname + ' -l ' + serveruser +' -L '
  // + serverlocalhostPort;
  ShellAufruf = '/C plink.exe -ssh linuxdb';

  scannerverzeichnis = 'scanner\';

  keinedokumentetext = 'Keine Dokumente im Sammelverzeichnis';
  programmname       = 'ScannerProgramm';

  editmaskdatum                           = '00/00/00;';
  dokumentarten: array [0 .. 5] of string = (zwischenablesung, sonstiges,
    montage, Energieausweis, nutzerlisten, Kostenermittlungen);
  // function getScannerFolder(): string;

function getVersionsnummer(): string;

implementation

function getVersionsnummer(): string;
var
  version    : TStringlist;
  versionpath: string;
begin
  version     := TStringlist.Create;
  versionpath := IncludeTrailingPathDelimiter(Application.ExeName) +
    'tmp/version.txt';
  try
    version.LoadFromFile(versionpath);
    Result      := version[0];
  except Result := '0';
  end;
end;

end.
