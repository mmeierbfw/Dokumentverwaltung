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
    procedure Button1Click(Sender: TObject);
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

end.
