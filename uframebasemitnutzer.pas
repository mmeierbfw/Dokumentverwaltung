unit uframebasemitnutzer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebase, NxEdit, NxCollection,
  Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tframebasenutzer = class(Tframebase)
    enutzernummer: TfEdit;
    Label5: TLabel;
    procedure enutzerexit(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  framebasenutzer: Tframebasenutzer;

implementation

{$R *.dfm}

procedure Tframebasenutzer.enutzerexit(Sender: TObject);
var nn: integer;
begin
  try
  nn := strtoint((sender as tfedit).Text);
  (Sender as tfedit).text := Format('%.3d',[nn]);
  except;

  end;
end;

end.
