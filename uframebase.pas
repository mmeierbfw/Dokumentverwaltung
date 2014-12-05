unit uframebase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NxCollection, Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls,
  RegularExpressions, uutils, uconstants, Vcl.ComCtrls;

type
  Tframebase = class(TFrame)
    gridpanel: TGridPanel;
    Panel5: TPanel;
    lfiletype: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label29: TLabel;
    dtabrechnungsende: tfmaskedit;
    dtposteingang: tfmaskedit;
    eid: TfEdit;
    eliegenschaft: TfEdit;
    menotizen: TfMemo;
    bsave: TNxButton;
    rightparent: TPanel;
    eposteingang: TfEdit;
    eabrechnungsende: TfEdit;
    NxButton2: TNxButton;
    pinfo: TPanel;
    labelinfo: TLabel;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    bbearbeiten: TButton;
    bbaendspeichern: TButton;
    procedure eliegenschaftExit(Sender: TObject);
    procedure fEdit1Exit(Sender: TObject);
    procedure dtposteingangExit(Sender: TObject);
    procedure dateexit(Sender: TObject);
    procedure DATEPRESS(Sender: TObject; var Key: Char);
    procedure NxButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure abrupdown(Sender: TObject; Button: TUDBtnType);
    procedure liegenschaftupdown(Sender: TObject; Button: TUDBtnType);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

uses umain;
{$R *.dfm}

procedure Tframebase.dtposteingangExit(Sender: TObject);
var
  datestr: string;
begin
  datestr := (Sender as tfmaskedit).text;
  if datestr = '' then exit;

end;

procedure Tframebase.eliegenschaftExit(Sender: TObject);
var
  kn: string;
begin
  with formmain.dokcons do begin
    kn := formmain.getkundennummer;
    if kn = '' then begin
      pinfo.Show;
      labelinfo.Caption := keinekdn;
      pinfo.Top         := (Sender as TfEdit).Top;
      exit;
    end;
    pinfo.Hide;
    if (length(eliegenschaft.text) = 0) then exit;
    if length(eliegenschaft.text) < 6 then
        eliegenschaft.text := kn + Format('%.5d',
        [strtoint(eliegenschaft.text)]);
  end;
end;

procedure Tframebase.DATEPRESS(Sender: TObject; var Key: Char);
begin
  if not numeric(Key) then Key := #0;

end;

procedure Tframebase.Button1Click(Sender: TObject);
begin
  pinfo.Hide;
end;

procedure Tframebase.dateexit(Sender: TObject);
var
  datestring: string;
  res       : string;
begin
  with formmain.dokcons do begin
    datestring := (Sender as TfEdit).text;
    if datestring = '' then exit;
    if (Pos('.', datestring, 1) > 0) then exit;
    if (Pos('/', datestring, 1) > 0) then exit;

    if (Pos('-', datestring, 1) > 0) then exit;
    if (length(datestring) <> 6) then begin
      (Sender as TfEdit).Clear;
      labelinfo.Caption := falschesFormat;
      pinfo.Show;
      pinfo.Top := (Sender as TfEdit).Top;
      (Sender as TfEdit).SetFocus;
      exit;
    end;

    pinfo.Hide;
    res := copy(datestring, 1, 2) + '.' + copy(datestring, 3, 2) + '.' +
      copy(datestring, 5, 2);
    (Sender as TfEdit).text := res;

    if not isvalidDate((Sender as TfEdit).text) then begin
      // (Sender as TfEdit).Clear;
      pinfo.Show;
      pinfo.Top         := (Sender as TfEdit).Top;
      labelinfo.Caption := ungueltigDatum;
      (Sender as TfEdit).SetFocus;
    end;

  end;
end;

procedure Tframebase.fEdit1Exit(Sender: TObject);
var
  datestr         : string;
  tag, monat, jahr: string;
  len             : Integer;
begin

  datestr := (Sender as TfEdit).text;
  len     := length(datestr);
  if not((len = 8) or (len = 10)) then begin
    (Sender as TfEdit).Color := clred;
    (Sender as TfEdit).SetFocus;
    exit;
  end;

  tag         := copy(datestr, 1, 2);
  monat       := copy(datestr, 4, 2);
  try jahr    := copy(datestr, 7, 4);
  except jahr := copy(datestr, 7, 2);

  end;

end;

procedure Tframebase.liegenschaftupdown(Sender: TObject; Button: TUDBtnType);
var
  liegenschaftInt: Integer;
begin
  if eliegenschaft.text = '' then exit;

  TRY liegenschaftInt := strtoint(eliegenschaft.text);
  except exit;
  END;
  case Button of
    btNext: inc(liegenschaftInt);
    btPrev: dec(liegenschaftInt);
  end;
  eliegenschaft.text := inttostr(liegenschaftInt);
end;

procedure Tframebase.NxButton2Click(Sender: TObject);
var
  datestr: string;
begin
  datestr           := DateToStr(now);
  datestr           := formatdatefrom4jto2j(datestr);
  eposteingang.text := datestr;
end;

procedure Tframebase.abrupdown(Sender: TObject; Button: TUDBtnType);
var
  abrdat          : TDate;
  jahr, monat, tag: word;
begin
  try abrdat := StrToDate(eabrechnungsende.text);
  except exit;
  end;
  DecodeDate(abrdat, jahr, monat, tag);
  case Button of
    btNext: begin
        inc(jahr);
      end;
    btPrev: begin
        jahr := jahr - 1;
      end;
  end;
  abrdat                := EncodeDate(jahr, monat, tag);
  eabrechnungsende.text := formatdatefrom4jto2j(DateToStr(abrdat));
end;

end.
