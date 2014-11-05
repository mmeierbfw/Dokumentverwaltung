unit uanrufer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TAnruferdaten = class(TForm)
    panruferdaten: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    etelefonnummer: TEdit;
    Button1: TButton;
    Button2: TButton;
    eanrufer: TEdit;
    Memo1: TMemo;
    procedure etelefonnummerKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Anruferdaten: TAnruferdaten;

implementation

{$R *.dfm}

uses umain;

procedure TAnruferdaten.Button1Click(Sender: TObject);
begin
  outputdebugstring('ok');
  formmain.saveanrufer(eanrufer.Text, etelefonnummer.Text);
  self.Close;
end;

procedure TAnruferdaten.Button2Click(Sender: TObject);
begin
  eanrufer.Text := '';
  etelefonnummer.Text := '';
  self.Close;
end;

procedure TAnruferdaten.etelefonnummerKeyPress(Sender: TObject; var Key: Char);
var
  name: string;
begin
  name := eanrufer.Text + Key;
  eanrufer.Hint := name;
end;

procedure TAnruferdaten.FormShow(Sender: TObject);
begin
  eanrufer.SetFocus;
end;

end.
