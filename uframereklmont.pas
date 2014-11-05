unit uframereklmont;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebasemitnutzer, NxCollection, Vcl.StdCtrls,
  fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls, uframebase;

type
  Tframereklmont = class(Tframebasenutzer)
    Label7: TLabel;
    eauftragsnummer: TfEdit;
    dtmontage: tfmaskedit;
    Label34: TLabel;
    Label26: TLabel;
    rgerledigt: TRadioGroup;
    emontage: TfEdit;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  framereklmont: Tframereklmont;

implementation

{$R *.dfm}

end.
