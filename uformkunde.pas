unit uformkunde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, fEdit, Vcl.ExtCtrls, fComboBox;

type
  Tformkunde = class(TForm)
    Panel1: TPanel;
    lname: TLabel;
    Button1: TButton;
    Button2: TButton;
    fkundennrn: TfComboBox;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formkunde: Tformkunde;

implementation

uses umain;
{$R *.dfm}

procedure Tformkunde.Button1Click(Sender: TObject);
begin
  formmain.saveSettings(formmain.getpasswort, fkundennrn.Text,
    formmain.getsachbearbeiter, formmain.getscanverzeichnis,
    formmain.getpostausgangsverzeichnis, formmain.showingid,
    formmain.splitnumber);
  self.Hide;
end;

procedure Tformkunde.Button2Click(Sender: TObject);
begin
  self.Hide;
end;

procedure Tformkunde.FormShow(Sender: TObject);
var
  kdns: tstringlist;
begin
  kdns                       := formmain.getkundennrnAsString;
  formkunde.fkundennrn.Items := kdns;
  Shape1.Top                 := Panel1.Top + 2;
  Shape1.Left                := Panel1.Left + 2;
  Shape1.Width               := Panel1.Width;
  Shape1.Height              := Panel1.Height;
end;

end.
