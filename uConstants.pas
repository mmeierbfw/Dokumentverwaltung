unit uConstants;

interface

uses Windows, System.generics.collections, SysUtils, Variants, Classes,
  Graphics, uutils, Controls, Forms, messages, dialogs, ubaseconstants;

type
  TItem = record
    _Key: integer;
    _Value: string;
  end;

  tconst = class(Tbaseconstants)
  const

    keinekdn        = 'keine Kundennummer ausgew�hlt';
    falschesFormat  = 'Datum als ttmmjj';
    ungueltigDatum  = 'ung�ltiges Datum';
    aenderungsdatei = 'aenderung.txt';
    auftragsdatei   = 'auftrag.txt';
    goOnline        = true;
    daheim          = false;
    default_value   = '';
    { f�r main-Formular }
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

    table_zwi       = 'scandokumente.zwischenablesung';
    table_zwi_neu   = 'test.zwischenablesung';
    table_zwi2      = 'scandokumente.zwischenablesung_copy';
    table_mon       = 'scandokumente.montagen';
    table_mon_neu   = 'test.montage';
    table_en        = 'scandokumente.energieausweis';
    table_en_neu    = 'test.energieausweis';
    table_kos       = 'scandokumente.kostenermittlungen';
    table_kos_neu   = 'test.kostenermittlung';
    table_rekl      = 'scandokumente.reklamation';
    table_rekl_neu  = 'test.reklamation';
    table_ang       = 'scandokumente.angebotsanfrage';
    table_ang_neu   = 'test.angebotsanfrage';
    table_auf       = 'scandokumente.auftragsanforderung';
    table_auf_neu   = 'test.auftragsanforderung';
    table_nut       = 'scandokumente.nutzerlisten';
    table_nut_neu   = 'test.nutzerliste';
    table_sonst     = 'scandokumente.sonstiges';
    table_sonst_neu = 'test.sonstiges';
    table_vert      = 'scandokumente.vertr�ge';
    table_vert_neu  = 'test.vertrag';
    table_common    = 'test.commontab';
    table_dok       = 'test.dokument';
    table_typen     = 'test.typen';
    typ_name        = 'typen_name';
    table_email     = 'test.email';

    view_zwi    = 'test.zwischenablesungen';
    view_en     = 'test.energieausweise';
    view_rekl   = 'test.reklamationen';
    view_nut    = 'test.nutzerlisten';
    view_mon    = 'test.montagen';
    view_kosnut = 'test.kostenermittlungen';

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
      'Eine Vorschau ist mit dem "Thumbnail" Button �ber der Verzeichnisliste m�glich.'
      + #13 + 'Innerhalb der Reiter kann man sich sowohl per Tabtaste, als auch per Pfeiltasten bewegen'
      + #13 + 'Scannen ist auch w�hrend der Maskeneingabe m�glich' +
      'Zwischenablesungen sicher, Montagen und Telefonnotiz ungetestet' + #13 +
      'Eingaben werden nicht mehr gel�scht, wenn der Reiter gewechselt wird' +
      #13 + 'Einige Labels angepasst' + #13 +
      'Emails k�nnen auch in den Sammelordner geschoben werden:' + #13 +
      'F�r den Benutzer unver�ndert, im Hintergrund werden Daten aus der Mail gespeichert'
      + #13 + '(Betreff, Absender und Empf�nger und deren Emailadressen)';

    { f�r Zwischenablesung }
    zwischenablesung   = 'zwischenablesung';
    montage            = 'montage';
    sonstiges          = 'sonstiges';
    reklamation        = 'reklamation';
    Energieausweis     = 'energieausweis';
    Kostenermittlungen = 'kostenermittlungen';
    nutzerlisten       = 'nutzerlisten';
    vertrag            = 'vertr�ge';
    angebote           = 'angebotsanfrage';
    auftrag            = 'auftragsanforderung';

    liegenschaft    = 'liegenschaft';
    Kundennummer    = 'kundennummer';
    Posteingang     = 'posteingang';
    Vertragsbeginn  = 'vertragsbeginn';
    Ablesedatum     = 'ablesedatum';
    Nutzernummer    = 'nutzernummer';
    Nutzername1     = 'Nutzername1';
    nutzername2     = 'Nutzername2';
    nutzername      = 'nutzername';
    erledigt        = 'erledigt';
    Notizen         = 'notizen';
    Auftragsnummer  = 'auftragsnr';
    Dateiname       = 'dateiname';
    id              = 'dokumentid';
    sachbearbeiter  = 'sachbearbeiter';
    datumgepr       = 'datumgeprueft';
    sammelordner    = 'Sammelordner';
    abrechnungsende = 'abrechnungsende';
    { f�r Montage }
    Gueltigkeitsdatum = 'gueltigkeitsdatum';
    Montagedatum      = 'einbaudatum';

    informiert       = 'informiert';
    ausf�hrungsstart = 'ausf�hrungsstart';
    ausf�hrungsende  = 'ausf�hrungsende';
    Monteur          = 'Monteur';
    erreicht         = 'erreicht';
    ausf�hrungsdatum = 'ausf�hrungsdatum';
    nicherledigtstr  = '0';
    erledigtstr      = '1';

    pseudoliegenschaft = 'pseudoliegenschaft';
    strasse            = 'str';
    ort                = 'ort';
    plz                = 'plz';

    vertragstyp = 'vertragstyp';

    { f�r neue Auftr�ge }
    auftragstyp = 'Auftragstyp';
    { Dokumentarten }
    ZwischenablsgINT  = 0;
    MontageINT        = 1;
    ReklamationINT    = 2;
    EnergieausweisINT = 3;
    KostenINT         = 4;
    Nutzerint         = 5;
    SonstigesInt      = 6;
    Vertragsint       = 7;
    Angebotsint       = 8;
    Auftragsint       = 9;

    { f�r Email }
    Absendername     = 'Absendername';
    Absenderadresse  = 'Absenderadresse';
    Empf�ngername    = 'Empf�ngername';
    Empf�ngeradresse = 'Empf�ngeradresse';
    Betref           = 'Betreff';

    { f�r anrufe }
    Anrufer       = 'Anrufer';
    Telefonnummer = 'Telefonnummer';
    { f�r MysqlAufrufe }
    insertBegin  = '%s %s (';
    insertMiddle = ') VALUES(';
    insertEnd    = ');';
    // Variable f�r count(*) Aufrufe
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

    function getKundennrn(kdn: integer): TList<integer>;

    function getAllKundennrn: TList<integer>;
  end;

implementation

// ###################################################
function tconst.getKundennrn(kdn: integer): TList<integer>;
begin
  Result := TList<integer>.create;
  Result.Add(kdn);
  case kdn of
    10: Result := getAllKundennrn;
    13: // Gohl
      Result.Add(9);
    9: // Gohl
      Result.Add(13);
    4: // Annington
      Result.Add(35);
    19: // TN GmbH
      Result.Add(33);
    33: // Thermo Nova
      Result.Add(19);
  end;
end;

// ###################################################
function tconst.getAllKundennrn: TList<integer>;
begin
  Result := TList<integer>.create;
  Result.Add(10);
  Result.Add(9);
  Result.Add(13);
  Result.Add(33);
  Result.Add(21);
  Result.Add(15);
  Result.Add(4);
  Result.Add(13);
  Result.Add(6);
  Result.Add(12);
  Result.Add(7);
  Result.Add(37);
  Result.Add(3);
  Result.Add(22);
  Result.Add(18);
  Result.Add(28);
  Result.Add(41);
  Result.Add(33);
  Result.Add(30);
  Result.Add(20);
  Result.Add(23);
  Result.Add(36);
  Result.Add(27);
  Result.Add(17);
  Result.Add(14);
  Result.Add(11);
  Result.Add(16);
  Result.Add(8);
  Result.Add(5);
  Result.Add(24);
  Result.Add(26);
  Result.Add(99);
  Result.Add(31);
end;

end.
