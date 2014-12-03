unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NxPageControl, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.FileCtrl,
  Vcl.Imaging.pngimage, uconstants, uworker, ueinstellungen, uutils,
  udbconnector, ShellApi, NxCollection, Vcl.AppEvnts, Vcl.Mask, NxEdit,
  tlhelp32, Vcl.Imaging.GIFImg, OverbyteIcsWndControl, OverbyteIcsFtpCli,
  OverbyteIcsMultiProgressBar, uthread, uanrufer, System.Generics.collections,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad, Vcl.Buttons, umaskedit, fEdit, CommCtrl,
  Vcl.Samples.Gauges, fComboBox, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCompExtCtrls, strutils, uadresse, fMemo, registry,
  udirlisting, dateutils, uauftragsarten, usachkunde, udbthread, NPipe_Client,
  fNPipeClient, unamepipeserver, NxEdit6, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, NxDBColumns, NxColumns, Vcl.ImgList, uframebase, uframereklmont,
  uframezwischenab, uframezwischen, uframebasemitnutzer, uframeauftrag,
  uframeenergie, uframefilter, usettings, uframevertrag, Vcl.Grids,
  uutilsglobal, Vcl.DBGrids;

type

  TIntegerLIst = TList<Integer>;

  Tformmain = class(TForm)
    pmiddle: TPanel;
    prahmen: TPanel;
    Timer1: TTimer;
    pleft: TPanel;
    pfilebox: TFlowPanel;
    psonstiges: TPanel;
    Button9: TButton;
    Button10: TButton;
    pverarbeitungsstatus: TPanel;
    Gauge1: TGauge;
    pausg: TPanel;
    lbausgang: TListBox;
    lausgangsordner: TLabel;
    peing: TPanel;
    lbeingang: TListBox;
    leingangsordner: TLabel;
    Panel21: TPanel;
    Label8: TLabel;
    bentfernen: TNxButton;
    lpverarbeitungsart: TLabel;
    lhochruntergeladen: TLabel;
    Timer2: TTimer;
    npc: TFNpipeClient;
    Timer3: TTimer;
    lsammelverzeichnis: TLabel;
    TrayIcon1: TTrayIcon;
    ImageList1: TImageList;
    pagermain: TNxPageControl;
    tabspeichern: TNxTabSheet;
    tabanzeige: TNxTabSheet;
    Panel4: TPanel;
    pagerspeicher: TNxPageControl;
    TZwischenablesung: TNxTabSheet;
    TMontage: TNxTabSheet;
    TKostenermittlung: TNxTabSheet;
    treklamaion: TNxTabSheet;
    Tenergieausweis: TNxTabSheet;
    tNutzerliste: TNxTabSheet;
    tsonstiges: TNxTabSheet;
    TVerträge: TNxTabSheet;
    Tangebotsanfragen: TNxTabSheet;
    LEER: TNxTabSheet;
    pspeicherheader: TPanel;
    ComboBox1: TComboBox;
    pz: TPanel;
    pk: TPanel;
    pm: TPanel;
    pr: TPanel;
    NxPanel1: TNxPanel;
    gridzwi: TNextDBGrid;
    zwidokid: TNxDBTextColumn;
    zwilg: TNxDBTextColumn;
    zwinutzernummer: TNxDBTextColumn;
    zwidatei: TNxDBMemoColumn;
    zwiposteingang: TNxDBTextColumn;
    zwiimage: TNxDBImageColumn;
    zwiabrechnungsende: TNxDBTextColumn;
    Button1: TButton;
    ptabellen: TNxPageControl;
    tabzwischen: TNxTabSheet;
    tabmontagen: TNxTabSheet;
    NxPanel2: TNxPanel;
    gridmon: TNextDBGrid;
    mondokid: TNxDBTextColumn;
    monliegenschaft: TNxDBTextColumn;
    monnutzernummer: TNxDBTextColumn;
    mondatei: TNxDBMemoColumn;
    monposteingang: TNxDBTextColumn;
    monimage: TNxDBImageColumn;
    monabrechnungsende: TNxDBTextColumn;
    tabnutzerlisten: TNxTabSheet;
    NxPanel3: TNxPanel;
    gridnutzerliste: TNextDBGrid;
    nutdokid: TNxDBTextColumn;
    nutliegenschaft: TNxDBTextColumn;
    nutdatei: TNxDBMemoColumn;
    nutposteingang: TNxDBTextColumn;
    nutimage: TNxDBImageColumn;
    nutabrechnungsende: TNxDBTextColumn;
    zwiname: TNxDBTextColumn;
    tabenergieausweis: TNxTabSheet;
    NxPanel4: TNxPanel;
    gridenergie: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBImageColumn1: TNxDBImageColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    tabreklamation: TNxTabSheet;
    NxPanel5: TNxPanel;
    gridrek: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBImageColumn2: TNxDBImageColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    leer2: TNxTabSheet;
    zwivollbild: TNxDBImageColumn;
    tabvollbild: TNxTabSheet;
    Panel9: TPanel;
    NxGlyphButton1: TNxGlyphButton;
    NxGlyphButton2: TNxGlyphButton;
    NxGlyphButton3: TNxGlyphButton;
    zwinotizen: TNxDBMemoColumn;
    tauftrag: TNxTabSheet;
    pvollbilder: TNxPageControl;
    tabvollzwischen: TNxTabSheet;
    tabvollmontage: TNxTabSheet;
    tabvollenergie: TNxTabSheet;
    tabvollreklamation: TNxTabSheet;
    NxDBTextColumn11: TNxDBTextColumn;
    NxDBTextColumn13: TNxDBTextColumn;
    NxDBImageColumn3: TNxDBImageColumn;
    NxDBTextColumn14: TNxDBTextColumn;
    NxDBMemoColumn3: TNxDBMemoColumn;
    Panel1: TPanel;
    NxButton1: TNxButton;
    Panel2: TPanel;
    NxButton2: TNxButton;
    Panel3: TPanel;
    NxButton3: TNxButton;
    Panel5: TPanel;
    NxButton4: TNxButton;
    Panel6: TPanel;
    NxButton5: TNxButton;
    NxDBTextColumn15: TNxDBTextColumn;
    NxDBTextColumn16: TNxDBTextColumn;
    NxDBTextColumn17: TNxDBTextColumn;
    NxDBMemoColumn4: TNxDBMemoColumn;
    framemontage: Tframereklmont;
    framezwi: Tframezwischen;
    frameangebot: Tframebasenutzer;
    frameauf: Tframeauftrag;
    framekosten: Tframebase;
    framenutzer: Tframebase;
    framereklamation: Tframereklmont;
    framesonstiges: Tframebasenutzer;
    vollzwischen: Tframezwischen;
    vollmont: Tframereklmont;
    vollrekl: Tframereklmont;
    framefilterreklamation: Tframebasefilter;
    framemonfilter: Tframebasefilter;
    framemonnut: Tframebasefilter;
    framezwifilter: Tframebasefilter;
    frameenfilter: Tframebasefilter;
    NxDBImageColumn4: TNxDBImageColumn;
    NxDBMemoColumn5: TNxDBMemoColumn;
    NxDBTextColumn19: TNxDBTextColumn;
    // framen: Tframeenergie;                          tabange
    // vollenergie: Tframeenergie;
    tabvollnutzer: TNxTabSheet;
    vollnutzer: Tframebase;
    NxDBMemoColumn6: TNxDBMemoColumn;
    NxDBTextColumn20: TNxDBTextColumn;
    NxDBTextColumn21: TNxDBTextColumn;
    NxDBMemoColumn7: TNxDBMemoColumn;
    NxDBImageColumn5: TNxDBImageColumn;
    Timer4: TTimer;
    NxDBImageColumn6: TNxDBImageColumn;
    pdatenrechts: TPanel;
    lliegenschaftsdaten: TLabel;
    pliedaten: TPanel;
    estrasse: TLabel;
    eort: TLabel;
    eplz: TLabel;
    shapeverm: TShape;
    lname1: TLabel;
    lname2: TLabel;
    vermerke: TMemo;
    // framevert: Tframevertrag;
    NxDBTextColumn22: TNxDBTextColumn;
    NxDBTextColumn25: TNxDBTextColumn;
    NxDBTextColumn18: TNxDBImageColumn;
    framevert: Tframebasenutzer1;
    NxDBTextColumn12: TNxDBTextColumn;
    NxDBTextColumn23: TNxDBTextColumn;
    NxDBTextColumn26: TNxDBTextColumn;
    NxDBTextColumn27: TNxDBTextColumn;
    NxDBTextColumn28: TNxDBTextColumn;
    NxDBTextColumn29: TNxDBTextColumn;
    NxDBTextColumn30: TNxDBTextColumn;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBTextColumn24: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    NxDBTextColumn33: TNxDBTextColumn;
    NxDBTextColumn34: TNxDBTextColumn;
    NxDBTextColumn35: TNxDBTextColumn;
    NxDBTextColumn36: TNxDBTextColumn;
    NxDBTextColumn37: TNxDBTextColumn;
    tabsonstiges: TNxTabSheet;
    NxPanel6: TNxPanel;
    gridsonstiges: TNextDBGrid;
    NxDBTextColumn42: TNxDBTextColumn;
    NxDBTextColumn49: TNxDBTextColumn;
    NxDBMemoColumn9: TNxDBMemoColumn;
    NxDBTextColumn50: TNxDBTextColumn;
    NxDBTextColumn51: TNxDBTextColumn;
    NxDBTextColumn52: TNxDBTextColumn;
    NxDBTextColumn53: TNxDBTextColumn;
    NxDBTextColumn54: TNxDBTextColumn;
    NxDBImageColumn10: TNxDBImageColumn;
    NxDBMemoColumn10: TNxDBMemoColumn;
    NxDBImageColumn11: TNxDBImageColumn;
    NxDBImageColumn12: TNxDBImageColumn;
    NxDBTextColumn55: TNxDBTextColumn;
    NxDBTextColumn56: TNxDBTextColumn;
    NxDBTextColumn57: TNxDBTextColumn;
    Panel7: TPanel;
    NxButton6: TNxButton;
    filtersonstiges: Tframebasefilter;
    // framen: Tframeenergie;
    tabvollvertrag: TNxTabSheet;
    NxDBTextColumn58: TNxDBTextColumn;
    vollvertrag: Tframebasenutzer1;
    UpDown1: TUpDown;
    tabvollsonstiges: TNxTabSheet;
    vollsonstiges: Tframebasenutzer;
    tabauftragsanforderung: TNxTabSheet;
    NxPanel7: TNxPanel;
    gridanforderungen: TNextDBGrid;
    NxDBTextColumn60: TNxDBTextColumn;
    NxDBTextColumn61: TNxDBTextColumn;
    NxDBMemoColumn11: TNxDBMemoColumn;
    NxDBTextColumn62: TNxDBTextColumn;
    NxDBTextColumn63: TNxDBTextColumn;
    NxDBTextColumn64: TNxDBTextColumn;
    NxDBTextColumn65: TNxDBTextColumn;
    NxDBTextColumn66: TNxDBTextColumn;
    NxDBTextColumn67: TNxDBTextColumn;
    NxDBImageColumn13: TNxDBImageColumn;
    NxDBMemoColumn12: TNxDBMemoColumn;
    NxDBTextColumn68: TNxDBTextColumn;
    NxDBTextColumn69: TNxDBTextColumn;
    NxDBTextColumn70: TNxDBTextColumn;
    NxDBImageColumn14: TNxDBImageColumn;
    NxDBImageColumn15: TNxDBImageColumn;
    Panel8: TPanel;
    NxButton7: TNxButton;
    filterauftragsanf: Tframebasefilter;
    tabvollauf: TNxTabSheet;
    vollauftrag: Tframeauftrag;
    tabangebotsanfrage: TNxTabSheet;
    NxPanel8: TNxPanel;
    gridangebote: TNextDBGrid;
    NxDBTextColumn71: TNxDBTextColumn;
    NxDBTextColumn72: TNxDBTextColumn;
    NxDBMemoColumn13: TNxDBMemoColumn;
    NxDBTextColumn73: TNxDBTextColumn;
    NxDBTextColumn74: TNxDBTextColumn;
    NxDBTextColumn75: TNxDBTextColumn;
    NxDBTextColumn76: TNxDBTextColumn;
    NxDBTextColumn77: TNxDBTextColumn;
    NxDBTextColumn78: TNxDBTextColumn;
    NxDBImageColumn16: TNxDBImageColumn;
    NxDBMemoColumn14: TNxDBMemoColumn;
    NxDBTextColumn79: TNxDBTextColumn;
    NxDBTextColumn80: TNxDBTextColumn;
    NxDBTextColumn81: TNxDBTextColumn;
    NxDBImageColumn17: TNxDBImageColumn;
    NxDBImageColumn18: TNxDBImageColumn;
    Panel10: TPanel;
    NxButton8: TNxButton;
    filterangebot: Tframebasefilter;
    tabvollangebot: TNxTabSheet;
    vollangebot: Tframebasenutzer;
    framen: Tframeenergie;
    vollenergie: Tframeenergie;
    NxDBTextColumn82: TNxDBTextColumn;
    lsonstiges: TLabel;
    pimage: TPanel;
    IStatusok: TImage;
    iSTAtusfalse: TImage;
    lprogress: TLabel;
    tabvertrag: TNxTabSheet;
    NxPanel9: TNxPanel;
    gridverträge: TNextDBGrid;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn38: TNxDBTextColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn40: TNxDBTextColumn;
    NxDBTextColumn41: TNxDBTextColumn;
    NxDBTextColumn43: TNxDBTextColumn;
    NxDBTextColumn44: TNxDBTextColumn;
    NxDBMemoColumn8: TNxDBMemoColumn;
    NxDBTextColumn45: TNxDBTextColumn;
    NxDBTextColumn46: TNxDBTextColumn;
    NxDBTextColumn39: TNxDBTextColumn;
    NxDBTextColumn59: TNxDBTextColumn;
    NxDBTextColumn48: TNxDBTextColumn;
    NxDBTextColumn47: TNxDBTextColumn;
    NxDBImageColumn9: TNxDBImageColumn;
    NxDBImageColumn8: TNxDBImageColumn;
    framebasefilter1: Tframebasefilter;
    piupdate: TPanel;
    iupdate: TImage;
    Panel11: TPanel;
    ieinstellungen: TImage;
    iueber: TImage;
    cbid: TCheckBox;
    lkundennummer: TLabel;
    lsachbearbeiter: TLabel;
    // vollenergie: Tframeenergie;
    function getbfwpfad: string;
    function getfilesizeex(const afilename: string): int64;
    procedure ButtonSave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ieinstellungenClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure fbscanChange(Sender: TObject);
    procedure ibfwClick(Sender: TObject);
    procedure TZwischenablesungShow(Sender: TObject);
    procedure zeliegenschaftExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtposteingangExit(Sender: TObject);
    procedure zlnameKeyPress(Sender: TObject; var Key: Char);
    procedure zdtposteingangKeyPress(Sender: TObject; var Key: Char);
    procedure zlnameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TMontageShow(Sender: TObject);

    function erledigttext(val: Integer): string;
    procedure iupdateClick(Sender: TObject);
    procedure dokanzeigeClick(Sender: TObject);
    procedure ballemClick(Sender: TObject); { TODO : todo!! }
    procedure TenergieausweisShow(Sender: TObject);
    procedure zenutzernameExit(Sender: TObject);
    procedure tNutzerlisteShow(Sender: TObject);
    procedure tsonstigesShow(Sender: TObject);
    procedure TKostenermittlungShow(Sender: TObject);
    procedure treklamaionShow(Sender: TObject);
    function getpseudoliegenschaft: string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BentfernenClick(Sender: TObject);
    procedure fbscanClick(Sender: TObject);
    procedure btelefonClick(Sender: TObject);
    procedure iueberClick(Sender: TObject);
    function getdigverzeichnis: string;
    function getSammelordner: string;
    function getabrechnungsende: string;
    procedure pseudocheckChange(Sender: TObject);
    procedure resetadrclick(Sender: TObject);
    function getstrasse: string;
    function getplz: string;
    function getort: string;
    procedure znxtelefonnotizChange(Sender: TObject);
    procedure TVerträgeShow(Sender: TObject);
    procedure TangebotsanfragenShow(Sender: TObject);
    procedure lbeingangClick(Sender: TObject);
    procedure lbeingangDblClick(Sender: TObject);
    procedure zdtauszugKeyPress(Sender: TObject; var Key: Char);
    procedure pagerspeicherChanging(Sender: TObject; PageIndex: Integer;
      var AllowChange: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lbausgangMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure hidecontrol(Sender: TObject);
    procedure lbausgangMouseEnter(Sender: TObject);
    procedure lbausgangMouseLeave(Sender: TObject);
    procedure showauftrag(Sender: TObject);
    procedure tAuftragShow(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure lkundennummerChange(Sender: TObject);
    procedure leingangsordnerDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TZwischenablesungPaint(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure npcError(Sender: TObject; AException: Exception);
    procedure addtolist(item: string);
    procedure FormDestroy(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    function MyMesssageDlg(MyMessage: String): Integer;
    function showingid: Boolean;
    procedure cbidClick(Sender: TObject);
    function splitnumber: Boolean;
    procedure NxTabSheet1Show(Sender: TObject);
    procedure NxTabSheet1Hide(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure pagerspeicherExit(Sender: TObject);
    procedure pagerspeicherEnter(Sender: TObject);
    procedure NxComboBox1Change(Sender: TObject);
    procedure NxDBButtonColumn1SetCell(Sender: TObject; acol, ARow: Integer;
      CellRect: TRect; CellState: TCellState);
    procedure NxDBButtonColumn1ButtonClick(Sender: TObject);
    procedure gridzwiCellDblClick(Sender: TObject; acol, ARow: Integer);
    procedure NxButton3Click(Sender: TObject);
    procedure pzClick(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure gridzwiCellColoring(Sender: TObject; acol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure gridzwiSortColumn(Sender: TObject; acol: Integer;
      Ascending: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure tabzwischenShow(Sender: TObject);
    procedure tabmontagenShow(Sender: TObject);
    procedure setzwitab;
    procedure tabnutzerlistenShow(Sender: TObject);
    procedure tabenergieausweisShow(Sender: TObject);
    procedure tabreklamationShow(Sender: TObject);
    procedure gridzwiCellFormating(Sender: TObject; acol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure zwivollbildSetCell(Sender: TObject; acol, ARow: Integer;
      CellRect: TRect; CellState: TCellState);
    procedure gridzwiCustomDrawCell(Sender: TObject; acol, ARow: Integer;
      CellRect: TRect; CellState: TCellState);
    procedure gridzwiApplyCell(Sender: TObject; acol, ARow: Integer;
      var Value: WideString);
    function setdateityp(str: string): string;
    procedure NxGlyphButton3Click(Sender: TObject);
    procedure NxGlyphButton2Click(Sender: TObject);
    procedure gridzwiClick(Sender: TObject);
    procedure vollzwischenbsaveClick(Sender: TObject);
    procedure liegenschaftexit(Sender: TObject);
    procedure Nexit(Sender: TObject);
    procedure wertebuttonClick(Sender: TObject);
    procedure flipspaltenClick(Sender: TObject);
    procedure buttonspaltenClick(Sender: TObject);
    procedure NxGlyphButton1Click(Sender: TObject);
    procedure Neexit(Sender: TObject);
    procedure framemontageExit(Sender: TObject);
    procedure frameenergiecbpseudoClick(Sender: TObject);
    procedure Tframebasefilter1banwendenClick(Sender: TObject);
    procedure framezwifilteresellgExit(Sender: TObject);
    procedure framezwifilterblöschenClick(Sender: TObject);
    procedure framezwifiltereselsbExit(Sender: TObject);
    procedure framezwifiltereselpeExit(Sender: TObject);
    procedure framezwifiltereselaeExit(Sender: TObject);
    procedure framezwifiltereseldiExit(Sender: TObject);
    procedure Tframebasefilter1esellgExit(Sender: TObject);
    procedure framemonfilteresellgExit(Sender: TObject);
    procedure framemonfiltereselsbExit(Sender: TObject);
    procedure framemonfiltereselpeExit(Sender: TObject);
    procedure framemonfiltereselaeExit(Sender: TObject);
    procedure framemonfiltereseldiExit(Sender: TObject);
    procedure gridzwiCellClick(Sender: TObject; acol, ARow: Integer);
    procedure bexitClick(Sender: TObject);
    procedure frameenergiecbpseudoChange(Sender: TObject);
    procedure framemontageeauftragsnummerExit(Sender: TObject);
    procedure panelfocus(panel: TPanel);
    procedure gridmonApplyCell(Sender: TObject; acol, ARow: Integer;
      var Value: WideString);
    procedure framemonnutesellgExit(Sender: TObject);
    procedure framemonnuteselsbExit(Sender: TObject);
    procedure framemonnuteselpeExit(Sender: TObject);
    procedure framemonnuteselaeExit(Sender: TObject);
    procedure framemonnuteseldiExit(Sender: TObject);
    procedure frameenfilteresellgExit(Sender: TObject);
    procedure frameenfiltereselsbExit(Sender: TObject);
    procedure frameenfiltereselpeExit(Sender: TObject);
    procedure frameenfiltereselaeExit(Sender: TObject);
    procedure frameenfiltereseldiExit(Sender: TObject);
    procedure frameenfilterbanwendenClick(Sender: TObject);
    procedure framezwifilterbanwendenClick(Sender: TObject);
    procedure framemonfilterbanwendenClick(Sender: TObject);
    procedure framemonfilterblöschenClick(Sender: TObject);
    procedure framemonnutbanwendenClick(Sender: TObject);
    procedure framemonnutblöschenClick(Sender: TObject);
    procedure framefilterreklamationesellgExit(Sender: TObject);
    procedure framefilterreklamationeselpeExit(Sender: TObject);
    procedure framefilterreklamationeselaeExit(Sender: TObject);
    procedure framefilterreklamationeseldiExit(Sender: TObject);
    procedure framefilterreklamationbanwendenClick(Sender: TObject);
    procedure framefilterreklamationblöschenClick(Sender: TObject);
    procedure frameenfilterblöschenClick(Sender: TObject);
    procedure framesonstigeseliegenschaftExit(Sender: TObject);
    procedure framezwidtauszugExit(Sender: TObject);
    procedure framezwifEdit1Exit(Sender: TObject);
    procedure framezwienutzernameKeyPress(Sender: TObject; var Key: Char);
    procedure framezwidtposteingangExit(Sender: TObject);
    procedure framezwieposteingangExit(Sender: TObject);
    procedure framezwieliegenschaftExit(Sender: TObject);
    procedure framevertragenutzernummerExit(Sender: TObject);
    procedure dateexit(Sender: TObject);
    procedure framemontageemontageExit(Sender: TObject);
    procedure gridrekApplyCell(Sender: TObject; acol, ARow: Integer;
      var Value: WideString);
    procedure frameenergieeposteingangExit(Sender: TObject);
    procedure frameenergieeliegenschaftExit(Sender: TObject);
    procedure gridenergieApplyCell(Sender: TObject; acol, ARow: Integer;
      var Value: WideString);
    procedure Timer4Timer(Sender: TObject);
    procedure pzMouseEnter(Sender: TObject);
    procedure pzMouseLeave(Sender: TObject);
    procedure banzeigeverlassen(Sender: TObject);
    procedure gridnutzerlisteApplyCell(Sender: TObject; acol, ARow: Integer;
      var Value: WideString);
    procedure lkundennummerDblClick(Sender: TObject);
    procedure framevertenutzernummerExit(Sender: TObject);
    procedure gridzwiVerticalScroll(Sender: TObject; Position: Integer);
    procedure gridzwiHorizontalScroll(Sender: TObject; Position: Integer);
    procedure frameauftragUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framemontageUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framezwiUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure frameangebotUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framenUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framenutzerUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framesonstigesUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure framevertUpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure tabvertragShow(Sender: TObject);
    procedure filtersonstigesesellgExit(Sender: TObject);
    procedure filtersonstigeseselsbExit(Sender: TObject);
    procedure filtersonstigeseselpeExit(Sender: TObject);
    procedure filtersonstigeseselaeExit(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure tabsonstigesShow(Sender: TObject);
    procedure frameauftragsanfesellgExit(Sender: TObject);
    procedure frameauftragsanfeselsbExit(Sender: TObject);
    procedure frameauftragsanfeselpeExit(Sender: TObject);
    procedure frameauftragsanfeselaeExit(Sender: TObject);
    procedure frameauftragsanfeseldiExit(Sender: TObject);
    procedure tabauftragsanforderungShow(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure filterangebotesellgExit(Sender: TObject);
    procedure filterangeboteselsbExit(Sender: TObject);
    procedure filterangeboteselpeExit(Sender: TObject);
    procedure filterangeboteselaeExit(Sender: TObject);
    procedure filterangeboteseldiExit(Sender: TObject);
    procedure tabangebotsanfrageShow(Sender: TObject);
    procedure filtersonstigeseseldiExit(Sender: TObject);
    procedure framefilterreklamationeselsbExit(Sender: TObject);
    procedure ptabellenChange(Sender: TObject);
    procedure framebasefilter1esellgExit(Sender: TObject);
    procedure framebasefilter1eselsbExit(Sender: TObject);
    procedure framebasefilter1eselpeExit(Sender: TObject);
    procedure framebasefilter1eselaeExit(Sender: TObject);
    procedure framebasefilter1eseldiExit(Sender: TObject);
    procedure framezwifiltercselaeChange(Sender: TObject);
    procedure lliegenschaftsdatenClick(Sender: TObject);

    // procedure vorclick(Sender: TObject);
  private
    kundennummern: TIntegerLIst;
    // activepageindex                            : Integer;
    zid, mid, rid, eid, kid, nid, sid, vid, aid: Integer;
    tmpdokid                                   : Integer;
    bfwpfad                                    : string;
    anrufer, telefonnummer                     : string;
    verarbeitungstyp                           : Integer;
    abspath                                    : string;
    validdate                                  : Boolean;
    notizkritzeln                              : Boolean;
    kn, sb, scanvz                             : string;
    fileext                                    : string;
    filetype                                   : Integer;
    versionsnummer                             : string;
    worker                                     : TWorker;
    procidbfw                                  : Integer;
    vorschaupid                                : Integer;
    digverz                                    : string;
    enstrasse                                  : string;
    enort                                      : string;
    enplz                                      : string;
    successful                                 : Boolean;
    postausgverz                               : string;
    oldlist                                    : TStringList;
    listposteingang                            : TStringList;
    selectedlb                                 : TListBox;
    selectedlist                               : TStringList;
    selecteddir                                : string;
    listpostausgang                            : TStringList;
    naid                                       : Integer;
    filetypecaption                            : string;
    procidplinkmysql                           : Integer;
    sei                                        : TShellExecuteInfo;
    appname                                    : string;
    cmd                                        : string;
    procidwin                                  : Integer;
    initialized                                : Boolean;
    allowthread                                : Boolean;
    procidpipeserver                           : Integer;
    thready                                    : tdbthread;
    ftpcollectorlist                           : TStringList;
    procidcollector                            : Integer;
    i                                          : Integer;
    idanzeigen                                 : Boolean;
    dosplitnumber                              : Boolean;
    tabwidth                                   : int64;
    telefonieren                               : Boolean;
    minimized                                  : Boolean;
    selectedRow                                : Integer;
    filterlist                                 : TDictionary<string, string>;
    // frame: Tframebase;
    laufendeid   : string;
    passwort     : string;
    Fintern      : Boolean;
    FisTernes    : Boolean;
    idnotset     : Boolean;
    prociplinkftp: Integer;
    filter       : string;
    filterlg     : string;
    clicked      : array [0 .. 3] of Boolean;
    procedure resetfilterlist;
    procedure resetalleFilter;
    procedure resetdate(tem: TMaskEdit); overload;
    procedure resetdate(tem: tfedit); overload;
    function connectToPipe: Boolean;
    procedure save();
    procedure resetlisten;
    procedure lookforfile();
    procedure workwithfile(filename: string);
    procedure reset(frame: Tframebase);
    procedure setid(table: string); overload;
    procedure updateid(Tag: Integer);
    procedure shownotizen(notiz: string);
    function getprefix(active: Integer): string;
    function autosizememoy(memo: TMemo): Word;
    function getdatemitpunkt(Tag: Integer; datestring: string): string;
    function noDokIdNeeded: Boolean;
    function getdate(em: tfedit): string;
    function getfittingabrechnungsende(abrdat: string): string;

    procedure downloadupdate;
    procedure WMGetDlgCode(var msg: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
    procedure popup;
    procedure minimizeme;
    procedure showzwischenablesungen;
    procedure showsonstiges;
    procedure showverträge;
    procedure showmontagen;
    procedure showenergieausweise;
    procedure showauftragsanforderungen;
    procedure showangebote;
    procedure showkostennutzerlisten;
    procedure showreklamation;
    function filldb(ds: TDataSource; dbgrid: TNextDBGrid): Boolean;
    procedure showDocument(var dat: string);
    function gettag(sheet: TNxTabSheet): Integer;
    procedure resetids;
    procedure vorclick(Sender: TObject);
    procedure fillvollbild(dbgrid: TNextDBGrid; row: Integer);

    procedure resetpanelfonts;
    procedure setliegenschaftsdaten; overload;
    procedure setliegenschaftsdaten(liegg, nn: string); overload;
    function getframe: Tframebase;
    procedure sortzwischen(acol: Integer; ascbool: Boolean);
    procedure sortnutzer(acol: Integer; ascbool: Boolean);
    procedure sortrekl(acol: Integer; Ascending: Boolean);
    procedure sortmontagen(acol: Integer; ascbool: Boolean);
    procedure sortenergie(acol: Integer; ascbool: Boolean);
    procedure sortsonstiges(acol: Integer; ascbool: Boolean);
    procedure sortvertrag(acol: Integer; ascbool: Boolean);
    procedure sortangebot(acol: Integer; ascbool: Boolean);
    procedure sortauftragsanforderung(acol: Integer; ascbool: Boolean);
    function getzwivalues: TStringList;
    procedure setfilter(query: tzquery);
    procedure setalleFilter;
    procedure setallefiltereinstellungen;
    procedure disablecontrols(parent: TPanel);
    { Private-Deklarationen }
  public
    kdnr   : String;
    dokcons: tconst;
    procedure showeinstellungen;
    function getpasswort: string;
    function getkundennrnAsString: TStringList;
    function connecttocollector: Boolean;
    function getcollectorlist: TStringList;
    procedure getallids;
    procedure showupdate();
    function getanrufer(): string;
    function gettelefonnummer(): string;
    function saveanrufer(anrufer, telefonnummer: string): Boolean;
    function saveSettings(pw, kn, sb, vzscan, vzpost: string;
      shownumber, splitno: Boolean): Boolean;
    procedure setFile(path: string);
    function getkundennummer(): string;
    function getsachbearbeiter(): String;
    function getscanverzeichnis(): string;
    function getFiletype(filename: string): Integer;
    function getFilename(): string;
    function getDocumentid(): string;
    function getLiegenschaft(): string;
    function getNutzername(): string;
    function getNotizen(): string;
    function getErledigt(): string;
    function getNutzernummer(): string;
    function getdatumchecked(): string;
    function getauftragsnummer(): string;
    function getAblesedatum(): string;
    function getPosteingang(): string;
    function getMontagedatum(): string;
    function getAuszugsdatum(): string;
    function getpostausgangsverzeichnis: string;
    function getauftragstyp: string;
    function getkundennrfordb: string;
    procedure setnutzerdaten(dict: TDictionary<string, string>);
    function getdokumente(table_zwi, wherestring: string;
      values: TStringList): string;
    function getdb: TNextDBGrid;
    function setkundennummern(kdnn: TList<Integer>): Boolean;
    function getVertragstyp(): string;
    function connectwithplink: Boolean;
  published
    property intern  : Boolean read Fintern write Fintern;
    property isTernes: Boolean read FisTernes write FisTernes;
  end;

var
  formmain: Tformmain;

const
  speicherframes: array [0 .. 9] of string = ('framemontage', 'framezwi',
    'frameangebot', 'frameauf', 'framen', 'framekosten', 'framenutzer',
    'framereklamation', 'framesonstiges', 'framevert');
  panels: array [0 .. 3] of string = ('pz', 'pk', 'pr', 'pm');

implementation

{$R *.dfm}

uses uftpconnector, uformkunde;

function Tformmain.autosizememoy(memo: TMemo): Word;
begin
  Canvas.Font := memo.Font;
  Result := Canvas.TextExtent(memo.Lines.Strings[0]).cy * memo.Lines.Count +
    Canvas.TextExtent(memo.Lines.Strings[0]).cy;
end;

procedure Tformmain.ballemClick(Sender: TObject);
begin
  // var
  // query: string;
  // begin
  // query := 'SELECT Dokumentid, Liegenschaft,  Nutzernummer, Posteingang, Einbaudatum,'
  // + '   Notizen   ' + 'FROM montagen ' + 'WHERE SACHBEARBEITER= ' + sb +
  // '  AND Kundennummer= ' + kn + ' order by Dokumentid desc';
  //
  // try formdb.showquery(query);
  // except outputdebugstring('Datenbank kann nicht aufgerufen werden');
  //
  // end;

end;

procedure Tformmain.gridenergieApplyCell(Sender: TObject; acol, ARow: Integer;
  var Value: WideString);
begin
  case acol of
    11: Value := '1';
    8: begin
        try
          if (gridenergie.GetColumnByFieldName(dokcons.pseudoliegenschaft)
            .field.AsInteger = 1) then Value := '3'
          else Value                         := '-1';
        except Value                         := '-1';

        end;
      end;
    13: Value := erledigttext((Sender as TNextDBGrid).CellValue[12, ARow]);
    14: Value := setdateityp((Sender as TNextDBGrid).Cells[2, ARow]);
  end;
end;

procedure Tformmain.gridmonApplyCell(Sender: TObject; acol, ARow: Integer;
  var Value: WideString);
var
  val: Integer;
begin
  case acol of
    9: Value  := '1';
    13: Value := erledigttext((Sender as TNextDBGrid).CellValue[12, ARow]);
    14: Value := setdateityp((Sender as TNextDBGrid).Cells[3, ARow]);

  end;
end;

procedure Tformmain.gridnutzerlisteApplyCell(Sender: TObject;
  acol, ARow: Integer; var Value: WideString);
var
  header: string;
begin
  // header := (sender as TNextDBGrid).ge
  case acol of
    7: Value  := '1';
    9: Value  := erledigttext((Sender as TNextDBGrid).CellValue[9, ARow]);
    10: Value := setdateityp((Sender as TNextDBGrid).Cells[3, ARow]);
  end;
end;

procedure Tformmain.gridrekApplyCell(Sender: TObject; acol, ARow: Integer;
  var Value: WideString);
var
  notizstr: string;
begin
  try notizstr    := gridrek.GetColumnByFieldName('notizen').field.AsString;
  except notizstr := '';

  end;
  case acol of
    11: Value := '1';
    13: Value := erledigttext((Sender as TNextDBGrid).CellValue[3, ARow]);
    14: Value := setdateityp((Sender as TNextDBGrid).Cells[6, ARow]);
  end;
end;

procedure Tformmain.gridzwiApplyCell(Sender: TObject; acol, ARow: Integer;
  var Value: WideString);
var
  filename   : string;
  dateiendung: string;
  header     : string;
begin

  header := (Sender as TNextDBGrid).Columns[acol].header.Caption;
  if strcontains('ablage', AnsiLowerCase(header)) then begin
    if (Sender as TNextDBGrid).GetColumnByFieldName(header).Field.AsInteger = 0 then Value := '';
  end;

  if strcontains('einzelbild', AnsiLowerCase(header)) then
    try Value := '1';
    except
      ;

    end;
  if strcontains('Erledigt', header) then
    try Value := erledigttext((Sender as TNextDBGrid).CellValue[14, ARow]);
    except
      on e: Exception do begin
        showmessage('except 1' + e.Message);
      end;
    end;
end;
// if (acol = 16) then begin
// try Value := setdateityp((Sender as TNextDBGrid).Cells[3, ARow]);
// except
/// /      on e: Exception do showmessage('exec 2' + e.Message);
// end;
//
// end;

procedure Tformmain.gridzwiCellClick(Sender: TObject; acol, ARow: Integer);
var
  Dateiname: string;
  dbgrid   : TNextDBGrid;
  test     : string;
  notiz    : string;
begin
  test := Sender.ToString;
  test := (Sender as TNextDBGrid).Columns[acol].header.Caption;

  if AnsiStartsText('einzel', AnsiLowerCase(test)) then begin
    // if not(ptabellen.activepageindex = 1) then

    fillvollbild(Sender as TNextDBGrid, selectedRow);
    exit;
  end;
  case ptabellen.activepageindex of
    0: dbgrid := gridzwi;
    1: dbgrid := gridmon;
    2: dbgrid := gridnutzerliste;
    3: dbgrid := gridenergie;
    4: dbgrid := gridrek;
    5: dbgrid := gridverträge;
    6: dbgrid := gridsonstiges;
    7: dbgrid := gridanforderungen;
    8: dbgrid := gridangebote;
  end;

  if AnsiStartsText('notizen anz', AnsiLowerCase(test)) then begin
    notiz := pchar(dbgrid.GetColumnByFieldName(dokcons.Notizen).field.AsString);
    shownotizen(notiz);
  end;
  if AnsiStartsText('dokument anzeigen', AnsiLowerCase(test)) then begin
    Dateiname := pchar(dbgrid.GetColumnByFieldName('Dateiname').field.AsString);
    showDocument(Dateiname);
  end;

end;

procedure Tformmain.gridzwiCellColoring(Sender: TObject; acol, ARow: Integer;
  var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if (((ARow mod 2) = 0) and (not(csselected in CellState))) then
      CellColor := dokcons.hellgrau;
  // // if acol = 8 then

end;

procedure Tformmain.gridzwiCellDblClick(Sender: TObject; acol, ARow: Integer);
var
  Dateiname: string;
  dbgrid   : TNextDBGrid;
  test     : string;
begin

  // if ACol = 5 then exit;

  fillvollbild(Sender as TNextDBGrid, selectedRow);
end;

procedure Tformmain.gridzwiCellFormating(Sender: TObject; acol, ARow: Integer;
  Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);

var
  bmp: TBitmap;
begin
  // if ARow = 8 then begin
  // bmp := TBitmap.Create;
  // ImageList1.GetBitmap(1, bmp);
  //
  // end;

end;

procedure Tformmain.gridzwiClick(Sender: TObject);
var
  test: string;
begin
  if (Sender as TNextDBGrid).Focused then

      selectedRow := (Sender as TNextDBGrid).selectedRow
  else begin
    (Sender as TNextDBGrid).SetFocus;
    (Sender as TNextDBGrid).selectedRow := selectedRow;
    gridzwiClick(Sender);
  end;
  inherited;
end;

procedure Tformmain.gridzwiCustomDrawCell(Sender: TObject; acol, ARow: Integer;
  CellRect: TRect; CellState: TCellState);

var
  bmp    : TBitmap;
  fixRect: TRect;
begin
  // if ARow = 8 then begin
  // bmp := TBitmap.Create;
  // ImageList1.GetBitmap(1, bmp);
  // fixRect := CellRect;
  // gridzwi.Canvas.Rectangle(fixRect);
  // end;
end;

procedure Tformmain.gridzwiHorizontalScroll(Sender: TObject; Position: Integer);
begin
  // outputdebugstring('hor');
end;

procedure Tformmain.gridzwiSortColumn(Sender: TObject; acol: Integer;
  Ascending: Boolean);
var
  Key        : string;
  asc        : string;
  QueryString: string;

begin
  if not assigned(formdb) then exit; { TODO : todo }
  if ptabellen.ActivePage = tabzwischen then sortzwischen(acol, Ascending);
  if ptabellen.ActivePage = tabmontagen then sortmontagen(acol, Ascending);
  if ptabellen.ActivePage = tabenergieausweis then sortenergie(acol, Ascending);
  if ptabellen.ActivePage = tabnutzerlisten then sortnutzer(acol, Ascending);
  if ptabellen.ActivePage = tabreklamation then sortrekl(acol, Ascending);
  if ptabellen.ActivePage = tabenergieausweis then sortenergie(acol, Ascending);
  if ptabellen.ActivePage = tabauftragsanforderung then
      sortauftragsanforderung(acol, Ascending);
  if ptabellen.ActivePage = tabangebotsanfrage then
      sortangebot(acol, Ascending);
  if ptabellen.ActivePage = tabsonstiges then sortsonstiges(acol, Ascending);
  if ptabellen.ActivePage = tabvertrag then sortvertrag(acol, Ascending);

end;

procedure Tformmain.gridzwiVerticalScroll(Sender: TObject; Position: Integer);
begin
  // try outputdebugstring('ver');
  // except
  // on e: Exception do showmessage(e.Message);
  //
  // end;
end;

// -------------------------------------------------
procedure Tformmain.showDocument(var dat: string);
var
  dateilist: TStringList;
  tmpfile  : string;
  Dateiname: string;
  tmp      : string;
begin
  // // die Dateinamen ermitteln
  dateilist                 := TStringList.Create;
  dateilist.Delimiter       := ';';
  dateilist.StrictDelimiter := True;
  dateilist.DelimitedText   := dat;

  // die Datei(en) lokal herunterladen
  for Dateiname in dateilist do begin
    if Dateiname = '' then continue;
    tmp     := ReplaceStr(Dateiname, '/', '\\');
    tmpfile := gettmpfile(dokcons.programmname, ExtractFileName(tmp));
    if not FileExists(tmpfile) then begin
      formftp.getFile(tmp, tmpfile);
    end;
    // /// /
  end;
  ShellExecute(Handle, 'open', pchar(tmpfile), nil, nil, SW_SHOWNORMAL);
  Screen.Cursor := crdefault;
end;

// --------------------------------
procedure Tformmain.showeinstellungen;
begin
  if not assigned(Einstellungen) then
      Einstellungen := TEinstellungen.Create(self);
  Einstellungen.Show;
end;

// ###################################
procedure Tformmain.showangebote;
var
  list: TStringList;
begin
  try
    setallefiltereinstellungen;
    filterangebot.esellg.Text := filterlg;
    list                      := TStringList.Create;
    list.Add('*');
    formdb.queryangebote.sql.Clear;
    formdb.queryangebote.sql.Text := 'SELECT * FROM ' + dokcons.view_ang +
      ' WHERE kundennummer = ' + kdnr;
    formdb.queryangebote.Open;
    setfilter(formdb.queryangebote);
    // SetGridColumnWidths(gridangebote);
    // filldb(formdb.dsangebote, gridangebote);
  except
    // on e: Exception do showmessage(e.Message);
  end;
end;

// ##########################
procedure Tformmain.showenergieausweise;

var
  list: TStringList;
begin
  try
    setallefiltereinstellungen;
    frameenfilter.esellg.Text := filterlg;
    list                      := TStringList.Create;
    list.Add('*');

    formdb.queryen.sql.Clear;
    formdb.queryen.sql.Text := 'SELECT * FROM ' + dokcons.view_en +
      ' WHERE kundennummer = ' + kdnr;
    formdb.queryen.Open;

    setfilter(formdb.queryen);
    // SetGridColumnWidths(gridenergie);
  except
    // on e: Exception do showmessage(e.Message);

  end;

end;

// ------------------------------------------------
procedure Tformmain.dateexit(Sender: TObject);
begin
  framezwi.dateexit(Sender);
end;

procedure Tformmain.disablecontrols(parent: TPanel);
var
  index, Count: Integer;
begin

  Count                            := parent.ControlCount;
  for index                        := 0 to Count - 1 do begin
    parent.Controls[index].Enabled := false;
  end;
end;

procedure Tformmain.dokanzeigeClick(Sender: TObject);

begin
  pagermain.ActivePage := tabspeichern;
end;

procedure Tformmain.addtolist(item: string);
begin
  ftpcollectorlist.Add(item);
end;

procedure Tformmain.BentfernenClick(Sender: TObject);
var
  prefix: string;
  frame : Tframebase;
begin
  if pagerspeicher.ActivePage = LEER then begin
    ComboBox1.ItemIndex := 0;
    ComboBox1Click(pz);
  end;

  Timer1.Enabled          := false;
  prefix                  := getprefix(pagerspeicher.activepageindex);
  frame                   := getframe;
  frame.lfiletype.Caption := 'telefonisch';
  unselect(lbeingang);
  unselect(lbausgang);
  telefonieren   := True;
  frame.eid.Text := '';
end;

procedure Tformmain.bexitClick(Sender: TObject);
begin
  pagermain.ActivePage := tabspeichern;
end;

procedure Tformmain.btelefonClick(Sender: TObject);
begin
  anruferdaten.Show;
end;

procedure Tformmain.Button1Click(Sender: TObject);
begin
  pagermain.ActivePage := tabanzeige;
  ptabellen.ActivePage := leer2;
  ptabellen.ShowTabs   := True;

end;

procedure Tformmain.Button2Click(Sender: TObject);
begin
  lookforfile;
end;

procedure Tformmain.Button9Click(Sender: TObject);
begin
  showmessage('auf neue Version prüfen');
  if worker = nil then worker := TWorker.Create;
  if worker.checkUpdate then begin
    if not(MessageDlg
      ('Es ist ein neues Update vorhanden. Soll es jetzt installiert werden?',
      mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then exit;
  end;
  downloadupdate;
end;

procedure Tformmain.ButtonSave(Sender: TObject);
var
  prefix        : string;
  l             : tfedit;
  Count         : Integer;
  bsave         : TNxButton;
  memo          : TfMemo;
  frame         : Tframebase;
  buttonselected: Integer;
begin
  frame := getframe;

  if not(Length(frame.eliegenschaft.Text) = 7) then begin
    showmessage('es muss eine gültige Liegenschaft angegeben werden');
    frame.eliegenschaft.SetFocus;
    exit;
  end;

  try Count    := selectedlb.SelCount;
  except Count := -1;

  end;
  if Count < 1 then begin
    if frame.menotizen.Text = '' then begin
      showmessage('kein gescanntes Dokument und keine Notizen eingetragen.' +
        #13#10 + 'Bitte entweder Scannen oder Informationen in Notizfeld speichern');
      frame.menotizen.SetFocus;
      exit;
    end else begin
      buttonselected :=
        MessageDlg
        ('Soll wirklich ohne ein gescanntes Dokument gespeichert werden?',
        mtWarning, mbYesNoCancel, 0);
      case buttonselected of
        mrYes: begin
            save();
            exit;
          end
      else exit;
      end;
    end;
  end;
  save();
end;

procedure Tformmain.buttonspaltenClick(Sender: TObject);
begin
  // flipspalten.Expanded := false;

end;

procedure Tformmain.cbidClick(Sender: TObject);
var
  prefix: string;
  ablid : string;

  frame: Tframebase;
begin
  frame      := getframe;
  idanzeigen := cbid.Checked;
  prefix     := getprefix(pagerspeicher.activepageindex);
  try
    if not idanzeigen then ablid := ''
    else begin
      if dosplitnumber then begin

        ablid := inttostr(formdb.getno(strtoint(kn),
          gettable(pagerspeicher.activepageindex), sb));
      end
      else ablid := (formdb.getmaxno(kn, sb));
    end;
  except ablid := '';
  end;
  // fid.Text := ablid;
  (frame.FindComponent('eid') as tfedit).Text := ablid;
  saveSettings(passwort, kn, sb, scanvz, postausgverz, idanzeigen, splitnumber);
end;

// ------------------------------------------------------
procedure Tformmain.CMDialogKey(var Message: TCMDialogKey);
var
  prefix: string;
  Button: TNxButton;

  frame: Tframebase;
begin
  inc(i);
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  Button := frame.FindComponent('bsave') as TNxButton;
  if ActiveControl = Button then exit;
  outputdebugstring(pchar('bin trotzdem hier!' + inttostr(i)));
  inherited;
end;

procedure Tformmain.ComboBox1Click(Sender: TObject);
var
  sheet: TNxTabSheet;
  cap  : string;
begin

  resetpanelfonts;
  case ComboBox1.ItemIndex of

    0: begin
        sheet := TZwischenablesung;
        cap   := 'Zwischenablesung';
        panelfocus(pz);
        pagerspeicher.ActivePage := sheet;
        clicked[0]               := True;
        exit;
      end;

    1: begin
        sheet      := TKostenermittlung;
        cap        := 'Nutzerliste / Kostenermittlung';
        clicked[1] := True;
        panelfocus(pk);

        pagerspeicher.ActivePage := sheet;
        exit;
      end;
    2: begin
        sheet      := TMontage;
        cap        := 'Montage';
        clicked[2] := True;
        panelfocus(pm);

        pagerspeicher.ActivePage := sheet;
        exit;
      end;
    3: begin
        cap   := 'Reklamation';
        sheet := treklamaion;
      end;
    4: begin
        sheet := Tenergieausweis;
        cap   := 'Energieausweis';
      end;
    5: begin
        sheet := tsonstiges;
        cap   := 'Sonstiges';
      end;
    6: begin
        sheet := TVerträge;
        cap   := 'Vertrag';
      end;
    7: begin
        sheet := Tangebotsanfragen;
        cap   := 'Angebotsanfrage';
      end;
    8: begin
        sheet := tauftrag;
        cap   := 'Auftragsanfrage';
      end;
  else sheet := TZwischenablesung;
  end;
  panelfocus(pr);
  pagerspeicher.ActivePage := sheet;
  clicked[3]               := True;
  pr.Caption               := cap;
  pr.Color                 := dokcons.hellgrau;

end;

// -----------------------------------------------------

function Tformmain.connecttocollector: Boolean;
var
  cmd: pchar;
begin
  if isexerunning('ftpcollectui.exe') then begin
    Result := True;
    exit;
  end;
  cmd := pchar(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)
    ) + 'ftpcollectui.exe');
  procidcollector := Shellmyex(cmd, sw_normal);
  Result          := procidcollector > 0;
end;

function Tformmain.connectToPipe: Boolean;
var
  cmd: string;
begin
  Result := false;
  cmd    := 'pnamepipeserver.exe';
  if isexerunning(cmd) then begin
    Result := True;
    exit;
  end;
  try
    procidpipeserver :=
      Shellmyex(pchar(IncludeTrailingPathDelimiter(ExtractFilePath
      (Application.ExeName)) + cmd), sw_normal);
    Result := not(procidpipeserver = 0);
  except showmessage('namepipeserver kann nicht gestartet werden');

  end;
end;

function Tformmain.connectwithplink: Boolean;
begin
  try

    procidplinkmysql :=
      Shellmyex(pchar(IncludeTrailingPathDelimiter(ExtractFilePath
      (Application.ExeName)) +
      'plink.exe -ssh 148.251.138.2 -l tiffy  -L 7777:127.0.0.1:3306 -pw maunze01'),
      sw_hide);
    prociplinkftp :=
      Shellmyex(pchar(IncludeTrailingPathDelimiter(ExtractFilePath
      (Application.ExeName)) +
      'plink.exe -ssh 148.251.138.2 -l tiffy  -L 3131:127.0.0.1:21 -pw maunze01'),
      sw_hide);
    Result := True;
  except
    begin
      showmessage('plink error');
      Result := false;
    end;
  end;
end;

procedure Tformmain.downloadupdate;
begin
  Screen.Cursor                := crHourGlass;
  lhochruntergeladen.Caption   := 'heruntergeladen';
  lpverarbeitungsart.Caption   := 'Setup zu ';
  pverarbeitungsstatus.Visible := True;
  if worker.installupdate then self.close;
  pverarbeitungsstatus.Visible := false;
  Screen.Cursor                := crdefault;
end;

procedure Tformmain.fbscanChange(Sender: TObject);

var
  listBox     : TFileListBox;
  selectedFile: string;
begin
  Timer1.Enabled := false;
  listBox        := Sender as TFileListBox;
  selectedFile   := listBox.filename;
  setFile(selectedFile);
  Timer1.Enabled := True;

end;

// -------------------------
procedure Tformmain.fbscanClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  lookforfile;
end;

// -------------------------------------------
function Tformmain.filldb(ds: TDataSource; dbgrid: TNextDBGrid): Boolean;
begin
  Result := false;
  try
    dbgrid.BeginUpdate;
    dbgrid.DataSource := ds;
    Result            := True;
    dbgrid.EndUpdate();
  except Result := false;
  end;
end;

// ------------------------------------

procedure Tformmain.fillvollbild(dbgrid: TNextDBGrid; row: Integer);
var
  lg, nn : string;
  voll   : Tframebase;
  Checked: Integer;
  date   : string;
begin
  with dokcons do begin
    selectedRow          := row;
    pagermain.ActivePage := tabvollbild;
    lg := dbgrid.GetColumnByFieldName(dokcons.liegenschaft).field.AsString;

    case ptabellen.activepageindex of
      0: begin
          dbgrid                      := gridzwi;
          pvollbilder.activepageindex := 0;
          voll                        := vollzwischen;
          with vollzwischen do begin
            enutzernummer.Text := dbgrid.GetColumnByFieldName
              (dokcons.Nutzernummer).field.AsString;
            enutzername.Text := dbgrid.GetColumnByFieldName(dokcons.Nutzername)
              .field.AsString;

            date := dbgrid.GetColumnByFieldName(vertragsbeginn).field.AsString;

            date                           := formatdatefrom4jto2j(date);
            if date = '00.00.00' then date := '';

            dtauszug.Text := date;
            date          := formatdatefrom4jto2j
              (dbgrid.GetColumnByFieldName(vertragsbeginn).field.AsString);
            if date = '00.00.00' then date := '';

            eauszug.Text := date;
            date         := formatdatefrom4jto2j
              (dbgrid.GetColumnByFieldName(Ablesedatum).field.AsString);
            if date = '00.00.00' then date := '';
            dtablesedatum.Text             := date;
            date                           := formatdatefrom4jto2j
              (dbgrid.GetColumnByFieldName(Ablesedatum).field.AsString);
            if date = '00.00.00' then date := '';

            eablesedatum.Text := date;
          end;
        end;
      // 2: voll := voll
      1: begin
          dbgrid                      := gridmon;
          pvollbilder.activepageindex := 1;
          voll                        := vollmont;
          with vollmont do begin
            eauftragsnummer.Text := dbgrid.GetColumnByFieldName(auftragsnummer)
              .field.AsString;
            date := dbgrid.GetColumnByFieldName(Montagedatum).field.AsString;
            if date = '00.00.00' then date := '';
            dtmontage.Text       := date;
            emontage.Text        := date;
            rgerledigt.ItemIndex := dbgrid.GetColumnByFieldName(erledigt)
              .field.AsInteger;
          end;
        end;
      2: begin
          dbgrid                 := gridnutzerliste;
          pvollbilder.ActivePage := tabvollnutzer;
          voll                   := vollnutzer;
        end;
      4: begin
          dbgrid                      := gridrek;
          pvollbilder.activepageindex := 3;
          voll                        := vollrekl;
          with vollrekl do begin
            try date := dbgrid.GetColumnByFieldName(auftragsnummer)
                .field.AsString;
            except date := '';
            end;
            eauftragsnummer.Text := date;
            try date             := dbgrid.GetColumnByFieldName(Montagedatum)
                .field.AsString;
            except date := '00.00.00';
            end;
            if date = '00.00.00' then date := '';

            dtmontage.Text           := date;
            emontage.Text            := date;
            try rgerledigt.ItemIndex := dbgrid.GetColumnByFieldName(erledigt)
                .field.AsInteger;
            except rgerledigt.ItemIndex := 0;
            end;
          end;
        end;
      3: begin
          dbgrid                 := gridenergie;
          pvollbilder.ActivePage := tabvollenergie;
          voll                   := vollenergie;
        end;
      5: begin
          dbgrid                         := gridverträge;
          pvollbilder.ActivePage         := tabvollvertrag;
          voll                           := vollvertrag;
          vollvertrag.enutzernummer.Text := dbgrid.GetColumnByFieldName
            (Nutzernummer).field.AsString;
          vollvertrag.cbvertrag.Text := dbgrid.GetColumnByFieldName(vertragstyp)
            .field.AsString;
        end;
      6: begin
          dbgrid                           := gridsonstiges;
          pvollbilder.ActivePage           := tabvollsonstiges;
          voll                             := vollsonstiges;
          vollsonstiges.enutzernummer.Text := dbgrid.GetColumnByFieldName
            (Nutzernummer).field.AsString;
        end;
      7: begin
          dbgrid                         := gridanforderungen;
          pvollbilder.ActivePage         := tabvollauf;
          voll                           := vollauftrag;
          vollauftrag.enutzernummer.Text := dbgrid.GetColumnByFieldName
            (Nutzernummer).field.AsString;
          vollauftrag.cbselectauftrag.Text := dbgrid.GetColumnByFieldName
            (auftragstyp).field.AsString;
        end;
      8: begin
          dbgrid                         := gridangebote;
          pvollbilder.ActivePage         := tabvollangebot;
          voll                           := vollangebot;
          vollangebot.enutzernummer.Text := dbgrid.GetColumnByFieldName
            (Nutzernummer).field.AsString;
        end
    else begin
        dbgrid                      := gridzwi;
        pvollbilder.activepageindex := 0;
      end;

    end;

    // Daten Links
    with voll do begin
      eid.Text := dbgrid.GetColumnByFieldName('ablagenr').field.AsString;
      eliegenschaft.Text := dbgrid.GetColumnByFieldName(liegenschaft)
        .field.AsString;

      date := formatdatefrom4jto2j(dbgrid.GetColumnByFieldName(Posteingang)
        .field.AsString);
      if date = '00.00.00' then date := '';

      eposteingang.Text := date;
      date := formatdatefrom4jto2j(dbgrid.GetColumnByFieldName(abrechnungsende)
        .field.AsString);
      if date = '00.00.00' then date := '';
      dtabrechnungsende.Text         := date;
      eabrechnungsende.Text          := date;

      menotizen.Text := dbgrid.GetColumnByFieldName(Notizen).field.AsString;
    end;

    disablecontrols(voll.Panel5);
    voll.bsave.Enabled := True;
    setliegenschaftsdaten(lg, nn);

  end;
end;

procedure Tformmain.filterangeboteselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' +
      filterangebot.cselae.Text, filter);
    setfilter(formdb.queryangebote);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filterangeboteseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' + filterangebot.cseldi.Text, filter);
    setfilter(formdb.queryangebote);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filterangebotesellgExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('liegenschaft' +
      filterangebot.csellg.Text, filter);
    setfilter(formdb.queryangebote);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filterangeboteselpeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('posteingang' + filterangebot.cselpe.Text, filter);
    setfilter(formdb.queryangebote);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filterangeboteselsbExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      filterangebot.cselsb.Text, filter);
    setfilter(formdb.queryangebote);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filtersonstigeseselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' +
      filtersonstiges.cselae.Text, filter);
    setfilter(formdb.querysonstige);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filtersonstigeseseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' + filtersonstiges.cseldi.Text, filter);
    setfilter(formdb.querysonstige);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filtersonstigesesellgExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('liegenschaft' +
      filtersonstiges.csellg.Text, filter);
    setfilter(formdb.querysonstige);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filtersonstigeseselpeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('posteingang' +
      filtersonstiges.cselpe.Text, filter);
    setfilter(formdb.querysonstige);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.filtersonstigeseselsbExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      filtersonstiges.cselsb.Text, filter);
    setfilter(formdb.querysonstige);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.flipspaltenClick(Sender: TObject);
begin

end;

// ---------------------------------------------
procedure Tformmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // minimizeme;
  // Action := caNone;
  Killprocess(procidbfw);
  Killprocess(formdb.getplinkpid);
  Killprocess(procidplinkmysql);
  // KillTask('plink.exe');
  if isexerunning('plink.exe') then KillTask('plink.exe');
  // try
  // if DirectoryExists(getlocaltmpfolder) then DeleteFiles(getlocaltmpfolder);
  // except outputdebugstring('Verzeichnis nicht vorhanden');
  // end;
  try
    if (ftpcollectorlist.Count > 0) then begin
      ftpcollectorlist.SaveToFile(getnotsentlist);
    end;
  except outputdebugstring('Verzeichnis nicht gefunden');
  end;

end;

procedure Tformmain.FormCreate(Sender: TObject);
var
  list: TStringList;
begin
  // connectwithplink;
  connectToPipe;
  list := TStringList.Create;

  dokcons := tconst.Create;
  try ListFileDir(getCollectorfolder(dokcons.programmname), list);
  except
    showmessage('collectorfolder');
    ;

  end;
  worker           := TWorker.Create;
  ftpcollectorlist := TStringList.Create;
  // piupdate.Visible := worker.checkUpdate;
  if not FileExists(getnotsentlist) then exit;
  try ftpcollectorlist.LoadFromFile(getnotsentlist);
  except showmessage('not sent list error');
  end;
  filterlist := TDictionary<string, string>.Create;
end;

procedure Tformmain.FormDestroy(Sender: TObject);
begin
  try
    if (ftpcollectorlist.Count > 0) then
        ftpcollectorlist.SaveToFile(getnotsentlist);
  except outputdebugstring('Verzeichnis kann nicht gelöscht werden');

  end;
end;

procedure Tformmain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var
  prefix: string;
  Button: TNxButton;
begin

  prefix := getprefix(pagerspeicher.activepageindex);
  if Key = vk_down then begin
    Key := ord(#0);
    Perform(WM_NextDlgCtl, ord(Shift = [ssShift]), 0);
  end;

  if Key = vk_up then begin
    Key := ord(#0);
    Perform(WM_NextDlgCtl, 1, 0);
  end;
end;

procedure Tformmain.FormKeyPress(Sender: TObject; var Key: Char);
var
  prefix: string;
  memo  : TfMemo;
  Button: TNxButton;
  frame : Tframebase;
begin

  prefix := getprefix(pagerspeicher.activepageindex);
  frame  := getframe;
  memo   := frame.FindComponent('menotizen') as TfMemo;
  if memo.Focused then exit;
  Button := frame.FindComponent('bsave') as TNxButton;
  if Button.Focused then begin
    if Key = #13 then

      // button.Click;

        exit;
  end;

  if True then

    if Key = #13 then begin
      Perform(WM_NextDlgCtl, 0, 0);
      Key := #0;
    end;
end;

procedure Tformmain.FormShow(Sender: TObject);
var
  path: string;
  anz : string;
begin
  pagermain.ActivePage := tabspeichern;

  pagermain.ShowTabs         := false;
  ptabellen.ShowTabs         := false;
  pagerspeicher.ShowTabs     := false;
  pagerspeicher.ActivePage   := LEER;
  pvollbilder.ActivePage     := leer2;
  pvollbilder.ShowTabs       := false;
  framen.flipadress.Expanded := false;
  with dokcons do begin
    listposteingang        := TStringList.Create;
    listpostausgang        := TStringList.Create;
    selectedlb             := TListBox.Create(nil);
    selectedlb.MultiSelect := True;
    formmain.Width         := 1500;
    iueber.Left            := formmain.Width - 40;
    ieinstellungen.Left    := formmain.Width - 80;
    path                   := getLocalFolder(dokcons.programmname);
    procidbfw              := -1;
    // piupdate.Visible := worker.checkUpdate;
    try
      if not FileExists(getinifile(dokcons.programmname, inidatei)) then begin
        if not assigned(Einstellungen) then
            Einstellungen := TEinstellungen.Create(self);
        showeinstellungen;

        bfwpfad := getbfwpfad;
        exit;
      end;
    except
      showmessage('Einstellungen können nicht gestartet werden');
      exit;
    end;
    setzwitab;
    scanvz := readfromini(getinifile(dokcons.programmname, inidatei), 'Section',
      'Verzeichnis', default_value);
    kn := readfromini(getinifile(dokcons.programmname, inidatei), 'Section',
      'Kundennummer', default_value);
    sb := readfromini(getinifile(dokcons.programmname, inidatei), 'Section',
      'Sachbearbeiter', default_value);
    passwort := readfromini(getinifile(dokcons.programmname, inidatei),
      'Section', 'Passwort', default_value);
    // digverz := readfromini(getinifile(inidatei), 'Section', 'Digverzeichnis',
    // default_value);
    bfwpfad := readfromini(getinifile(dokcons.programmname, inidatei),
      'Section', 'bfwpfad', default_value);
    postausgverz := readfromini(getinifile(dokcons.programmname, inidatei),
      'Section', 'Postausgang', default_value);
    anz := readfromini(getinifile(dokcons.programmname, inidatei), 'Section',
      'Idanzeigen', '0');
    if anz = '0' then idanzeigen := false
    else idanzeigen              := True;
    cbid.Checked                 := idanzeigen;
    lausgangsordner.Hint         := postausgverz;
    leingangsordner.Hint         := scanvz;
    if bfwpfad = 'kein wert' then begin
      bfwpfad := getbfwpfad;
      writeToIni(programmname, inidatei, bfwpfad);
    end;
    anz := readfromini(getinifile(dokcons.programmname, inidatei), 'Section',
      'Splitnumber', '0');
    if anz = '0' then dosplitnumber                   := false
    else dosplitnumber                                := True;
    if (scanvz = 'kein wert') then scanvz             := getcommonDocFolder;
    if (postausgverz = 'kein wert') then postausgverz := getcommonDocFolder;
    if kn = 'kein wert' then kn                       := '';
    if sb = 'kein wert' then sb                       := '';

    // Kundennummer (inkl "Ordnernummern") erstellen.
    // Zugangsberechtigungen anlegen
    getsettings;

    if not FileExists(getauftragsdaten(dokcons.programmname)) then begin
      worker.setauftragsdaten;
    end;

    pagerspeicher.ActivePage := LEER;
    lkundennummer.Caption    := 'Kundennummer: ' + kn;
    lsachbearbeiter.Caption  := 'Sachbearbeiter: ' + sb;
    allowthread              := True;

    getallids;

  end;
end;

// ###############################################
procedure Tformmain.Neexit(Sender: TObject);
begin
  frameauf.enutzerexit(Sender);

end;

procedure Tformmain.frameangebotUpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if frameangebot.eliegenschaft.Text = '' then exit;

  try frameangebot.liegenschaftupdown(Sender, Button);
  except exit;

  end;
  setliegenschaftsdaten;

end;

procedure Tformmain.frameauftragsanfeselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' +
      filterauftragsanf.cselae.Text, filter);
    setfilter(formdb.queryanforderungen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameauftragsanfeseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' +
      filterauftragsanf.cseldi.Text, filter);
    setfilter(formdb.queryanforderungen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameauftragsanfesellgExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('liegenschaft' +
      filterauftragsanf.csellg.Text, filter);
    setfilter(formdb.queryanforderungen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameauftragsanfeselpeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('posteingang' +
      filterauftragsanf.cselpe.Text, filter);
    setfilter(formdb.queryanforderungen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameauftragsanfeselsbExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      filterauftragsanf.cselsb.Text, filter);
    setfilter(formdb.queryanforderungen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameauftragUpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin

  if frameauf.eliegenschaft.Text = '' then exit;

  try frameauf.liegenschaftupdown(Sender, Button);
  except exit;

  end;
  setliegenschaftsdaten;
end;

procedure Tformmain.framebasefilter1eselaeExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;

    filterlg := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' + framebasefilter1.cselae.Text,
      filterlg);
    setfilter(formdb.queryvert);

  except
    on e: Exception do showmessage(e.Message);

  end;

end;

procedure Tformmain.framebasefilter1eseldiExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;

    filterlg := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' + framebasefilter1.cseldi.Text,
      filterlg);
    setfilter(formdb.queryvert);

  except
    on e: Exception do showmessage(e.Message);

  end;

end;

procedure Tformmain.framebasefilter1esellgExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;

    filterlg := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('liegenschaft' + framebasefilter1.csellg.Text,
      filterlg);
    setfilter(formdb.queryvert);

  except
    on e: Exception do showmessage(e.Message);

  end;

end;

procedure Tformmain.framebasefilter1eselpeExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;

    filterlg := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('posteingang' + framebasefilter1.cselpe.Text,
      filterlg);
    setfilter(formdb.queryvert);

  except
    on e: Exception do showmessage(e.Message);

  end;

end;

procedure Tformmain.framebasefilter1eselsbExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;

    filterlg := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('sachbearbeiter_id' + framebasefilter1.cselsb.Text,
      filterlg);
    setfilter(formdb.queryvert);

  except
    on e: Exception do showmessage(e.Message);

  end;

end;

procedure Tformmain.frameenergiecbpseudoChange(Sender: TObject);
begin
  framen.cbpseudoChange(Sender);

end;

procedure Tformmain.frameenergiecbpseudoClick(Sender: TObject);
begin
  framen.cbpseudoClick(Sender);
end;

procedure Tformmain.frameenergieeliegenschaftExit(Sender: TObject);
begin
  framen.eliegenschaftExit(Sender);

end;

procedure Tformmain.frameenergieeposteingangExit(Sender: TObject);
begin
  framen.dateexit(Sender);

end;

procedure Tformmain.frameenfilterbanwendenClick(Sender: TObject);
begin
  frameenfilter.banwendenClick(Sender);
end;

procedure Tformmain.frameenfilterblöschenClick(Sender: TObject);
begin
  filterlg := '';
  frameenfilter.blöschenClick(Sender);
  formdb.queryen.Filtered := false;
end;

procedure Tformmain.frameenfiltereselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' +
      frameenfilter.cselae.Text, filter);
    setfilter(formdb.queryen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameenfiltereseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' + frameenfilter.cselae.Text, filter);
    setfilter(formdb.queryen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameenfilteresellgExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('liegenschaft' +
      frameenfilter.csellg.Text, filter);
    setfilter(formdb.queryen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameenfiltereselpeExit(Sender: TObject);
var
  filter: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('posteingang' + frameenfilter.cselpe.Text, filter);
    setfilter(formdb.queryen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.frameenfiltereselsbExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      frameenfilter.cselsb.Text, filter);
    setfilter(formdb.queryen);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framefilterreklamationbanwendenClick(Sender: TObject);
begin
  framefilterreklamation.banwendenClick(Sender);

end;

procedure Tformmain.framefilterreklamationblöschenClick(Sender: TObject);
begin
  filterlg := '';
  framefilterreklamation.blöschenClick(Sender);
  formdb.queryrekl.Filtered := false;
end;

procedure Tformmain.framefilterreklamationeselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('abrechnungsende' +
      framefilterreklamation.cselae.Text, filter);
    setfilter(formdb.queryrekl);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framefilterreklamationeseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    filterlist.AddOrSetValue('ablagenr' + framefilterreklamation.cseldi.
      Text, filter);
    setfilter(formdb.queryrekl);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framefilterreklamationesellgExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('liegenschaft' +
      framefilterreklamation.csellg.Text, filter);
    setfilter(formdb.queryrekl);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framefilterreklamationeselpeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('posteingang' +
      framefilterreklamation.cselpe.Text, filter);
    setfilter(formdb.queryrekl);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framefilterreklamationeselsbExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      framemonfilter.cselsb.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonfilterbanwendenClick(Sender: TObject);
begin
  framemonfilter.banwendenClick(Sender);
end;

procedure Tformmain.framemonfilterblöschenClick(Sender: TObject);
begin
  filterlg := '';
  framemonfilter.blöschenClick(Sender);
  formdb.querymon.Filtered := false;
end;

procedure Tformmain.framemonfiltereselaeExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('abrechnungsende' +
      framemonfilter.cselae.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonfiltereseldiExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('ablagenr' + framemonfilter.cseldi.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonfilteresellgExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('liegenschaft' +
      framemonfilter.csellg.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonfiltereselpeExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('posteingang' +
      framemonfilter.cselpe.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonfiltereselsbExit(Sender: TObject);

var
  filter: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      framemonfilter.cselsb.Text, filter);
    setfilter(formdb.querymon);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonnutbanwendenClick(Sender: TObject);
begin
  framemonnut.banwendenClick(Sender);

end;

procedure Tformmain.framemonnutblöschenClick(Sender: TObject);
begin
  filterlg := '';
  framemonnut.blöschenClick(Sender);
  formdb.querynuliste.Filtered := false;
end;

procedure Tformmain.framemonnuteselaeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('abrechnungsende' +
      framemonnut.cselae.Text, filter);
    setfilter(formdb.querynuliste);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonnuteseldiExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('ablagenr' + framemonnut.cselae.Text, filter);
    setfilter(formdb.querynuliste);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonnutesellgExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('liegenschaft' + framemonnut.csellg.Text, filter);
    setfilter(formdb.querynuliste);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonnuteselpeExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('posteingan' + framemonnut.cselpe.Text, filter);
    setfilter(formdb.querynuliste);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framemonnuteselsbExit(Sender: TObject);
var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      framemonnut.cselsb.Text, filter);
    setfilter(formdb.querynuliste);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

// ###############################################
procedure Tformmain.framemontageeauftragsnummerExit(Sender: TObject);
var
  auftragsnrtmp: string;
  tmp          : string;
  dict         : TStringList;

  frame: Tframebase;
begin
  with dokcons do begin
    frame         := getframe as Tframereklmont;
    auftragsnrtmp := (frame as Tframereklmont).eauftragsnummer.Text;
    showmessage(auftragsnrtmp);
    dict := TStringList.Create;
    dict.Add('*');
    with formdb do begin
      formdb.doquery(queryaufträge, 'aufträge', ' WHERE ' + auftragsnummer + '='
        + quotedstr(auftragsnrtmp), dict);
      tmp := queryaufträge.FieldByName(liegenschaft).AsString;
      if not(tmp = '') then frame.eliegenschaft.Text := tmp;
      tmp := queryaufträge.FieldByName(Nutzernummer).AsString;
      if not(tmp = '') then
        (frame as Tframereklmont).enutzernummer.Text := tmp;

      tmp := queryaufträge.FieldByName(abrechnungsende).AsString;
      if not(tmp = '') then begin
        frame.dtabrechnungsende.Text := tmp;
        frame.eabrechnungsende.Text  := tmp;
      end;
    end;
  end;

end;

// ###############################################
procedure Tformmain.framemontageemontageExit(Sender: TObject);
begin
  framemontage.dateexit(Sender);

end;

// ###############################################
procedure Tformmain.framemontageExit(Sender: TObject);
begin
  framemontage.eliegenschaftExit(Sender);
end;

procedure Tformmain.framemontageUpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if framemontage.eliegenschaft.Text = '' then exit;
  try
    framemontage.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except

  end;
end;

procedure Tformmain.framenUpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  try
    if framen.eliegenschaft.Text = '' then exit;

    framen.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except exit;
  end;
end;

procedure Tformmain.framenutzerUpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if framenutzer.eliegenschaft.Text = '' then exit;

  try
    framenutzer.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except exit;
  end;
end;

// ###############################################
procedure Tformmain.framesonstigeseliegenschaftExit(Sender: TObject);
begin
  framesonstiges.eliegenschaftExit(Sender);
end;

procedure Tformmain.framesonstigesUpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if framesonstiges.eliegenschaft.Text = '' then exit;

  try

    framesonstiges.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except

  end;

end;

// ###############################################
procedure Tformmain.framevertenutzernummerExit(Sender: TObject);
begin
  framevert.enutzerexit(Sender);

end;

procedure Tformmain.framevertragenutzernummerExit(Sender: TObject);
begin
  // framevertrag.enutzerexit(Sender);

end;

procedure Tformmain.framevertUpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  if framevert.eliegenschaft.Text = '' then exit;

  try
    framevert.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except exit;
  end;
end;

// ###############################################
procedure Tformmain.framezwidtauszugExit(Sender: TObject);
begin
  if (Sender as tfmaskedit).Text = '' then exit;

end;

// ###############################################
procedure Tformmain.framezwidtposteingangExit(Sender: TObject);
begin
  framezwi.dtposteingangExit(Sender);
  // framezwi.eposteingange

end;

// ###############################################
procedure Tformmain.framezwieliegenschaftExit(Sender: TObject);
begin
  framezwi.eliegenschaftExit(Sender);

end;

// ###############################################
procedure Tformmain.framezwienutzernameKeyPress(Sender: TObject; var Key: Char);
begin
  framezwi.enutzernameKeyPress(Sender, Key);

end;

// ###############################################
procedure Tformmain.framezwieposteingangExit(Sender: TObject);
begin
  framezwi.dateexit(Sender);

end;

// ###############################################
procedure Tformmain.framezwifEdit1Exit(Sender: TObject);
begin
  framezwi.fEdit1Exit(Sender);

end;

// ###############################################
procedure Tformmain.framezwifilterbanwendenClick(Sender: TObject);
begin
  framezwifilter.banwendenClick(Sender);
end;

// ###############################################
procedure Tformmain.framezwifilterblöschenClick(Sender: TObject);
begin
  try
    if not assigned(filterlist) then exit;
    // filterlist.Clear;
    resetfilterlist;
    resetalleFilter;
  finally setallefiltereinstellungen;

  end;
end;

procedure Tformmain.framezwifiltercselaeChange(Sender: TObject);
begin

end;

// ###############################################
procedure Tformmain.framezwifiltereselaeExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('abrechnungsende' +
      framezwifilter.cselae.Text, filter);
    setfilter(formdb.queryzwi);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;
// #####################

procedure Tformmain.framezwifiltereseldiExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('ablagenr' + framezwifilter.cseldi.Text, filter);
    setfilter(formdb.queryzwi);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framezwifilteresellgExit(Sender: TObject);
var
  filterlg: string;
begin
  try
    if (Sender as tfedit).Text = '' then exit;
    filterlg := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('liegenschaft' + framezwifilter.csellg.Text,
      filterlg);
    setfilter(formdb.queryzwi);
  except
    on e: Exception do showmessage(e.Message);
  end;
end;

procedure Tformmain.framezwifiltereselpeExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('posteingang' +
      framezwifilter.cselpe.Text, filter);
    setfilter(formdb.queryzwi);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framezwifiltereselsbExit(Sender: TObject);

var
  filter: string;
begin
  if (Sender as tfedit).Text = '' then exit;
  try
    filter := (Sender as tfedit).Text;
    if not assigned(filterlist) then
        filterlist := TDictionary<string, string>.Create;
    filterlist.AddOrSetValue('sachbearbeiter_id' +
      framezwifilter.cselsb.Text, filter);
    setfilter(formdb.queryzwi);

  except
    on e: Exception do showmessage(e.Message);
  end;

end;

procedure Tformmain.framezwiUpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  if framezwi.eliegenschaft.Text = '' then exit;

  try
    framezwi.liegenschaftupdown(Sender, Button);
    setliegenschaftsdaten;
  except exit;

  end;

end;

procedure Tformmain.liegenschaftexit(Sender: TObject);
var
  frame: Tframebase;
  edit : tfedit;
begin

  pimage.Visible := false;
  // IStatusok.Visible := fa;
  edit := Sender as tfedit;
  if Length(edit.Text) = 0 then exit;

  frame := getframe;
  frame.eliegenschaftExit(Sender);
  if (Length(edit.Text) <> 7) then exit;

  setliegenschaftsdaten;

  try
    if ((frame as Tframebasenutzer).enutzernummer.Text = '') then exit;
    Nexit(((frame as Tframebasenutzer).enutzernummer) as tfedit);
  except outputdebugstring('keine Nutzernummer');

  end;

end;

procedure Tformmain.Nexit(Sender: TObject);
var
  dict : TDictionary<string, string>;
  frame: Tframebasenutzer;
begin
  frame := getframe as Tframebasenutzer;
  // frame.enutzernummer.Text := '';
  frame.enutzerexit(Sender);
  try
    dict := worker.getnutzerdaten((Sender as tfedit).Text, kn,
      frame.eliegenschaft.Text);
    setnutzerdaten(dict);
  except
    ;
  end;

end;

function Tformmain.getAblesedatum: string;
var
  prefix: string;
  helper: string;

  frame: Tframebase;
begin
  frame := getframe;
  // prefix := getprefix(pagerspeicher.activepageindex);
  // helper := prefix + 'dtablesung';
  // Result := getdate(frame.FindComponent('dtablesung') as tfmaskedit);
  Result := getdate((frame as Tframezwischen).eablesedatum);
end;

function Tformmain.getabrechnungsende: string;
var
  prefix : string;
  abredit: TMaskEdit;

  frame: Tframebase;
begin
  frame := getframe;
  // prefix  := getprefix(pagerspeicher.activepageindex);
  // abredit := frame.FindComponent('dtabrechnungsende') as TMaskEdit;
  // Result := getdate(abredit as tfmaskedit);
  Result := getdate(frame.eabrechnungsende);
end;

procedure Tformmain.getallids;
var
  kn         : Integer;
  index, size: Integer;
  frame      : Tframebase;
begin
  if not idanzeigen then laufendeid := ''
  else begin
    try
      laufendeid       := (formdb.getmaxno(inttostr(kn), sb));
      idnotset         := false;
      Timer4.Enabled   := false;
      size             := Length(speicherframes);
      for index        := 0 to size - 1 do begin
        frame          := FindComponent(speicherframes[index]) as Tframebase;
        frame.eid.Text := laufendeid;
      end;
    except
      begin
        // laufendeid := '-1';
        idnotset       := True;
        Timer4.Enabled := True;
      end;
    end;
  end;

end;

function Tformmain.getanrufer: string;
var
  prefix: string;

  frame: Tframebase;
  edit : tfedit;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  edit   := frame.FindComponent('eanrufer') as tfedit;
  Result := edit.Text;
end;

function Tformmain.getauftragsnummer: string;
begin
  if pagermain.ActivePage = TMontage then

      Result := framemontage.eauftragsnummer.Text;
  if pagermain.ActivePage = treklamaion then
      Result := framereklamation.eauftragsnummer.Text;
end;

function Tformmain.getauftragstyp: string;
begin
  Result := frameauf.cbselectauftrag.Text;
end;

function Tformmain.getAuszugsdatum: string;
var
  prefix: string;
  frame : Tframebase;
begin
  frame := getframe;
  // prefix := getprefix(pagerspeicher.activepageindex);
  // Result := getdate(frame.FindComponent('dtauszug') as tfmaskedit);
  Result := getdate((frame as Tframezwischen).eauszug);

end;

function Tformmain.getbfwpfad: string;
begin
  with TRegistry.Create(KEY_READ or KEY_WOW64_64KEY) do begin
    try
      Rootkey := HKEY_LOCAL_MACHINE;
      if OpenKey
        ('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{DF79F885-40E2-4ABE-8BEA-3CD1F42A90CE}_is1',
        True) then begin
        bfwpfad := Readstring('InstallLocation');
        Result  := bfwpfad;
      end;
    finally Free;
    end;
  end;
end;

function Tformmain.getcollectorlist: TStringList;
begin
  Result := ftpcollectorlist;
end;

function Tformmain.getdate(em: tfedit): string;
var
  dt: string;
begin
  try
    dt                                 := em.Text;
    if AnsiStartsStr('  ', dt) then dt := '';
    Result                             := formatDateOhneTrenner(dt);
  except Result                        := '000000';

  end;

end;

// ###############################################
function Tformmain.getdatemitpunkt(Tag: Integer; datestring: string): string;
var
  datemitpunkt: string;
  abrdat      : tdatetime;
begin
  abrdat := StrToDateTime(datestring);
  with dokcons do begin

    case Tag of
      ZwischenablsgINT, MontageINT, ReklamationINT: Result := datestring;
      KostenINT, SonstigesInt: begin

          abrdat := abrdat + 365;

        end;
      //
      // EnergieausweisINT, Nutzerint,
      //
      // Vertragsint, Angebotsint, Auftragsint:
      // // else DateTimeToString(datemitpunkt, 'dd.mm.yy', now);
      // else Result := '';
    end;
    DateTimeToString(Result, 'dd.mm.yy', abrdat);
  end;
end;

// ###############################################
function Tformmain.getdatumchecked: string;
begin
  Result := '0';
  // das Datum muss nicht überprüft sein!

end;

function Tformmain.getdb: TNextDBGrid;
begin
  case ptabellen.activepageindex of
    0: Result := gridzwi;
    1: Result := gridmon;
    2: Result := gridnutzerliste;
    3: Result := gridenergie;
    4: Result := gridrek;
    5: Result := gridverträge;
    6: Result := gridsonstiges;
    7: Result := gridanforderungen;
    8: Result := gridangebote;
  else Result := gridzwi;
  end;
end;

function Tformmain.getdigverzeichnis: string;
begin
  Result := digverz;
end;

function Tformmain.getDocumentid: string;
var
  prefix: string;
  editid: Tedit;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  Result := frame.eid.Text;

end;

function Tformmain.getdokumente(table_zwi, wherestring: string;
  values: TStringList): string;
begin

end;

function Tformmain.getkundennrfordb: string;
begin
  Result := Format('%.2d', [strtoint(copy(getLiegenschaft, 1, 2))]);
end;

function Tformmain.getkundennrnAsString: TStringList;
var
  item: Integer;
begin
  Result := TStringList.Create;
  for item in kundennummern do begin
    Result.Add(Format('%.2d', [item]));
  end;
end;

function Tformmain.getErledigt: string;
var
  frame: Tframebase;
begin
  frame         := getframe;
  try Result    := inttostr((frame as Tframereklmont).rgerledigt.ItemIndex);
  except Result := '0';
  end;
end;

function Tformmain.getFilename: string;
begin
  try Result    := selectedlist[selectedlb.ItemIndex];
  except Result := '';
  end;
end;

function Tformmain.getfilesizeex(const afilename: string): int64;
var
  F: TSearchRec;
begin
  Result := -1;
  if FindFirst(afilename, faAnyFile, F) = 0 then begin
    try Result := F.FindData.nFileSizeLow or (F.FindData.nFileSizeHigh shl 32);
    finally findClose(F);
    end;
  end;
end;

// ###############################################
function Tformmain.getFiletype(filename: string): Integer;
var
  lfiletype: TLabel;
  prefix   : string;
  frame    : Tframebase;
begin
  with dokcons do begin
    frame := getframe;
    // prefix := getprefix(pagerspeicher.activepageindex);
    // lfiletype := frame.FindComponent('lfiletype') as TLabel;

    fileext := ExtractFileExt(filename);
    if fileext.Contains('eml') then begin
      filetype          := emailverarbeitung;
      lfiletype.Caption := eml;
      exit;
    end;
    if Length(filename) > 0 then begin
      if AnsiStartsStr('scan', filename) then begin
        lfiletype.Caption := bild;
        filetype          := bildverarbeitung;
      end else begin
        lfiletype.Caption := digital;
        filetype          := bildverarbeitung;
      end;
    end;
  end;
end;

// ###############################################
function Tformmain.getfittingabrechnungsende(abrdat: string): string;
var
  aktabrende                        : tdatetime;
  abryear, abrmonth, abrday         : Word;
  nowyear, nowmonth, nowday         : Word;
  resultdate                        : tdatetime;
  today                             : tdatetime;
  resultyear, resultmonth, resultday: Word;
  res                               : string;
begin
  with dokcons do begin
    today      := now;
    aktabrende := StrToDate(abrdat);
    DecodeDate(aktabrende, abryear, abrmonth, abrday);
    DecodeDate(today, nowyear, nowmonth, nowday);

    resultday   := abrday;
    resultmonth := abrmonth;
    resultyear  := nowyear;

    case pagerspeicher.activepageindex of

      KostenINT: begin // in nächster Abrechnungsperiode
          if nowmonth > abrmonth then resultyear := resultyear + 2
          else inc(resultyear);
        end;
    else // in aktuelle Abrechnungsperiode
      begin
        if nowmonth > abrmonth then inc(resultyear);
      end;
    end;
    resultdate := Encodedate(resultyear, resultmonth, resultday);
    res        := formatdatetime('dd.mm.yy', resultdate);
    Result     := res;
  end;
end;

// ###############################################
function Tformmain.getframe: Tframebase;
begin
  Result := FindComponent(speicherframes[pagerspeicher.activepageindex])
    as Tframebase;
  if Result = nil then Result := framezwi;

end;

// ###############################################
function Tformmain.getkundennummer: string;
begin
  try Result    := kn;
  except Result := '';

  end;
end;

// ###############################################
function Tformmain.getLiegenschaft: string;
var
  prefix: string;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  Result := (frame.FindComponent('eliegenschaft') as Tedit).Text;

end;

// ###############################################
function Tformmain.getMontagedatum: string;
var
  prefix: string;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  // Result := getdate(frame.FindComponent('dtmontage') as tfmaskedit);
  Result := getdate(framemontage.emontage);
end;

// ###############################################
function Tformmain.getNotizen: string;
var
  prefix: String;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  Result := (frame.FindComponent('menotizen') as TMemo).Text;
end;

// ###############################################
function Tformmain.getNutzername: string;
var
  prefix, name: string;
  frame       : Tframebase;
begin
  frame                  := getframe;
  prefix                 := getprefix(pagerspeicher.activepageindex);
  name                   := (frame.FindComponent('enutzername') as Tedit).Text;
  if name = '' then name := 'LEERSTAND';
  Result                 := name;

end;

// ###############################################
function Tformmain.getNutzernummer: string;
var
  prefix: string;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  Result := (frame.FindComponent('enutzernummer') as Tedit).Text;
end;

// ###############################################
function Tformmain.getort: string;
begin
  Result := framen.eeort.Text;
end;

// ###############################################
function Tformmain.getpasswort: string;
begin
  Result := passwort;
end;

// ###############################################
function Tformmain.getplz: string;
begin
  Result := framen.eeplz.Text;
end;

// ###############################################
function Tformmain.getpostausgangsverzeichnis: string;
begin
  try Result    := postausgverz;
  except Result := '';

  end;
end;

// ###############################################
function Tformmain.getPosteingang: string;
var
  prefix: string;
  frame : Tframebase;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  // Result := getdate(frame.FindComponent('dtposteingang') as tfmaskedit);
  Result := getdate(frame.eposteingang);
end;

// ###############################################
function Tformmain.getprefix(active: Integer): string;
var
  prefix: string;
  sheet : TNxTabSheet;
begin
  sheet                                    := pagerspeicher.ActivePage;
  if sheet = TZwischenablesung then prefix := 'z';
  if sheet = TMontage then prefix          := 'm';
  if sheet = treklamaion then prefix       := 'r';
  if sheet = Tenergieausweis then prefix   := 'e';
  if sheet = TKostenermittlung then prefix := 'k';
  if sheet = tNutzerliste then prefix      := 'n';
  if sheet = tsonstiges then prefix        := 's';
  if sheet = TVerträge then prefix         := 'v';
  if sheet = tauftrag then prefix          := 'na';
  if sheet = Tangebotsanfragen then prefix := 'a';

  Result := prefix;
end;

// ###############################################v
function Tformmain.getpseudoliegenschaft: string;
begin
  Result                                 := '0';
  if framen.cbpseudo.Checked then Result := '1';

end;

// ###############################################
function Tformmain.getsachbearbeiter: String;
begin
  try Result    := sb;
  except Result := '';

  end;
end;

// ###############################################
function Tformmain.getSammelordner: string;
begin
  if lbeingang.SelCount > 0 then begin
    Result := '0';
    exit;
  end;
  if lbausgang.SelCount > 0 then begin
    Result := '1';
    exit;
  end;

  Result := '2';
end;

// ###############################################
function Tformmain.gettag(sheet: TNxTabSheet): Integer;
begin
  with dokcons do begin
    if sheet = Tangebotsanfragen then Result := Angebotsint;
    if sheet = tauftrag then Result          := Auftragsint;
    if sheet = Tenergieausweis then Result   := EnergieausweisINT;
    if sheet = TKostenermittlung then Result := KostenINT;
    if sheet = TMontage then Result          := MontageINT;
    if sheet = tNutzerliste then Result      := Nutzerint;
    if sheet = treklamaion then Result       := ReklamationINT;
    if sheet = tsonstiges then Result        := SonstigesInt;
    if sheet = TVerträge then Result         := Vertragsint;
    if sheet = TZwischenablesung then Result := ZwischenablsgINT;
  end;
end;

// ###############################################
function Tformmain.gettelefonnummer: string;
var
  prefix: string;
  frame : Tframebase;
  edit  : tfedit;
begin
  frame  := getframe;
  prefix := getprefix(pagerspeicher.activepageindex);
  edit   := frame.FindComponent('etelefonnummer') as tfedit;
  Result := edit.Text;
end;

function Tformmain.getVertragstyp: string;
begin
  Result := AnsiLowerCase(framevert.cbvertrag.Text);
end;

// ###############################################
function Tformmain.getzwivalues: TStringList;
begin
  Result := TStringList.Create;
  Result.Add('*');
  // Result.Add('Dokumentid');
  // Result.Add(Nutzernummer);
  // Result.Add(Nutzername);
  // Result.Add(abrechnungsende);
  // Result.Add(Posteingang);
  // Result.Add(sammelordner);

end;

// ###############################################
function Tformmain.getscanverzeichnis: string;
begin
  try Result    := scanvz;
  except Result := '';

  end;
end;

// ###############################################
function Tformmain.getstrasse: string;
begin
  Result := framen.eestrasse.Text;
end;

// ###############################################
procedure Tformmain.ibfwClick(Sender: TObject);
var
  lieg, nn, prefix: string;
  frame           : Tframebase;

begin
  frame := getframe;
  if not(procidbfw = -1) then Killprocess(procidbfw);
  prefix    := getprefix(pagerspeicher.activepageindex);
  lieg      := (frame.FindComponent('eliegenschaft') as Tedit).Text;
  nn        := (frame.FindComponent('enutzernummer') as Tedit).Text;
  procidbfw := Shellmyex(pchar(IncludeTrailingPathDelimiter(bfwpfad) +
    'Bfwonline.exe ' + lieg + ' ' + nn), sw_normal);
end;

// ###############################################
procedure Tformmain.ieinstellungenClick(Sender: TObject);
begin
  if not assigned(Einstellungen) then
      Einstellungen := TEinstellungen.Create(self);
  try Einstellungen.Show;
  except

  end;
end;

// ###############################################
procedure Tformmain.iueberClick(Sender: TObject);
var
  helpr: Integer;
var
  versionsnummer         : string;
  aenderungen            : TStringList;
  aenderungsmessage, line: string;
begin
  versionsnummer := GetCurrentVersion;
  aenderungen    := TStringList.Create;
  aenderungen.LoadFromFile(getaenderungsfile(dokcons.programmname));
  for line in aenderungen do begin
    aenderungsmessage := aenderungsmessage + #10#13 + line;
  end;
  helpr := MyMesssageDlg('Version ' + versionsnummer + #10#13 +
    aenderungsmessage);

end;

// ###############################################
function Tformmain.MyMesssageDlg(MyMessage: String): Integer;
var
  AMsgDialog: TForm;
  ACheckBox : TCheckBox;
begin
  AMsgDialog := CreateMessageDialog(MyMessage, mtInformation, [mbOK]);

  with AMsgDialog do
    try
      // Font.Name := 'Arial';
      // Font.Size := 8;
      // Font.Color := clNavy;
      Font.Color := $00696969;
      Caption    := 'Versionsinformation';
      Height     := formmain.Height - 100;
      top        := formmain.top + 100;
      // left := Screen.';
      Result := ShowModal;
      // scroll

      // with ACheckBox do
      // begin
      // Parent := AMsgDialog;
      /// /      Caption := 'Don't show this message again.';
      // Top := 121;
      // Left := 8;
      // end;
      AMsgDialog.Show;
    finally AMsgDialog.Free;
    end;
end;

// ###############################################
procedure Tformmain.iupdateClick(Sender: TObject);
begin
  if not(MessageDlg('Möchten Sie die neue Version installieren?',
    mtConfirmation, mbYesNo, 0) = mrYes) then exit;
  downloadupdate;
end;

// ###############################################
procedure Tformmain.lbausgangMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  listentry: string;
  lb       : TListBox;
  list     : TStringList;
  dir      : string;
  filename : string;
  index    : Integer;
begin

  lb := Sender as TListBox;
  if not(Button = mbright) then exit;
  // nur Rechtsklick
  index := lb.ItemIndex; // ins Leere geklickt
  if index < 0 then exit;
  lb.Selected[index] := True;
  if lb = lbausgang then begin
    list := listpostausgang;
    dir  := postausgverz;
  end;
  if Sender = lbeingang then begin
    list := listposteingang;
    dir  := scanvz;
  end;
  filename := list[lb.ItemIndex];
  if not(MessageDlg('Datei löschen?' + #10#13 + filename, mtConfirmation,
    [mbOK, mbCancel], 0) = mrOk) then exit;
  DeleteFile(IncludeTrailingPathDelimiter(dir) + filename);
end;

// ###############################################
procedure Tformmain.lbausgangMouseEnter(Sender: TObject);
var
  lb: TListBox;
begin
  lb := (Sender as TListBox);
  if lb.SelCount = 0 then exit;

  lb.Hint := lb.Items.Strings[lb.ItemIndex];
end;

// ###############################################
procedure Tformmain.lbausgangMouseLeave(Sender: TObject);
begin
  (Sender as TListBox).Hint := '';
end;

// ###############################################
procedure Tformmain.lbeingangClick(Sender: TObject);
var
  index        : Integer;
  filename     : string;
  prefix       : string;
  filetypelabel: TLabel;
  eid          : TLabel;
  senderlb     : TListBox;
  frame        : Tframebase;
begin
  frame        := getframe;
  telefonieren := false;
  senderlb     := Sender as TListBox;
  index        := senderlb.ItemIndex;
  if index < 0 then exit;
  prefix         := getprefix(pagerspeicher.activepageindex);
  frame.eid.Text := laufendeid;
  filetypelabel  := frame.lfiletype;
  if Sender = lbeingang then begin
    selectedlist := listposteingang;
    selectedlb   := lbeingang;
    unselect(lbausgang);
    selecteddir := scanvz;
  end;
  if Sender = lbausgang then begin
    selectedlb := lbausgang;
    unselect(lbeingang);
    selectedlist := listpostausgang;
    selecteddir  := postausgverz;
  end;
  filetypelabel.Caption := selectedlb.Items[selectedlb.ItemIndex];

  // fid.Text := laufendeid;

  Timer1.Enabled := True;

  if not pagerspeicher.Visible then begin
    // fid.Visible := true;
    pagerspeicher.Visible := True;
  end;
end;

// ###############################################
procedure Tformmain.lbeingangDblClick(Sender: TObject);
begin

  if Sender = lbeingang then
      abspath := IncludeTrailingPathDelimiter(scanvz) + listposteingang.Strings
      [lbeingang.ItemIndex]
  else abspath := IncludeTrailingPathDelimiter(postausgverz) +
      listpostausgang.Strings[lbausgang.ItemIndex];

  if (AnsiLowerCase(ExtractFileExt(abspath)) = '.pdf') then
      abspath := copytotmp(dokcons.programmname, abspath);
  ShellExecute(Handle, 'open', pchar(abspath), nil, nil, SW_SHOWNORMAL)
end;

// ###############################################
procedure Tformmain.leingangsordnerDblClick(Sender: TObject);
var
  Pfad: string;
begin
  if not SelectDirectory('Ordner auswählen', 'C:\', Pfad) then exit;
  (Sender as TLabel).Hint := Pfad;
  if Sender = leingangsordner then begin
    scanvz := Pfad;
  end
  else postausgverz := Pfad;
  saveSettings(passwort, kn, sb, scanvz, postausgverz, idanzeigen,
    dosplitnumber);
  lookforfile;
end;

// ###############################################
procedure Tformmain.lkundennummerChange(Sender: TObject);
begin

  formsachkunde.Show;
  if Sender = lkundennummer then begin
    formsachkunde.lname.Caption := 'Kundennummer: ';
    formsachkunde.eedit.Text    := kn;
  end;
  if Sender = lsachbearbeiter then begin
    formsachkunde.lname.Caption := 'Sachbearbeiter: ';
    formsachkunde.eedit.Text    := sb;
  end;
end;

// ###############################################
procedure Tformmain.lkundennummerDblClick(Sender: TObject);
begin
  formkunde.Show;
end;

procedure Tformmain.lliegenschaftsdatenClick(Sender: TObject);
begin

end;

// ###############################################
procedure Tformmain.lookforfile;
var
  prefix: string;
  // lfiletype: TLabel;
  frame   : Tframebase;
  filetext: String;
begin
  frame := getframe;
  with frame do begin
    if not assigned(listposteingang) then listposteingang := TStringList.Create;
    if not assigned(listpostausgang) then listpostausgang := TStringList.Create;
    listposteingang.Clear;
    listpostausgang.Clear;

    if not(scanvz = '') then append(scanvz, listposteingang, lbeingang);
    if not(postausgverz = '') then
        append(postausgverz, listpostausgang, lbausgang);
    deleteremoved(listposteingang, lbeingang);
    deleteremoved(listpostausgang, lbausgang);

    if ((((lbeingang.Count > 0) or (lbausgang.Count > 0)) and
      (lbeingang.SelCount = 0) and (lbausgang.SelCount = 0))) then begin
      try

        lbeingang.Selected[0] := True;
        lbeingang.ItemIndex   := 0;
        lfiletype.Caption     := lbeingang.Items[0];
        if pagerspeicher.ActivePage = LEER then begin
          ComboBox1.ItemIndex := 0;
          ComboBox1Click(nil);
          lbeingangClick(lbeingang);
          pagerspeicher.Visible := True;
        end;
      except
      end;
    end;
    if telefonieren or (lbeingang.SelCount = 0) and (lbausgang.SelCount = 0)
    then lfiletype.Caption := 'telefonisch';

    filetypecaption := lfiletype.Caption;
  end;
end;

// ###############################################
procedure Tformmain.minimizeme;
begin

  hide();
  WindowState := wsMinimized;

  { Show the animated tray icon and also a hint balloon. }
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
  minimized := True;
end;

// ###############################################
function Tformmain.noDokIdNeeded: Boolean;
begin
  try Result := not(AnsiStartsStr('gescannt',
      selectedlist[selectedlb.ItemIndex]));
  except Result := false;

  end;
end;

// ###############################################
procedure Tformmain.npcError(Sender: TObject; AException: Exception);
var
  item : string;
  index: Integer;
begin
  item := npc.getDatastring;
  if not ftpcollectorlist.Find(item, index) then addtolist(item);
  // Showmessage('derzeit nicht verbunden mit pipe');
  // if not isexerunning then

  if not connectToPipe then showmessage('pipe kann nicht geöffnet werden');
end;

// ###############################################
procedure Tformmain.resetadrclick(Sender: TObject);
begin
  framen.eestrasse.Text := '';
  framen.eeort.Text     := '';
  framen.eeplz.Text     := '';
end;

procedure Tformmain.resetalleFilter;
begin
  with formdb do begin
    try
      queryzwi.Filtered := false;
      queryzwi.Refresh;
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try
      querymon.Filtered := false;
      querymon.Refresh;
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try
      querynuliste.Filtered := false;
      querynuliste.Refresh;
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try
      queryen.Filtered := false;
      queryen.Refresh;
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try
      queryrekl.Filtered := false;
      queryrekl.Refresh;
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try
      queryvert.Filtered := false;
      queryvert.Refresh;
    except
      // on e: Exception do showmessage(e.Message);
    end;

    try
      querysonstige.Filtered := false;
      querysonstige.Refresh;
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try
      queryanforderungen.Filtered := false;
      queryanforderungen.Refresh;
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try
      queryangebote.Filtered := false;
      queryangebote.Refresh;
    except
      // on e: Exception do showmessage(e.Message);
    end;
  end;
end;

// ###############################################
procedure Tformmain.resetdate(tem: tfedit);
var
  today, setdate   : string;
  formatteddatetime: string;
begin
  DateTimeToString(today, 'dd.mm.yy', now);
  if (tem.Text = '') then begin
    tem.Text := today;
  end;

end;

procedure Tformmain.resetfilterlist;
begin
  if not assigned(filterlist) then
      filterlist := TDictionary<string, string>.Create;
  filterlist.Clear;
  filterlist.Add('liegenschaft', '');
  filterlist.Add('posteingang', '');
  filterlist.Add('sachbearbeiter_id', '');
  filterlist.Add('ablagenr', '');
  filterlist.Add('abrechnungsende', '');

end;

// ###############################################

procedure Tformmain.showauftrag(Sender: TObject);
begin
  formauftragsart.Show;
end;

// ###############################################
procedure Tformmain.NxButton3Click(Sender: TObject);
begin
  NxPanel1.hide;
  Panel4.Show;
end;

// ###############################################
procedure Tformmain.banzeigeverlassen(Sender: TObject);
begin
  pagermain.ActivePage     := tabspeichern;
  pagerspeicher.ActivePage := tabzwischen;
end;

// ###############################################
procedure Tformmain.NxComboBox1Change(Sender: TObject);
begin
  // var
  // query: string;
  // begin
  // case NxComboBox1.ItemIndex of
  // 0: showzwischenablesungen;
  // 1: showmontagen;
  // 2: shownutzerlisten;
  // end;

end;

// ###############################################
procedure Tformmain.NxDBButtonColumn1ButtonClick(Sender: TObject);
begin
  showmessage('klicked');
end;

// ###############################################
procedure Tformmain.NxDBButtonColumn1SetCell(Sender: TObject;
  acol, ARow: Integer; CellRect: TRect; CellState: TCellState);
var
  rect: TRect;
begin
  rect := TRect.Create(0, 0, 20, 20);
  DrawFrameControl(Canvas.Handle, rect, DFC_BUTTON, DFCS_BUTTONPUSH);
end;

// ###############################################
procedure Tformmain.NxGlyphButton1Click(Sender: TObject);

var
  dbgrid: TNextDBGrid;
begin
  if selectedRow = 0 then exit;
  dec(selectedRow);
  dbgrid := getdb;
  try
    dbgrid.selectedRow := selectedRow;
    fillvollbild(dbgrid, selectedRow);
  finally
    // dbgrid.Free;
  end;

end;

// ###############################################
procedure Tformmain.NxGlyphButton2Click(Sender: TObject);
begin
  vorclick(nil);
end;

// ###############################################
procedure Tformmain.NxGlyphButton3Click(Sender: TObject);
var
  dbgrid: TNextDBGrid;
begin
  pagermain.ActivePage := tabanzeige;
  dbgrid               := getdb;

  dbgrid.selectedRow           := selectedRow;
  dbgrid.Selected[selectedRow] := True;
  dbgrid.ScrollToRow(selectedRow);
  gridzwiClick(dbgrid);
end;

// ###############################################
procedure Tformmain.NxTabSheet1Hide(Sender: TObject);
begin
  // fid.Visible := true;
  // NxTabSheet1.Visible := false;
end;

// ###############################################
procedure Tformmain.NxTabSheet1Show(Sender: TObject);
begin
  // fid.Visible := false;
end;

// ###############################################
procedure Tformmain.znxtelefonnotizChange(Sender: TObject);
var
  prefix  : string;
  frame   : Tframebase;
  eanrufer: Tedit;
begin
  frame    := getframe;
  prefix   := getprefix(pagerspeicher.activepageindex);
  eanrufer := frame.FindComponent('eanrufer') as Tedit;
  if (Sender as TNxFlipPanel).Expanded and
    not((frame.FindComponent('eliegenschaft') as tfedit).Focused) then
      eanrufer.SetFocus;

end;

// ###############################################
procedure Tformmain.zwivollbildSetCell(Sender: TObject; acol, ARow: Integer;
  CellRect: TRect; CellState: TCellState);
begin

  ImageList1.Draw(gridzwi.Canvas, CellRect.Left, CellRect.top, 1);
end;

// ###############################################
procedure Tformmain.pagerspeicherChanging(Sender: TObject; PageIndex: Integer;
  var AllowChange: Boolean);
begin
  // sleep(100);
end;

// ###############################################
procedure Tformmain.pagerspeicherEnter(Sender: TObject);
begin
  // fid.Visible := true;
end;

// ###############################################
procedure Tformmain.pagerspeicherExit(Sender: TObject);
begin
  // fid.Visible := false;
end;

procedure Tformmain.Panel8Click(Sender: TObject);
begin

end;

// ###############################################
procedure Tformmain.panelfocus(panel: TPanel);
begin
  panel.Font.Style := [fsbold];
  panel.BevelKind  := TBevelKind.bkSoft;
end;

// ###############################################
procedure Tformmain.popup;
begin
  TrayIcon1.Visible := false;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
  minimized := false;
end;

// ###############################################
procedure Tformmain.pseudocheckChange(Sender: TObject);
begin

  framen.flipadress.Expanded := (Sender as TNxCheckBox).Checked;
  framen.eestrasse.SetFocus;
end;

procedure Tformmain.ptabellenChange(Sender: TObject);
begin

end;

// ###############################################
procedure Tformmain.pzClick(Sender: TObject);
var
  index: Integer;
begin
  //
  // pk.Font.Style := [];
  // pm.Font.Style := [];
  // pz.Font.Style := [];
  // pr.Font.Style := [];
  //
  // pk.Color := clWhite;
  // pm.Color := clWhite;
  // pz.Color := clWhite;
  // pr.Color := clWhite;
  //
  // pk.BevelKind := TBevelKind.bkNone;
  // pm.BevelKind := TBevelKind.bkNone;
  // pz.BevelKind := TBevelKind.bkNone;
  // pr.BevelKind := TBevelKind.bkNone;

  resetpanelfonts;

  // pr.hide;

  (Sender as TPanel).Font.Style := [fsbold];
  (Sender as TPanel).BevelKind  := TBevelKind.bkSoft;
  if Sender = pz then begin
    pagerspeicher.ActivePage := TZwischenablesung;
    clicked[0]               := True;
    pz.Color                 := dokcons.hellgrau;
  end;
  if Sender = pk then begin
    pagerspeicher.ActivePage := TKostenermittlung;
    clicked[1]               := True;
    pk.Color                 := dokcons.hellgrau;
  end;
  if Sender = pm then begin
    pagerspeicher.ActivePage := TMontage;
    clicked[2]               := True;
    pm.Color                 := dokcons.hellgrau;
  end;
  if Sender = pr then begin
    if pr.Caption = '' then exit;
    ComboBox1Click(pr);
    clicked[3] := True;
    pr.Color   := dokcons.hellgrau;
  end;

end;

// ###############################################
procedure Tformmain.pzMouseEnter(Sender: TObject);
begin
  (Sender as TPanel).Font.Style := [fsbold];
end;

// ###############################################
procedure Tformmain.pzMouseLeave(Sender: TObject);
var
  pan, panel: TPanel;
  index     : Integer;

begin
  panel := Sender as TPanel;
  if panel = pz then begin
    if clicked[0] then exit;
  end;
  if panel = pk then begin
    if clicked[1] then exit;
  end;
  if panel = pm then begin
    if clicked[2] then exit;
  end;
  if panel = pr then begin
    if clicked[3] then exit;
  end;
  // for index := 0 to 3 do begin
  // try pan := FindComponent(panels[index]) as TPanel;
  // except
  // on e: Exception do showmessage('...' + e.Message);
  //
  // end;
  // try
  // if pan = panel then begin
  //
  // if clicked[index] then exit;
  // end;
  // except on e: exception do ShowMessage(' mymessga' + e.Message);
  //
  // end;
  // end;
  panel.Font.Style := [];
end;

// ###############################################
procedure Tformmain.tNutzerlisteShow(Sender: TObject);
var
  number: string;
begin
  resetpanelfonts;
  panelfocus(pr);
  pr.Caption := 'Nutzerliste';
  try
  except
    ;
  end;
  resetdate(framenutzer.dtposteingang);
  // resetdate(framenutzer.eposteingang);
end;

// ###############################################
procedure Tformmain.TrayIcon1DblClick(Sender: TObject);
begin
  Show();
  WindowState := wsNormal;

  { Show the animated tray icon and also a hint balloon. }
  TrayIcon1.Visible := false;
  TrayIcon1.Animate := false;
  minimized         := false;
end;

// ###############################################
procedure Tformmain.edtposteingangExit(Sender: TObject);

var
  day, month, year: Integer;
  Mask            : TMaskEdit;
  date            : string;
  valid           : Boolean;
begin
  valid := True;
  Mask  := Sender as TMaskEdit;
  date  := Mask.Text;
  if AnsiStartsText('  ', date) or AnsiStartsText('__', date) then exit;

  day   := strtoint(trimright(copy(date, 1, 2)));
  month := strtoint(trimright(copy(date, 4, 2)));
  year  := strtoint(trimright(copy(date, 7, 4)));

  if (month < 1) or (month > 12) then begin
    valid := false;
  end;
  if day < 0 then begin
    valid := false;
  end;
  case month of
    1, 3, 5, 7, 8, 12: if day > 31 then begin
        valid := false;
      end;
    2: if day > 29 then begin
        valid := false;
      end;
    4, 6, 9, 11: if day > 30 then begin
        valid := false;
      end;
  end;
  if not valid then begin
    Mask.Color := clred;
    Mask.SetFocus;
    Mask.SelStart := 0;
  end
  else Mask.Color := clWhite;

end;

function Tformmain.erledigttext(val: Integer): string;
begin
  case val of
    0: Result := 'nein';
    1: Result := 'ja';
  else Result := 'keine Angabe';
  end;
end;

// ###############################################
procedure Tformmain.reset(frame: Tframebase);
var
  i, size, number, pheight: Integer;
  prefix                  : string;
  Tag                     : Integer;
begin
  with dokcons do begin
    number := 0;
    try frame.eid.SetFocus;
    except outputdebugstring('kann focus nicht erhalten');
    end;
    frame.bsave.Enabled          := True;
    frame.lfiletype.Caption      := '';
    frame.eid.Text               := '';
    pdatenrechts.Visible         := false;
    telefonieren                 := false;
    frame.dtposteingang.Text     := formatDateTimeOhneTrenner(now);
    frame.eposteingang.Text      := formatdatefrom4jto2j(DateToStr(now));
    frame.eliegenschaft.Text     := '';
    frame.menotizen.Text         := '';
    frame.dtabrechnungsende.Text := '__.__.__';
    frame.eabrechnungsende.Clear;
    frame.menotizen.Clear;
    Tag := gettag(pagerspeicher.ActivePage);
    case Tag of
      ZwischenablsgINT: begin
          framezwi.enutzernummer.Text := '';
          framezwi.enutzername.Text   := '';
          framezwi.enutzername.Clear;
          framezwi.enutzernummer.Clear;
          framezwi.eauszug.Clear;
          framezwi.eablesedatum.Clear;

        end;
      MontageINT: begin
          framemontage.eauftragsnummer.Clear;
          framemontage.dtmontage.Text := '__.__.__';
          framemontage.emontage.Clear;
          framemontage.rgerledigt.ItemIndex := 0;
        end;
      ReklamationINT: begin
          framereklamation.eauftragsnummer.Clear;
          framereklamation.dtmontage.Text := '__.__.__';
          framereklamation.emontage.Clear;
          framereklamation.rgerledigt.ItemIndex := 0;;
          // framereklamation.eauftragsnummer.Clear;
        end;
      EnergieausweisINT: begin
          framen.cbpseudo.Checked := false;
          framen.eestrasse.Clear;
          framen.eeplz.Clear;
          framen.eeort.Clear;
        end;
      SonstigesInt: begin
          framesonstiges.enutzernummer.Clear;
        end;
      Vertragsint: begin
          framevert.enutzernummer.Clear;
          framevert.cbvertrag.ItemIndex := -1;
        end;
      Angebotsint: begin
          frameangebot.enutzernummer.Clear;
        end;
      Auftragsint: begin
          frameauf.enutzernummer.Clear;
          frameauf.cbselectauftrag.ItemIndex := -1;
          frameauf.cbselectauftrag.Text      := 'Auftragstyp';
        end;
    end;
  end;
end;

// ###############################################
procedure Tformmain.resetdate(tem: TMaskEdit);
var
  today, setdate   : string;
  formatteddatetime: string;
begin
  DateTimeToString(today, 'dd.mm.yy', now);
  if (tem.Text = '  .  .  ') then begin
    tem.Text := today;
  end;

end;

// ###############################################
procedure Tformmain.resetids;
var
  fid    : tfedit;
  i, size: Integer;
  frame  : Tframebase;
begin
  frame := getframe;

  size             := Length(speicherframes);
  for i            := 0 to size - 1 do begin
    frame.eid.Text := '';
  end;
end;

// ###############################################
procedure Tformmain.resetlisten;
begin
  try
    selectedlb.Clear;
    selectedlist.Clear;
  except outputdebugstring('keine Liste ausgewählt');

  end;
end;

// ###############################################
procedure Tformmain.resetpanelfonts;
var
  index: Integer;
begin
  for index     := 0 to 3 do clicked[index] := false;
  pz.Font.Style := [];
  pm.Font.Style := [];
  pk.Font.Style := [];
  pr.Font.Style := [];
  // pr.Caption := '';

  pk.BevelKind := TBevelKind.bkNone;
  pm.BevelKind := TBevelKind.bkNone;
  pz.BevelKind := TBevelKind.bkNone;
  pr.BevelKind := TBevelKind.bkNone;

  pk.Color := clWhite;
  pm.Color := clWhite;
  pr.Color := clWhite;
  pz.Color := clWhite;
end;

// ###############################################
procedure Tformmain.workwithfile(filename: string);
begin
end;

// ###############################################
procedure Tformmain.zdtauszugKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

end;

// ###############################################
procedure Tformmain.zdtposteingangKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ignoreNonNumerics(Key);
end;

// ###############################################
procedure Tformmain.zeliegenschaftExit(Sender: TObject);
var
  lab         : Tedit;
  S           : String;
  kunde       : string;
  len         : Integer;
  prefix      : string;
  liegenschaft: TLabel;
  dict        : TDictionary<string, string>;
begin

  lab                  := Sender as Tedit;
  pimage.Visible       := false;
  iSTAtusfalse.Visible := false;
  prefix               := getprefix(pagerspeicher.activepageindex);
  if pverarbeitungsstatus.Visible then pverarbeitungsstatus.Visible := false;
  S := lab.Text;

  case lab.Tag of
    // 0: begin // dokumentid
    // if lab.Text = '---' then exit;
    // lab.Text := StringOfChar('0', 4 - length(S)) + S;
    // end;
    1: // Liegenschaft
      begin
        lab.Color := clWindow;
        lab.Hint  := '';
        { "erfolgreich gespeichert" ausblenden, falls sichtbar }
        if IStatusok.Visible then begin
          IStatusok.Visible := false;
          pimage.Visible    := false;
        end;
        if (Length(lab.Text) = 7) then begin
          setliegenschaftsdaten;
          exit;
        end;
        if (Length(lab.Text) > 5) then begin
          lab.SetFocus;
          lab.Color := clred;
          lab.Hint  :=
            'entweder gesamte Liegenschaftsnummer angeben oder maximal 5 Zeichen';
          exit;
        end;
        if (Length(lab.Text) = 0) then exit;
        kunde    := formmain.getkundennummer;
        len      := Length(kunde);
        len      := 7 - len;
        lab.Text := kunde + StringOfChar('0', len - Length(S)) + S;
        setliegenschaftsdaten;
      end;
    2: // Nutzernummer
      begin
        if Length(lab.Text) = 0 then exit;

        lab.Text := StringOfChar('0', 3 - Length(S)) + S;

        try
          dict := worker.getnutzerdaten(lab.Text, kn,
            (FindComponent(prefix + 'eliegenschaft') as tfedit).Text);
          setnutzerdaten(dict);
        except
          ;

        end;
      end;
  end;
end;

// ###############################################
procedure Tformmain.zenutzernameExit(Sender: TObject);
begin
  // if zenutzername.Text = '' then zenutzername.Text := 'LEERSTAND';
  if (Sender as tfedit).Text = '' then
    (Sender as tfedit).Text := 'LEERSTAND';

end;

// ###############################################
procedure Tformmain.zlnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // zenutzername.Hint := zenutzername.Text;
end;

// ###############################################
procedure Tformmain.zlnameKeyPress(Sender: TObject; var Key: Char);

begin
  Key := ansiuppercase(Key)[1];
  // zenutzername.Hint := zenutzername.Text + Key;
end;

// ###############################################
procedure Tformmain.save();
var
  number      : Integer;
  filename    : string;
  hastoscan   : Boolean;
  filenamelist: TStringList;
  size, i     : Integer;
  prefix      : string;
  bsave       : TNxButton;
  frame       : Tframebase;
begin
  frame               := getframe;
  successful          := false;
  frame.bsave.Enabled := false;
  try
    filenamelist := TStringList.Create;
    try size     := selectedlb.Count;
    except size  := -1;
    end;
    for i := 0 to size - 1 do begin
      if selectedlb.Selected[i] then
          filenamelist.Add(IncludeTrailingPathDelimiter(selecteddir) +
          selectedlist[i]);
    end;
    pimage.Visible       := false;
    IStatusok.Visible    := false;
    iSTAtusfalse.Visible := false;

    // pverarbeitungsstatus.visible := true;
    lhochruntergeladen.Caption := 'hochgeladen';

    Killprocess(procidwin);
    Tag        := gettag(pagerspeicher.ActivePage);
    successful := worker.dowork(filenamelist, Tag);
    if successful then begin
      resetlisten;
      if idanzeigen then getallids;
      pimage.Visible    := True;
      IStatusok.Visible := True;
      lliegenschaftsdaten.hide;
      reset(frame);
    end else begin
      pimage.Visible       := True;
      pimage.Caption       := 'nicht gespeichert';
      iSTAtusfalse.Visible := True;
    end;
  finally

    lookforfile;
    getallids;
  end;
end;

// ###############################################
function Tformmain.saveanrufer(anrufer, telefonnummer: string): Boolean;
begin
  self.anrufer       := anrufer;
  self.telefonnummer := telefonnummer;
  Result             := True;
end;

// ###############################################
function Tformmain.saveSettings(pw, kn, sb, vzscan, vzpost: string;
  shownumber, splitno: Boolean): Boolean;
begin
  with dokcons do begin
    self.passwort     := pw;
    self.kn           := kn;
    self.sb           := sb;
    self.scanvz       := vzscan;
    self.postausgverz := vzpost;
    writeToIni(dokcons.programmname, inidatei, pw, kn, sb, vzscan, vzpost,
      shownumber, splitno);
    lsachbearbeiter.Caption := 'Sachbearbeiter: ' + sb;
    lkundennummer.Caption   := 'Kundennummer: ' + kn;
    idanzeigen              := shownumber;
    dosplitnumber           := splitno;
    getsettings;
    cbid.Checked := idanzeigen;
    if idanzeigen then getallids
    else resetids;
  end;
end;

// ###############################################
procedure Tformmain.setalleFilter;
begin
  with formdb do begin
    try setfilter(queryzwi);
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try setfilter(querymon);
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try setfilter(querynuliste);
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try setfilter(queryen);
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try setfilter(queryrekl);
    except
      // on e: Exception do showmessage(e.Message);
    end;
    try setfilter(queryvert);
    except
      // on e: Exception do showmessage(e.Message);
    end;

    try setfilter(querysonstige);
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try setfilter(queryanforderungen);
    except
      // on e: Exception do showmessage(e.Message);

    end;
    try setfilter(queryangebote);
    except
      // on e: Exception do showmessage(e.Message);
    end;
  end;
end;

procedure Tformmain.setallefiltereinstellungen;
var
  Key, Value: string;
begin
  if not assigned(filterlist) then exit;
  if not assigned(framezwifilter) then exit;
  if not assigned(filtersonstiges) then exit;
  if not assigned(filterauftragsanf) then exit;
  if not assigned(filterangebot) then exit;
  if not assigned(framefilterreklamation) then exit;
  if not assigned(framemonfilter) then exit;
  if not assigned(frameenfilter) then exit;
  if not assigned(framemonnut) then exit;

  try
    for Key in filterlist.Keys.ToArray do begin
      Value := filterlist.Items[Key];
      if strcontains('liegenschaft', Key) then begin
        filtersonstiges.esellg.Text        := Value;
        framefilterreklamation.esellg.Text := Value;
        framezwifilter.esellg.Text         := Value;
        framemonfilter.esellg.Text         := Value;
        framemonnut.esellg.Text            := Value;
        frameenfilter.esellg.Text          := Value;
        filterauftragsanf.esellg.Text      := Value;
        filterangebot.esellg.Text          := Value;
        // Vertrag fehlt
      end;
      if strcontains('sachbearbeiter', Key) then begin

        filtersonstiges.eselsb.Text        := Value;
        framefilterreklamation.eselsb.Text := Value;
        framezwifilter.eselsb.Text         := Value;
        framemonfilter.eselsb.Text         := Value;
        framemonnut.eselsb.Text            := Value;
        frameenfilter.eselsb.Text          := Value;
        filterauftragsanf.eselsb.Text      := Value;
        filterangebot.eselsb.Text          := Value;
      end;
      if strcontains('posteingang', Key) then begin

        filtersonstiges.eselpe.Text        := Value;
        framefilterreklamation.eselpe.Text := Value;
        framezwifilter.eselpe.Text         := Value;
        framemonfilter.eselpe.Text         := Value;
        framemonnut.eselpe.Text            := Value;
        frameenfilter.eselpe.Text          := Value;
        filterauftragsanf.eselpe.Text      := Value;
        filterangebot.eselpe.Text          := Value;
      end;
      if strcontains('abrechnungsende', Key) then begin

        filtersonstiges.eselae.Text        := Value;
        framefilterreklamation.eselae.Text := Value;
        framezwifilter.eselae.Text         := Value;
        framemonfilter.eselae.Text         := Value;
        framemonnut.eselae.Text            := Value;
        frameenfilter.eselae.Text          := Value;
        filterauftragsanf.eselae.Text      := Value;
        filterangebot.eselae.Text          := Value;
      end;
      // filtersonstiges.eselae.Text := Value;
      if strcontains('ablagenr', Key) then begin
        filtersonstiges.eseldi.Text        := Value;
        framefilterreklamation.eseldi.Text := Value;
        framezwifilter.eseldi.Text         := Value;
        framemonfilter.eseldi.Text         := Value;
        framemonnut.eseldi.Text            := Value;
        frameenfilter.eseldi.Text          := Value;
        filterauftragsanf.eseldi.Text      := Value;
        filterangebot.eseldi.Text          := Value;

      end;
    end;
  except
    on e: Exception do showmessage(e.Message);

  end;

end;

function Tformmain.setdateityp(str: string): string;
var
  Dateiname, endung: string;
begin
  // try Dateiname := dbgrid.GetColumnByFieldName(dokcons.Dateiname)
  // .field.AsString;
  // except Dateiname := '';
  //
  // end;
  Dateiname := str;
  endung    := AnsiLowerCase(ExtractFileExt(Dateiname));
  if strcontains('eml', AnsiLowerCase(endung)) then begin
    Result := 'Email';
    exit;
  end;
  if strcontains('txt', endung) then begin
    Result := 'Notiz';
    exit;
  end;
  if strcontains('pdf', endung) then begin
    Result := 'PDF';
    exit;
  end;
  Result := 'Bild';
end;

procedure Tformmain.setFile(path: string);
begin
  getFiletype(path);
end;

// ###############################################
procedure Tformmain.setfilter(query: tzquery);
var
  Key, Value: string;
  kvset     : string;

begin
  try
    if not ptabellen.ShowTabs then exit;
  except exit;
  end;
  if not assigned(filterlist) then exit;
  // if not query.op

  try
    query.Filtered := false;
    query.filter   := '';
    for Key in filterlist.Keys.ToArray do begin

      Value := filterlist.Items[Key];
      if Value = '' then continue;

      kvset                                  := Key + ' ' + Value;
      if query.filter = '' then query.filter := kvset
      else query.filter                      := query.filter + ' AND ' + kvset;
    end;

    query.Filtered := True;
    try query.Refresh;
    except

    end;
  except exit;
  end;
end;

// ###############################################
procedure Tformmain.setid(table: string);

var
  prefix  : string;
  eid     : Tedit;
  act     : Integer;
  number  : Integer;
  filetype: TLabel;
begin

  try
    if formdb = nil then formdb := Tformdb.Create(self);
    tmpdokid                    := formdb.getno(strtoint(kn), table, sb);
  except tmpdokid               := 0;

  end;

end;

// ###############################################
function Tformmain.setkundennummern(kdnn: TList<Integer>): Boolean;
begin
  Result            := false;
  try kundennummern := kdnn;
  except
    ;
  end;
  Result := True
end;

// ###############################################
procedure Tformmain.setliegenschaftsdaten(liegg, nn: string);
var
  query                : string;
  prefix               : string;
  lie                  : Tedit;
  dic                  : TDictionary<string, string>;
  database, wherestring: string;
  list                 : TStringList;
  abrdat               : TMaskEdit;
  abrechnungsende      : string;
  vermerkstring        : String;
  ortstring            : string;
  parent               : TPanel;
  vermheight           : Integer;
  notexisting          : Boolean;
  voll                 : Tframebase;
begin

  case ptabellen.activepageindex of
    0: voll := vollzwischen;
    1: voll := vollmont;
    2: voll := vollnutzer;
    3: voll := vollenergie;
    4: voll := vollrekl;
    5: voll := vollvertrag;
    6: voll := vollsonstiges;
    7: voll := vollauftrag;
    8: voll := vollangebot;
  else voll := vollzwischen;
  end;

  vermheight := 677;
  prefix     := getprefix(pagerspeicher.activepageindex);
  if prefix = 'e' then begin
    framen.eestrasse.Text      := '';
    framen.eeort.Text          := '';
    framen.eeplz.Text          := '';
    framen.flipadress.Expanded := True;
  end;
  // parent := findcomponent(prefix + 'pparent') as TPanel;
  parent              := voll.rightparent;
  pdatenrechts.parent := parent;
  pdatenrechts.Width  := 370;
  // pdatenrechts.Height := zgp.Height + 20;
  pdatenrechts.top := 0;
  pdatenrechts.Show;
  pliedaten.Visible := false;
  list              := TStringList.Create;
  list.Add('PLZ');
  list.Add('Ort');
  list.Add('strasse');
  list.Add('Databr');
  list.Add('vermerke');
  database    := 'neuescandokumente.DANLSUC';
  wherestring := ' WHERE lienr =  ' + liegg;
  dic         := formdb.get(database, wherestring, list);
  if dic.Count = 0 then begin
    pdatenrechts.Caption := 'Diese Liegenschaft existiert nicht';
    notexisting          := True;
    if prefix = 'e' then framen.cbpseudo.Checked := notexisting;

    exit;
  end;
  eplz.Caption := dic.Items['PLZ'];
  ortstring    := dic.Items['Ort'];
  // if Length(ortstring) > 13 then
  // ortstring := getmultilinestring(ortstring, 13);
  eort.Caption  := ortstring;
  vermerkstring := StringReplace(dic.Items['vermerke'], '' + #10, #13#10,
    [rfReplaceAll, rfignorecase]);
  vermerke.Text    := vermerkstring;
  estrasse.Caption := dic.Items['strasse'];

  lliegenschaftsdaten.Show;
  pliedaten.Show;

  if vermheight < (vermerke.Lines.Count + 5) * abs(vermerke.Font.Height) then
      vermerke.ScrollBars  := ssVertical
  else vermerke.ScrollBars := ssNone;
  if vermheight > ((vermerke.Lines.Count + 5) * abs(vermerke.Font.Height)) then
  begin
    // Bottom = originalhöhe + 10 - 74 - texthöhe
    vermerke.Margins.bottom := vermerke.parent.Height + 10 -
      ((vermerke.Lines.Count + 5) * abs(vermerke.Font.Height)) - vermerke.top;
  end;
  shapeverm.top    := vermerke.top - 1;
  shapeverm.Left   := vermerke.Left - 1;
  shapeverm.Height := vermerke.Height + 2;
  shapeverm.Width  := vermerke.Width + 2;
end;

// ###############################################
procedure Tformmain.setliegenschaftsdaten;
var
  query                : string;
  prefix               : string;
  dic                  : TDictionary<string, string>;
  database, wherestring: string;
  list                 : TStringList;
  abrdat               : TMaskEdit;
  abrechnungsende      : string;
  vermerkstring        : String;
  ortstring            : string;
  parent               : TPanel;
  vermheight           : Integer;
  notexisting          : Boolean;
  vermerkstringtmp     : string;

  frame: Tframebase;
begin
  frame      := getframe;
  vermheight := 677;
  prefix     := getprefix(pagerspeicher.activepageindex);
  if prefix = 'e' then begin
    framen.eestrasse.Text      := '';
    framen.eeort.Text          := '';
    framen.eeplz.Text          := '';
    framen.flipadress.Expanded := True;
  end;
  parent              := (frame.rightparent) as TPanel;
  pdatenrechts.parent := parent;
  pdatenrechts.Width  := 370;
  // pdatenrechts.Height := zgp.Height + 20;
  pdatenrechts.top := 0;
  pdatenrechts.Show;
  pliedaten.Visible := false;
  list              := TStringList.Create;
  list.Add('PLZ');
  list.Add('Ort');
  list.Add('strasse');
  list.Add('Databr');
  list.Add('vermerke');
  database    := 'DANLSUC';
  wherestring := ' WHERE lienr =  ' + frame.eliegenschaft.Text;
  dic         := formdb.get(database, wherestring, list);
  if dic.Count = 0 then begin
    pdatenrechts.Caption := 'Diese Liegenschaft existiert nicht';
    notexisting          := True;
    if prefix = 'e' then framen.cbpseudo.Checked := notexisting;

    exit;
  end;
  lname1.Caption := '';
  lname2.Caption := '';
  eplz.Caption   := dic.Items['PLZ'];
  ortstring      := dic.Items['Ort'];
  // if Length(ortstring) > 13 then
  // ortstring := getmultilinestring(ortstring, 13);
  eort.Caption     := ortstring;
  vermerkstringtmp := dic.Items['vermerke'];
  vermerkstring    := StringReplace(vermerkstringtmp, '' + #10, #13#10,
    [rfReplaceAll, rfignorecase]);
  vermerke.Text    := vermerkstring;
  estrasse.Caption := dic.Items['strasse'];
  // abrdat := frame.dtabrechnungsende;
  // abrdat := frame.eabrechnungsende;
  abrechnungsende := getdatemitpunkt(pagerspeicher.activepageindex,
    dic.Items['Databr']);
  // datemitpunkt := dic.Items['Databr'];
  // if abrechnungsende = '' then
  // DateTimeToString(abrechnungsende, 'dd.mm.yy', now);
  if not(abrechnungsende = '') then
      abrechnungsende := getfittingabrechnungsende(abrechnungsende);
  // abrdat.Text := abrechnungsende;
  frame.eabrechnungsende.Text := abrechnungsende;

  if prefix = 'e' then begin
    framen.cbpseudo.Checked    := notexisting;
    framen.eestrasse.Text      := estrasse.Caption;
    framen.eeort.Text          := eort.Caption;
    framen.eeplz.Text          := eplz.Caption;
    framen.flipadress.Expanded := True;

    if notexisting then framen.eestrasse.SetFocus;
  end;

  lliegenschaftsdaten.Show;
  pliedaten.Show;

  if vermheight < (vermerke.Lines.Count + 5) * abs(vermerke.Font.Height) then
      vermerke.ScrollBars  := ssVertical
  else vermerke.ScrollBars := ssNone;
  if vermheight > ((vermerke.Lines.Count + 5) * abs(vermerke.Font.Height)) then
  begin
    // Bottom = originalhöhe + 10 - 74 - texthöhe
    vermerke.Margins.bottom := vermerke.parent.Height + 10 -
      ((vermerke.Lines.Count + 5) * abs(vermerke.Font.Height)) - vermerke.top;
  end;
  shapeverm.top    := vermerke.top - 1;
  shapeverm.Left   := vermerke.Left - 1;
  shapeverm.Height := vermerke.Height + 2;
  shapeverm.Width  := vermerke.Width + 2;

end;

// ###############################################
procedure Tformmain.setnutzerdaten(dict: TDictionary<string, string>);
var
  name1, name2: string;
begin
  name1 := dict.Items['WO5'];
  name2 := dict.Items['WO6'];

  if (name1 = '') and (name2 = '') then begin
    lname1.Caption := 'ungültige Nutzernummer';
    exit;
  end;
  try lname1.Caption    := dict.Items['WO5'];
  except lname1.Caption := 'ungültige Nutzernummer';

  end;
  try lname2.Caption    := dict.Items['WO6'];
  except lname2.Caption := '';

  end;
end;

// ###############################################
procedure Tformmain.setzwitab;
// var tabwidth: integer;
begin
  // zwiname.Width := 400;
  // tabwidth := trunc((gridzwi.Width - zwiname.Width) / 6) -10;
  // zwidokid.Width := tabwidth;
  // zwilg.Width := tabwidth;
  // zwinutzernummer.Width := tabwidth;
  // zwiposteingang.Width := tabwidth;
  // zwiimage.Width := tabwidth + 20;
end;

// ###############################################
function Tformmain.showingid: Boolean;
begin
  Result := idanzeigen;
end;

// ###############################################
procedure Tformmain.showmontagen;
var
  query : string;
  list  : TStringList;
  helper: string;
begin
  try
    with dokcons do begin

      setallefiltereinstellungen;
      list := TStringList.Create;
      list.Add('*');

      formdb.querymon.sql.Clear;
      formdb.querymon.sql.Text := 'SELECT * FROM ' + view_mon +
        ' WHERE kundennummer = ' + kn;
      formdb.querymon.Open;
      setfilter(formdb.querymon);
    end;
    // SetGridColumnWidths(gridmon);
  except

    // on e: Exception do showmessage(e.Message);
  end;
end;

// ###############################################
procedure Tformmain.shownotizen(notiz: string);
begin
  // notizbox.Show;
  // notizbox.Memo1.Text := notiz;
end;

procedure Tformmain.showkostennutzerlisten;

var
  query: string;
  list : TStringList;
begin
  try
    setallefiltereinstellungen;
    framemonnut.esellg.Text := filterlg;
    with dokcons do begin
      list := TStringList.Create;
      list.Add('*');
      formdb.querynuliste.sql.Clear;
      formdb.querynuliste.sql.Text := 'SELECT *  FROM ' + view_kos +
        ' WHERE kundennummer = ' + quotedstr(kn);
      try formdb.querynuliste.Open;
      except
        on e: Exception do showmessage(e.Message);

      end;
      setfilter(formdb.querynuliste);
      // SetGridColumnWidths(gridnutzerliste);
      // filldb(formdb.dsnuliste, gridnutzerliste);
    end;
  except
    // on e: Exception do showmessage(e.Message);
  end;
end;

// ###############################################
procedure Tformmain.showreklamation;

var
  query: string;
  list : TStringList;
begin
  try
    setallefiltereinstellungen;
    framefilterreklamation.esellg.Text := filterlg;
    list                               := TStringList.Create;
    list.Add('*');

    formdb.doquery(formdb.queryrekl, dokcons.view_rekl, ' WHERE kundennummer = '
      + kn, list);
    setfilter(formdb.queryrekl);
    // SetGridColumnWidths(gridrek);
  except
    // on e: Exception do showmessage(e.Message);
  end;
end;

procedure Tformmain.showsonstiges;
var
  list: TStringList;
begin
  try

    setallefiltereinstellungen;
    list := TStringList.Create;
    list.Add('*');
    formdb.querysonstige.sql.Clear;
    formdb.querysonstige.sql.Text := 'SELECT * FROM ' + dokcons.view_sonst +
      ' WHERE kundennummer = ' + kdnr;
    formdb.querysonstige.Open;
    setfilter(formdb.querysonstige);
    // SetGridColumnWidths(gridsonstiges);
  except
    // on e: Exception do showmessage(e.Message);
  end;
end;

// ###############################################
procedure Tformmain.showupdate;
begin
  // pneueversionverfügbar.Visible := true;
end;

procedure Tformmain.showverträge;
var
  list: TStringList;
begin
  try
    setallefiltereinstellungen;
    if not assigned(formdb) then formdb := Tformdb.Create(self);
    list                                := TStringList.Create;
    list.Add('*');
    formdb.queryvert.sql.Clear;
    formdb.queryvert.sql.Text := 'SELECT * FROM ' + dokcons.view_ver +
      ' WHERE kundennummer = ' + kdnr;
    formdb.queryvert.Open;
    setfilter(formdb.queryvert);
    // SetGridColumnWidths(gridverträge);
  except
    // on e: Exception do showmessage(e.Message);
  end;
end;

// ####################################

procedure Tformmain.showauftragsanforderungen;
var
  list: TStringList;
begin
  try
    setallefiltereinstellungen;
    list := TStringList.Create;
    list.Add('*');
    filterauftragsanf.esellg.Text := filterlg;
    formdb.queryanforderungen.sql.Clear;
    formdb.queryanforderungen.sql.Text := 'SELECT * FROM ' +
      dokcons.view_anforderungen + ' WHERE kundennummer = ' + kdnr;
    formdb.queryanforderungen.Open;
    setfilter(formdb.queryanforderungen);
    // SetGridColumnWidths(gridanforderungen);
  except
    // on e: Exception do showmessage(e.Message);
  end; // filldb(formdb.dsanforderungen, gridanforderungen);
end;

// ###############################################
procedure Tformmain.showzwischenablesungen;
var
  list: TStringList;
begin
  // setallefiltereinstellungen;
  setallefiltereinstellungen;
  // except
  // on e: Exception do begin
  // showmessage(e.Message);
  // exit;
  // end;
  // end;
  if not assigned(formdb) then exit;
  // sleep(1000);
  // formdb := Tformdb.Create(self);
  list := TStringList.Create;
  list.Add('*');
  formdb.queryzwi.sql.Clear;
  formdb.queryzwi.sql.Text := 'SELECT * FROM ' + dokcons.view_zwi +
    ' WHERE kundennummer = ' + kdnr;
  try formdb.queryzwi.Open;
  except
    on e: Exception do begin
      showmessage('mysql problem: ' + e.Message);
      exit;

    end;
  end;
  // filldb(formdb.dszwi, gridzwi);
  setfilter(formdb.queryzwi);
  // SetGridColumnWidths(gridzwi);

end;

// ###############################################
procedure Tformmain.sortangebot(acol: Integer; ascbool: Boolean);

var
  QueryString: string;
  asc        : string;
begin
  QueryString := 'SELECT * FROM ' + dokcons.view_ang;
  // Query statement
  if gridangebote.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := 'ASC'
  else asc            := 'DESC';
  if acol = 0 then
      QueryString := QueryString + ' ORDER BY cast(' + gridangebote.Columns
      [acol].FieldName + ' as unsigned) ' + asc
  else QueryString := QueryString + ' ORDER BY ' + gridangebote.Columns[acol]
      .FieldName + ' ' + asc;
  formdb.queryangebote.sql.Clear;
  formdb.queryangebote.sql.Text := QueryString;
  formdb.queryangebote.Open;
end;

procedure Tformmain.sortauftragsanforderung(acol: Integer; ascbool: Boolean);

var
  QueryString: string;
  asc        : string;
begin
  QueryString := 'SELECT * FROM ' + dokcons.view_anforderungen;
  // Query statement
  if gridanforderungen.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := 'ASC'
  else asc            := 'DESC';
  if acol = 0 then
      QueryString := QueryString + ' ORDER BY cast(' + gridanforderungen.Columns
      [acol].FieldName + ' as unsigned) ' + asc
  else QueryString := QueryString + ' ORDER BY ' + gridanforderungen.Columns
      [acol].FieldName + ' ' + asc;
  formdb.queryanforderungen.sql.Clear;
  formdb.queryanforderungen.sql.Text := QueryString;
  formdb.queryanforderungen.Open;
end;

procedure Tformmain.sortenergie(acol: Integer; ascbool: Boolean);

var
  QueryString: string;
  asc        : string;
begin
  QueryString := 'SELECT * FROM ' + dokcons.view_en;
  // Query statement
  if gridenergie.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := 'ASC'
  else asc            := 'DESC';
  if acol = 0 then
      QueryString := QueryString + ' ORDER BY cast(' + gridenergie.Columns[acol]
      .FieldName + ' as unsigned) ' + asc
  else QueryString := QueryString + ' ORDER BY ' + gridenergie.Columns[acol]
      .FieldName + ' ' + asc;
  formdb.queryen.sql.Clear;
  formdb.queryen.sql.Text := QueryString;
  formdb.queryen.Open;
end;

// ###############################################
procedure Tformmain.sortmontagen(acol: Integer; ascbool: Boolean);
var
  QueryString: string;
  asc        : string;
begin
  QueryString := 'SELECT * FROM ' + dokcons.view_mon;
  // Query statement
  if gridmon.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := 'ASC'
  else asc            := 'DESC';
  if acol = 0 then
      QueryString := QueryString + ' ORDER BY cast(' + gridmon.Columns[acol]
      .FieldName + ' as unsigned) ' + asc
  else QueryString := QueryString + ' ORDER BY ' + gridmon.Columns[acol]
      .FieldName + ' ' + asc;

  formdb.querymon.sql.Clear;
  formdb.querymon.sql.Text := QueryString;
  formdb.querymon.Open;
end;

// ###############################################
function Tformmain.splitnumber: Boolean;
begin
  Result := dosplitnumber;
end;

// ###############################################
procedure Tformmain.sortnutzer(acol: Integer; ascbool: Boolean);

var
  QueryString: string;
  asc        : string;
  list       : TStringList;

begin
  QueryString := 'SELECT * FROM ' + dokcons.view_kos; // Query statement
  if gridnutzerliste.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := ' ASC'
  else asc            := ' DESC';
  if acol = 0 then
  // die ablagenummer muss numerisch sortiert sein..
  begin
    QueryString := QueryString + ' ORDER BY cast(' + gridnutzerliste.Columns
      [acol].FieldName + ' as unsigned) ' + asc;
  end
  else QueryString := QueryString + ' ORDER BY ' + gridnutzerliste.Columns[acol]
      .FieldName + asc;

  formdb.querynuliste.sql.Clear;
  formdb.querynuliste.sql.Text := QueryString;
  formdb.querynuliste.Open;

end;

// ###############################################
procedure Tformmain.sortrekl(acol: Integer; Ascending: Boolean);
var
  QueryString: string;
  asc        : string;
begin

  QueryString := 'SELECT * FROM ' + dokcons.view_rekl;
  // Query statement
  if gridrek.Columns[acol].FieldName = '' then exit;

  if Ascending then asc := 'ASC'
  else asc              := 'DESC';
  if acol = 0 then
      QueryString := QueryString + ' ORDER BY cast(' + gridrek.Columns[acol]
      .FieldName + ' as unsigned) ' + asc
  else QueryString := QueryString + ' ORDER BY ' + gridrek.Columns[acol]
      .FieldName + ' ' + asc;
  formdb.queryrekl.sql.Clear;
  formdb.queryrekl.sql.Text := QueryString;
  formdb.queryrekl.Open;
end;

procedure Tformmain.sortsonstiges(acol: Integer; ascbool: Boolean);
var
  QueryString: string;
  asc        : string;
begin

  QueryString := 'SELECT * FROM ' + dokcons.view_sonst; // Query statement
  if gridsonstiges.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := ' ASC'
  else asc            := ' DESC';
  if acol = 0 then
  // die ablagenummer muss numerisch sortiert sein..
  begin
    QueryString := QueryString + ' ORDER BY cast(' + gridsonstiges.Columns[acol]
      .FieldName + ' as unsigned) ' + asc;
  end
  else QueryString := QueryString + ' ORDER BY ' + gridsonstiges.Columns[acol]
      .FieldName + ' ' + asc;

  formdb.querysonstige.sql.Clear;
  formdb.querysonstige.sql.Text := QueryString;
  formdb.querysonstige.Open;
end;

procedure Tformmain.sortvertrag(acol: Integer; ascbool: Boolean);
var
  QueryString: string;
  asc        : string;
begin

  QueryString := 'SELECT * FROM ' + dokcons.view_ver; // Query statement
  if gridverträge.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := ' ASC'
  else asc            := ' DESC';
  if acol = 0 then
  // die ablagenummer muss numerisch sortiert sein..
  begin
    QueryString := QueryString + ' ORDER BY cast(' + gridverträge.Columns[acol]
      .FieldName + ' as unsigned) ' + asc;
  end
  else QueryString := QueryString + ' ORDER BY ' + gridverträge.Columns[acol]
      .FieldName + ' ' + asc;

  formdb.queryvert.sql.Clear;
  formdb.queryvert.sql.Text := QueryString;
  formdb.queryvert.Open;
end;

// ###############################################
// -----------------------------------------

procedure Tformmain.sortzwischen(acol: Integer; ascbool: Boolean);
var
  QueryString: string;
  asc        : string;
begin

  QueryString := 'SELECT * FROM ' + dokcons.view_zwi; // Query statement
  if gridzwi.Columns[acol].FieldName = '' then exit;

  if ascbool then asc := ' ASC'
  else asc            := ' DESC';
  if acol = 0 then
  // die ablagenummer muss numerisch sortiert sein..
  begin
    QueryString := QueryString + ' ORDER BY cast(' + gridzwi.Columns[acol]
      .FieldName + ' as unsigned) ' + asc;
  end
  else QueryString := QueryString + ' ORDER BY ' + gridzwi.Columns[acol]
      .FieldName + ' ' + asc;

  formdb.queryzwi.sql.Clear;
  formdb.queryzwi.sql.Text := QueryString;
  formdb.queryzwi.Open;
end;

// ------------------------------
procedure Tformmain.tabangebotsanfrageShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;
  formdb.queryangebote.Filtered := false;
  showangebote;
end;

procedure Tformmain.tabauftragsanforderungShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;
  formdb.queryanforderungen.Filtered := false;
  showauftragsanforderungen;
end;

procedure Tformmain.tabenergieausweisShow(Sender: TObject);
begin

  try
    if not assigned(formdb) then exit;

    formdb.queryen.Filtered := false;
    showenergieausweise;
  except
    ;
  end;
end;

procedure Tformmain.tabmontagenShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;

  try showmontagen;
  except
    // on e: Exception do showmessage(e.Message);

  end;
end;

// ------------------------------
procedure Tformmain.tabnutzerlistenShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;

  try showkostennutzerlisten;
  except
    on e: Exception do showmessage(e.Message);

  end;
end;

// --------------------------------------
procedure Tformmain.tabreklamationShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;

  try showreklamation;
  except
    ;
  end;
end;

procedure Tformmain.tabsonstigesShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;
  try showsonstiges;
  except
    on e: Exception do showmessage(e.Message);
  end;
end;

procedure Tformmain.tabvertragShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;
  try showverträge;
  except
    on e: Exception do begin
      showmessage(e.Message);
    end;
  end;
end;

// ------------------------------
procedure Tformmain.tabzwischenShow(Sender: TObject);
begin
  if not assigned(formdb) then exit;
  // if not assigned(ptabellen) then exit;

  showzwischenablesungen;
  // SetGridColumnWidths(gridzwi);
  // try showzwischenablesungen;
  // except
  // on e: Exception do begin
  // // showmessage(e.Message);
  // end;
  //
  // end;
end;
// ------------------------------

procedure Tformmain.hidecontrol(Sender: TObject);
var
  prefix  : string;
  lfile   : TLabel;
  filename: string;

begin
  // prefix := getprefix(pagerspeicher.activepageindex);
  // lfile := FindComponent(prefix + 'lfiletype') as TLabel;
  // filetypecaption := lfile.Caption;
end;

// ------------------------------

// ------------------------------
procedure Tformmain.TangebotsanfragenShow(Sender: TObject);
var
  number: string;
begin
  try
    if not assigned(formdb) then exit;

    frameangebot.eid.SetFocus;

    resetdate(frameangebot.dtposteingang);
    resetdate(frameangebot.eposteingang);
    frameangebot.lfiletype.Caption := filetypecaption;
    resetpanelfonts;
    panelfocus(pr);
    pr.Caption := 'Angebotsanfrage';
  Except outputdebugstring('kein focus');
  end;
  // updateid(Angebotsint);
end;

// ------------------------------
procedure Tformmain.tAuftragShow(Sender: TObject);
var
  list: TStringList;
  item: string;
begin
  try
    frameauf.eid.SetFocus;

    resetdate(frameauf.dtposteingang);
    resetdate(frameauf.eposteingang);
  except outputdebugstring('kein Focus');
  end;
  list := TStringList.Create;
  if FileExists(getauftragsdaten(dokcons.programmname)) then
      list.LoadFromFile(getauftragsdaten(dokcons.programmname));
  try
    frameauf.cbselectauftrag.Items.Clear;

    for item in list do begin
      frameauf.cbselectauftrag.Items.Add(item);
    end;
  except

  end;
end;

// ------------------------------
procedure Tformmain.TenergieausweisShow(Sender: TObject);
var
  number: string;
begin
  if not assigned(framen) then exit;

  try
    framen.flipadress.Expanded := false;
    resetdate(framen.dtposteingang);
    resetdate(framen.eposteingang);
    framen.lfiletype.Caption := filetypecaption;
    framen.eid.SetFocus;
    resetpanelfonts;
    panelfocus(pr);
    pr.Caption := 'Energieausweis';
  except
    ;
  end;
end;

// ###############################################
procedure Tformmain.Tframebasefilter1banwendenClick(Sender: TObject);
var
  query: string;
begin
  with framezwifilter do begin
    banwendenClick(Sender);

  end;
  with formdb do begin
    // doquery(querydokumente, zwischenablesung, query, getzwivalues);
    // querydokumente.Filter := '
  end;
end;

// ###############################################
procedure Tformmain.Tframebasefilter1esellgExit(Sender: TObject);
var
  filter: string;
begin
  try
    framezwifilter.esellgExit(Sender);

    filter := framezwifilter.getfilter;
    // setfilter(formdb.queryzwi, filter);

  except
    ;

  end;

end;

// ###############################################
procedure Tformmain.Timer1Timer(Sender: TObject);
begin
  lookforfile;
end;

// ###############################################
procedure Tformmain.Timer2Timer(Sender: TObject);
var
  update: Boolean;
begin
  try
    update                          := worker.checkUpdate;
    if update then piupdate.Visible := True;
    // pimage.hide;
  except

  end;
end;

// ###############################################
procedure Tformmain.Timer4Timer(Sender: TObject);
begin
  if idnotset then getallids;

end;

{ procedure Tformmain.Timer3Timer(Sender: TObject)
  Dies ist ein Test. kann ich damit wirlich Methoden beschreiben? }
procedure Tformmain.Timer3Timer(Sender: TObject);
var
  list     : TStringList;
  sendingel: string;
begin
  list := TStringList.Create;
  try
    ListFileDir(getCollectorfolder(dokcons.programmname), list);
    if (list.Count = 0) then exit;
    sendingel := worker.createrescue(list[0]);
    npc.Send(sendingel);
  except
    ;
  end;
end;

// ###############################################
procedure Tformmain.TKostenermittlungShow(Sender: TObject);
var
  number: string;
begin
  try
    framekosten.eid.SetFocus;
    resetdate(framekosten.dtposteingang);
    resetdate(framekosten.eposteingang);
    framekosten.lfiletype.Caption := filetypecaption;
    resetpanelfonts;
    panelfocus(pk);

  except
    ;
  end;

end;

// ###############################################
procedure Tformmain.TMontageShow(Sender: TObject);
var
  number: string;
begin
  try
    framemontage.eid.SetFocus;
    resetdate(framemontage.dtposteingang);
    resetdate(framemontage.eposteingang);
    framemontage.lfiletype.Caption := filetypecaption;
    resetpanelfonts;
    panelfocus(pm);
  except outputdebugstring('energieausweis kann focus nicht erhalten');
  end;
end;
// ----------------------------------

procedure Tformmain.treklamaionShow(Sender: TObject);
var
  number: string;
begin

  try
    framereklamation.eid.SetFocus;
    resetdate(framereklamation.dtposteingang);
    resetdate(framereklamation.eposteingang);
    framereklamation.lfiletype.Caption := filetypecaption;
    resetpanelfonts;
    panelfocus(pr);
    pr.Caption := 'Reklamation';
  except outputdebugstring('energieausweis kann focus nicht erhalten');
  end;
  // updateid(ReklamationINT);
end;

// -------------------------
procedure Tformmain.tsonstigesShow(Sender: TObject);
var
  number: string;
begin
  try
    resetpanelfonts;
    panelfocus(pr);
    pr.Caption := 'Sonstiges';
    resetdate(framesonstiges.dtposteingang);
    resetdate(framesonstiges.eposteingang);
    framesonstiges.lfiletype.Caption := filetypecaption;
    framesonstiges.eid.SetFocus;
  except
    ;
  end;
  // updateid(SonstigesInt);
end;

// ---------------------------

procedure Tformmain.TVerträgeShow(Sender: TObject);
var
  number: string;
begin
  try
    // resetdate(framevertrag.dtposteingang);
    resetdate(framevert.eposteingang);
    framevert.lfiletype.Caption := filetypecaption;
    framevert.eid.SetFocus;
    resetpanelfonts;
    panelfocus(pr);
    pr.Caption := 'Verträge';
  except
    ;
  end;
  // updateid(Vertragsint);
end;

// ###############################################
procedure Tformmain.TZwischenablesungPaint(Sender: TObject);
begin
  if not initialized then begin
    Application.ProcessMessages;
    // thready := tdbthread.Create(false);
    initialized := True;
  end;
end;

// ###############################################
procedure Tformmain.TZwischenablesungShow(Sender: TObject);
var
  number: string;
begin
  with framezwi do begin
    resetdate(dtposteingang);
    resetdate(eposteingang);
    lfiletype.Caption := filetypecaption;
    resetpanelfonts;
    panelfocus(pz);
    try eid.SetFocus;
    except

    end;
  end;
end;

// ###############################################
procedure Tformmain.updateid(Tag: Integer);
var
  prefix      : string;
  eeid        : tfedit;
  selectedFile: string;
  lists       : array [0 .. 1] of TListBox;
  helper      : Integer;
begin
  with dokcons do begin
    lists[0]     := lbeingang;
    lists[1]     := lbausgang;
    prefix       := getprefix(Tag);
    selectedFile := getselected(lists);

    eeid := FindComponent(prefix + 'eid') as tfedit;
    if AnsiStartsStr('gescannt', selectedFile) then begin
      // getallids;
      case Tag of
        ZwischenablsgINT: helper  := zid;
        MontageINT: helper        := mid;
        SonstigesInt: Helper      := sid;
        ReklamationINT: Helper    := rid;
        EnergieausweisINT: helper := eid;
        Nutzerint: helper         := nid;
        Vertragsint: helper       := vid;
        Auftragsint: helper       := aid;
        Angebotsint: helper       := naid;
        KostenINT: helper         := kid;
      end;
      eeid.Text := Format('%.4d', [helper]);
      exit;
    end;
    eeid.Text := '---';
  end;

end;

procedure Tformmain.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  case Button of
    btNext: NxGlyphButton2Click(NxGlyphButton2);
    btPrev: NxGlyphButton1Click(NxGlyphButton1);
  end;
end;

// ###############################################
procedure Tformmain.vollzwischenbsaveClick(Sender: TObject);
var
  Dateiname: string;
  dbgrid   : TNextDBGrid;
begin
  case pvollbilder.activepageindex of
    0: dbgrid := gridzwi;
    1: dbgrid := gridmon;
    4: dbgrid := gridnutzerliste;
    2: dbgrid := gridenergie;
    3: dbgrid := gridrek;
    5: dbgrid := gridverträge;
    6: dbgrid := gridsonstiges;
    7: dbgrid := gridanforderungen;
    8: dbgrid := gridangebote;

  end;
  Dateiname := pchar(dbgrid.GetColumnByFieldName('Dateiname').field.AsString);
  showDocument(Dateiname);
end;

// ###############################################
procedure Tformmain.vorclick(Sender: TObject);
var
  dbgrid: TNextDBGrid;
  nor   : Integer;
begin
  inc(selectedRow);
  dbgrid := getdb;
  nor    := dbgrid.RowCount;
  try

    dbgrid.selectedRow := selectedRow;
    if selectedRow >= nor then exit;
    fillvollbild(dbgrid, selectedRow);
  finally
    // dbgrid.Free;
  end;

end;

// ###############################################
procedure Tformmain.wertebuttonClick(Sender: TObject);
var
  i, j                 : Integer;
  query                : string;
  table, x1, x2, x3, x4: string;
  wheres               : string;
  fed                  : tfedit;
begin
  // flipwerte.Expanded := false;
  /// /  if combotyp.ItemIndex = -1 then exit;
  //
  /// /  table := AnsiLowerCase(combotyp.Items[combotyp.ItemIndex]);
  //
  // if not(esellg.Text = '') then
  // wheres := ' Liegenschaft ' + csellg.Text + ' ' + esellg.Text;
  // if not(eselnn.Text = '') then
  // wheres := wheres + ' AND nutzernummer ' + cselnn.Text + ' ' + eselnn.Text;
  // if not(eselae.Text = '') then
  // wheres := wheres + ' AND abrechnungsende ' + cselae.Text + ' ' +
  // eselae.Text;
  // if not(eselsb.Text = '') then
  // wheres := wheres + ' AND ' + cselsb.Text + ' ' + eselsb.Text;
  // if not(eselpe.Text = '') then
  // wheres := wheres + ' ANd ' + cselpe.Text + ' ' + eselpe.Text + ';';
  // query := 'SELECT *  FROM ' + table + ' WHERE ' + wheres;
  // // query := 'SELECT * FROM scandokumente.zwischenablesung WHERE Liegenschaft = 1000001 ';
  // formdb.querydokumente.SQL.clear;
  // formdb.querydokumente.SQL.add(query);
  // formdb.querydokumente.Open;
  // gridzwi.DataSource := formdb.dsdokumente;
end;

// ###############################################
procedure Tformmain.WMGetDlgCode(var msg: TWMGetDlgCode);
var
  prefix: string;
  Button: TNxButton;
begin
  prefix := getprefix(pagerspeicher.activepageindex);
  Button := FindComponent(prefix + 'save') as TNxButton;
  if ActiveControl = Button then exit;

end;

end.
