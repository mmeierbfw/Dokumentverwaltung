unit uframebase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  NxCollection, Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls,
  RegularExpressions, uutils;

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
    procedure eliegenschaftExit(Sender: TObject);
    procedure fEdit1Exit(Sender: TObject);
    procedure dtposteingangExit(Sender: TObject);
    procedure dateexit(Sender: TObject);
    procedure DATEPRESS(Sender: TObject; var Key: Char);
    procedure NxButton2Click(Sender: TObject);
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
  kn := formmain.getkundennummer;
  if (length(eliegenschaft.text) = 0) then exit;
  if length(eliegenschaft.text) < 6 then
      eliegenschaft.text := kn + Format('%.5d', [strtoint(eliegenschaft.text)]);
end;

procedure Tframebase.DATEPRESS(Sender: TObject; var Key: Char);
begin
  if not numeric(key) then key := #0;

end;

procedure Tframebase.dateexit(Sender: TObject);
var
  datestring: string;
  res: string;
begin
  datestring := (Sender as TfEdit).text;
  if datestring = '' then exit;
  if (Pos('.', datestring, 1) > 0) then exit;
  if (pos('/', datestring, 1) > 0)  then exit;

  if (Pos('-', datestring, 1) > 0) then exit;
  if (length(datestring) <> 6) then begin
    (Sender as TfEdit).Clear;

    exit;
  end;

    res := copy(datestring, 1, 2) + '.' + copy(datestring, 3, 2) + '.' +
    copy(datestring, 5, 2);
  (Sender as TfEdit).text := res;


end;

procedure Tframebase.fEdit1Exit(Sender: TObject);
var
  datestr: string;
  tag, monat, jahr: string;
  len: Integer;
begin

  datestr := (Sender as TfEdit).text;
  len := length(datestr);
  if not((len = 8) or (len = 10)) then begin
    (Sender as TfEdit).Color := clred;
    (Sender as TfEdit).setfocus;
    exit;
  end;

  tag := copy(datestr, 1, 2);
  monat := copy(datestr, 4, 2);
  try jahr := copy(datestr, 7, 4);
  except jahr := copy(datestr, 7, 2);

  end;

end;

procedure Tframebase.NxButton2Click(Sender: TObject);
var datestr: string;
begin
  datestr :=  DateToStr(now);
  datestr := formatedatefrom4jto2j(datestr);
  eposteingang.Text := datestr;
end;

end.
