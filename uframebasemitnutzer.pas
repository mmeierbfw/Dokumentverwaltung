unit uframebasemitnutzer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uframebase, NxEdit, NxCollection, Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask,
  umaskedit, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tframebasenutzer = class(Tframebase)
    enutzernummer: TfEdit;
    Label5: TLabel;
    upd: TUpDown;
    procedure enutzerexit(Sender: TObject);
    procedure updClick(Sender: TObject; Button: TUDBtnType);
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
var
  nn: integer;
begin
if (Sender as tfedit).text = '' then exit;

  try
    nn                      := strtoint((Sender as TfEdit).Text);
    (Sender as TfEdit).Text := Format('%.3d', [nn]);
  except
    exit  ;

  end;
  upd.visible := true;
end;

procedure Tframebasenutzer.updClick(Sender: TObject; Button: TUDBtnType);
var
  nunu  : string;
  helper: integer;
begin
  inherited;
  nunu := enutzernummer.Text;
  if not(length(nunu) = 3) then exit;
  helper := strtoint(nunu);
  case Button of
    btNext: inc(helper);
    btPrev: dec(helper);
  end;
  enutzernummer.Text := Format('%.3d', [helper]);
end;

end.
