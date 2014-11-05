unit uframeauftrag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframebasemitnutzer, NxEdit,
  NxCollection, Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls;

type
  Tframeauftrag = class(Tframebasenutzer)
    Label1: TLabel;
    cbselectauftrag: TNxComboBox;
    NxButton1: TNxButton;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frameauftrag: Tframeauftrag;

implementation

{$R *.dfm}

end.
