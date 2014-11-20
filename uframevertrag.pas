unit uframevertrag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebasemitnutzer, NxCollection,
  Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls, fComboBox;

type
  Tframebasenutzer1 = class(Tframebasenutzer)
    Label1: TLabel;
    cbvertrag: TfComboBox;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  framebasenutzer1: Tframebasenutzer1;

implementation

{$R *.dfm}

end.
