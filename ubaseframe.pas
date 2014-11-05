unit ubaseframe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxCollection,
  Vcl.StdCtrls, fMemo, fEdit, Vcl.Mask, umaskedit, Vcl.ExtCtrls;

type
  Tframebase = class(TFrame)
    kgp: TGridPanel;
    Panel5: TPanel;
    klfiletype: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label29: TLabel;
    kdtabrechnungsende: tfmaskedit;
    kdtposteingang: tfmaskedit;
    keid: TfEdit;
    keliegenschaft: TfEdit;
    kmenotizen: TfMemo;
    kbsave: TNxButton;
    kpparent: TPanel;
  
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

end.
