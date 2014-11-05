unit uframezwischen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebasemitnutzer, NxCollection,
  Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls;

type
  Tframezwischen = class(Tframebasenutzer)
    Label2: TLabel;
    dtauszug: tfmaskedit;
    dtablesedatum: tfmaskedit;
    Label3: TLabel;
    Label4: TLabel;
    enutzername: TfEdit;
    eauszug: TfEdit;
    eablesedatum: TfEdit;
    procedure enutzernameKeyPress(Sender: TObject; var Key: Char);
  private
    nutzername: string;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  framezwischen: Tframezwischen;

implementation

{$R *.dfm}

procedure Tframezwischen.enutzernameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  nutzername := nutzername + key;
  enutzername.Hint := nutzername;

end;

end.
