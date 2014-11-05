unit uadresse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, fEdit;

type
  Tformpseudo = class(TForm)
    pouter: TPanel;
    Panel1: TPanel;
    Label44: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    eeid: TfEdit;
    fEdit1: TfEdit;
    fEdit2: TfEdit;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formpseudo: Tformpseudo;

implementation

{$R *.dfm}

end.
