unit usachkunde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, fEdit;

type
  Tformsachkunde = class(TForm)
    lname: TLabel;
    Panel1: TPanel;
    eedit: TfEdit;
    Button1: TButton;
    Button2: TButton;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure eeditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formsachkunde: Tformsachkunde;

implementation

{$R *.dfm}

uses umain;

procedure Tformsachkunde.Button1Click(Sender: TObject);
begin
  formmain.saveSettings(formmain.getpasswort, formmain.getkundennummer,
    eedit.Text, formmain.getscanverzeichnis,
    formmain.getpostausgangsverzeichnis, formmain.showingid,
    formmain.splitnumber);
  self.Hide;
end;

procedure Tformsachkunde.Button2Click(Sender: TObject);
begin
  self.Hide;
end;

procedure Tformsachkunde.eeditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Button1Click(Sender);

end;

procedure Tformsachkunde.FormShow(Sender: TObject);
begin
  eedit.SetFocus;
  Shape1.Top    := Panel1.Top + 2;
  Shape1.Left   := Panel1.Left + 2;
  Shape1.Width  := Panel1.Width;
  Shape1.Height := Panel1.Height;
end;

end.
