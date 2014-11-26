unit uauftragsarten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxThemesSupport, Vcl.StdCtrls, fEdit,
  NxCollection, uutils, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tformauftragsart = class(TForm)
    NxColorScheme1: TNxColorScheme;
    ListBox1: TListBox;
    fEdit1: TfEdit;
    bnxspeichern: TNxButton;
    bnxabbrechen: TNxButton;
    NxButton3: TNxButton;
    Image1: TImage;
    Panel1: TPanel;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure bnxspeichernClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure loadlist;
    procedure bnxabbrechenClick(Sender: TObject);
    procedure NxGlyphButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formauftragsart: Tformauftragsart;

implementation

{$R *.dfm}

uses umain, uframeauftrag;

procedure Tformauftragsart.bnxabbrechenClick(Sender: TObject);
begin
  self.Hide;
end;

procedure Tformauftragsart.bnxspeichernClick(Sender: TObject);
var
  list: Tstringlist;
  item: string;
  i, size: integer;
begin
  list := Tstringlist.Create;
  size := ListBox1.Count;
  formmain.frameauf.cbselectauftrag.Items.Clear;
  formmain.frameauf.cbselectauftrag.ClearSelection;

  for i := 0 to size - 1 do
  begin
    item := ListBox1.Items.Strings[i];
    formmain.frameauf.cbselectauftrag.Items.Add(item);
    list.Add(item);
  end;
  DeleteFile(getauftragsdaten('Scannerprogramm'));
  list.SaveToFile(getauftragsdaten('Scannerprogramm'));
  formmain.frameauf.cbselectauftrag.Update;
  self.Hide;
end;

procedure Tformauftragsart.fEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
    NxButton3Click(Sender);
end;

procedure Tformauftragsart.fEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    NxButton3Click(Sender);
end;

procedure Tformauftragsart.FormCreate(Sender: TObject);
var
  width: integer;
begin
  width := trunc((formauftragsart.width - 20) / 2);
  bnxspeichern.width := width;
  bnxabbrechen.width := width;
  bnxabbrechen.Left := width;
end;

procedure Tformauftragsart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    NxButton3Click(Sender);
end;

procedure Tformauftragsart.FormShow(Sender: TObject);
var
  list: Tstringlist;
  item: string;
begin
  ListBox1.Clear;
  ListBox1.ClearSelection;
  loadlist;
  fEdit1.SetFocus;
end;

procedure Tformauftragsart.Image1Click(Sender: TObject);
begin
  NxGlyphButton1Click(sender);
end;

procedure Tformauftragsart.loadlist;
var
  list: Tstringlist;
  item: string;
begin
  list := Tstringlist.Create;
  if FileExists(getauftragsdaten('Scannerprogramm')) then
  begin
    list.LoadFromFile(getauftragsdaten('Scannerprogramm'));
    for item in list do
    begin
      ListBox1.Items.Add(item);
    end;
  end;
end;

  procedure Tformauftragsart.NxButton3Click(Sender: TObject);
  var
    neuertyp: string;
    item: string;
    size, i: integer;
    contains: boolean;
  begin
    contains := false;
    neuertyp := fEdit1.Text;
    size := ListBox1.Count;
    for i := 0 to size - 1 do
    begin
      contains := false;
      item := ListBox1.Items.Strings[i];
      contains := item = neuertyp;
    end;
    if not contains then
      ListBox1.Items.Add(fEdit1.Text);
  end;

procedure Tformauftragsart.NxGlyphButton1Click(Sender: TObject);
var selected: string;
  list: TStringlist;
  item, size: integer;
  i: Integer;
begin
try
  ListBox1.DeleteSelected;
except
  exit;
end;
  list := TStringList.Create;
  size := ListBox1.Count;
  for i := 0 to size - 1 do begin
    list.Add(ListBox1.Items.Strings[i]);
  end;
  if FileExists(getauftragsdaten('Scannerprogramm')) then
    DeleteFile(getauftragsdaten('Scannerprogramm'));
  list.SaveToFile(getauftragsdaten('Scannerprogramm'));







end;

end.
