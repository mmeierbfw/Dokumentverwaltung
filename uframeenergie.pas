unit uframeenergie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uframebase, NxCollection, Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit,
  Vcl.ExtCtrls, NxEdit, Vcl.ComCtrls;

type
  Tframeenergie = class(Tframebase)
    cbpseudo: TNxCheckBox;
    flipadress: TNxFlipPanel;
    eestrasse: TfEdit;
    eeort: TfEdit;
    eeplz: TfEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure cbpseudoClick(Sender: TObject);
    procedure eeortExit(Sender: TObject);
    procedure cbpseudoChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frameenergie: Tframeenergie;

implementation

{$R *.dfm}

procedure Tframeenergie.cbpseudoChange(Sender: TObject);
begin
  inherited;
  flipadress.Expanded := cbpseudo.Checked;
  eestrasse.SetFocus;
end;

procedure Tframeenergie.cbpseudoClick(Sender: TObject);
begin
  inherited;
  flipadress.Expanded := cbpseudo.Checked;
  eestrasse.SetFocus;
end;

procedure Tframeenergie.eeortExit(Sender: TObject);
begin
  inherited;
//  flipadress.Expanded := false;
eabrechnungsende.SetFocus;
end;

end.
