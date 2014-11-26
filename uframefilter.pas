unit uframefilter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NxCollection, Vcl.StdCtrls, fComboBox, fEdit, System.Generics.collections,
  udbconnector, strutils, uutils, Vcl.ComCtrls;

type
  Tframebasefilter = class(TFrame)
    flipwerte: TNxFlipPanel;
    lliegenschaft: TLabel;
    labrechnungsende: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    esellg: TfEdit;
    eselsb: TfEdit;
    eselae: TfEdit;
    csellg: TfComboBox;
    eseldi: TfEdit;
    cselsb: TfComboBox;
    cselpe: TfComboBox;
    cselae: TfComboBox;
    cseldi: TfComboBox;
    banwenden: TNxButton;
    blöschen: TNxButton;
    eselpe: TfEdit;
    procedure banwendenClick(Sender: TObject);
    procedure esellgExit(Sender: TObject);
    procedure eselsbExit(Sender: TObject);
    procedure eselpeExit(Sender: TObject);
    procedure blöschenClick(Sender: TObject);
    procedure eselaeExit(Sender: TObject);
    procedure eseldiExit(Sender: TObject);
  private
    filtersb: string;
    filterlg: string;
    filterpe: string;
    filterae: string;
    filterdi: string;
    function setfilter(var res: string; key: string; value: string;
      combo: string): string;
    { Private-Deklarationen }
  public
    function getfilter: string;
    { Public-Deklarationen }
  end;

var
  filterstring: string;

var
  typedic: TDictionary<string, string>;

implementation

{$R *.dfm}

procedure Tframebasefilter.banwendenClick(Sender: TObject);
var
  help   : string;
  command: string;
begin
  filterstring := '';
  help         := esellg.Text;
  command      := csellg.Text;
  if not(help = '') then begin
    filterstring                            := 'liegenschaft';
    if not(command = '~') then filterstring := filterstring + command + help
    else filterstring := filterstring + ' LIKE "%' + help + '%"';

  end;

end;

procedure Tframebasefilter.blöschenClick(Sender: TObject);
begin
  filterlg := '';
  filtersb := '';
  filterpe := '';
  filterdi := '';
  filterae := '';

  esellg.Text := '';
  eselsb.Text := '';
  eselpe.Text := '';
  eseldi.Text := '';
  eselae.Text := '';
end;

procedure Tframebasefilter.eselaeExit(Sender: TObject);
var
  date: string;
begin
  if eselae.Text = '' then exit;

  date := floattostr(strtodatetime(eselae.Text));
  if not(date = '00.00.00') then

      setfilter(filterae, 'abrechnungsende', date, cselae.Text)
end;

procedure Tframebasefilter.esellgExit(Sender: TObject);
begin
  setfilter(filterlg, 'liegenschaft', esellg.Text, csellg.Text);
end;

procedure Tframebasefilter.eselpeExit(Sender: TObject);
var
  date: string;
begin
  if eselpe.Text = '' then exit;

  date := floattostr(strtodatetime(eselpe.Text));

  // if not(date = '00.00.00') then
  setfilter(filterpe, 'posteingang', date, cselpe.Text);
end;

procedure Tframebasefilter.eselsbExit(Sender: TObject);
begin
  setfilter(filtersb, 'sachbearbeiter', eselsb.Text, cselsb.Text);
end;

procedure Tframebasefilter.eseldiExit(Sender: TObject);
begin
  setfilter(filterdi, 'ablagenr', eseldi.Text, cseldi.Text);
end;

function Tframebasefilter.getfilter: string;
begin
  Result := '';
  if not(AnsiEndsText('LIKE', Trim(filtersb)) or (filtersb = '')) then
      Result := filtersb;
  if not(AnsiEndsText('LIKE', Trim(filterlg)) or (filterlg = '')) then begin
    if not(Result = '') then Result := Result + ' AND ' + filterlg
    else Result                     := filterlg;
  end;
  if not(AnsiEndsText('LIKE', Trim(filterpe)) or (filterpe = '')) then begin
    if not(Result = '') then Result := Result + ' AND ' + filterpe
    else Result                     := filterpe;
  end;
  if not(AnsiEndsText('LIKE', Trim(filterdi)) or (filterdi = '')) then begin
    if not(Result = '') then Result := Result + ' AND ' + filterdi
    else Result                     := filterdi;
  end;
  if not(AnsiEndsText('LIKE', Trim(filterae)) or (filterae = '')) then begin
    if not(Result = '') then Result := Result + ' AND ' + filterdi
    else Result                     := filterae;
  end;
end;

function Tframebasefilter.setfilter(var res: string; key: string; value: string;
  combo: string): string;
var
  val: string;
begin
  val := combo;
  // if key = 'ablagenr' then begin
  // res := 'cast( ' + key + ' as unsigned) ' + val + ' ' + value; exit;
  // end;
  // if val = '=' then val := ' LIKE ';
  res := key + val + value;
end;

end.
