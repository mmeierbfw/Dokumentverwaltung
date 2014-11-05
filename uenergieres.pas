unit uenergieres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebase, NxCollection, Vcl.StdCtrls,
  fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls;

type
  Tframebase1 = class(Tframebase)
    cbpseudo: TCheckBox;
    NxFlipPanel1: TNxFlipPanel;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  framebase1: Tframebase1;

implementation

{$R *.dfm}

end.
