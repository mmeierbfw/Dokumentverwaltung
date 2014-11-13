unit uEinstellungen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxEdit, uutils, filectrl, fEdit, fComboBox;

type
  TEinstellungen = class(TForm)
    bscanordner: TButton;
    Panel1: TPanel;
    bpostausgangsordner: TButton;
    Button2: TButton;
    Button3: TButton;
    shownumber: TCheckBox;
    ekundennummer: TfEdit;
    esachbearbeiter: TfEdit;
    escanverzeichnis: TfEdit;
    epostausgangsverzeichnis: TfEdit;
    lkun: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    splitnumber: TCheckBox;
    epasswort: TfEdit;
    Label5: TLabel;
    fkundennummer: TfComboBox;
    procedure Bsave(Sender: TObject);
    procedure Babbrechen(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bscanordnerClick(Sender: TObject);
    procedure ekundennummerKeyPress(Sender: TObject; var Key: Char);
  private
    showPassword: boolean;
  end;

var
  Einstellungen: TEinstellungen;

implementation

{$R *.dfm}

uses umain;

procedure TEinstellungen.Babbrechen(Sender: TObject);
begin
  self.close;

end;

procedure TEinstellungen.Bsave(Sender: TObject);
var
  passwort, kundennummer, sachbearbeiter, scanverzeichnis, postausgang: string;
begin
  // passwort        := epassword.Text;
  // kundennummer    := ekundennummer.Text;
  kundennummer    := fkundennummer.Text;
  sachbearbeiter  := esachbearbeiter.Text;
  scanverzeichnis := escanverzeichnis.Text;
  postausgang     := epostausgangsverzeichnis.Text;
  passwort        := epasswort.Text;
  if not DirectoryExists(scanverzeichnis) then begin
    MessageDlg('bitte ein gültiges Verzeichnis auswählen', mtError,
      mbOKCancel, 0);
    exit;
  end;

  formmain.saveSettings(passwort, kundennummer, sachbearbeiter, scanverzeichnis,
    postausgang, shownumber.Checked, splitnumber.Checked);
  self.close;
end;

procedure TEinstellungen.bscanordnerClick(Sender: TObject);

var
  Pfad: string;
begin
  SelectDirectory('Ordner auswählen', 'C:\', Pfad);
  if Sender = bscanordner then escanverzeichnis.Text := Pfad
  else epostausgangsverzeichnis.Text                 := Pfad;
end;

procedure TEinstellungen.ekundennummerKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ignoreNonNumerics(Key);
end;

procedure TEinstellungen.FormShow(Sender: TObject);
begin
  // ekundennummer.Text            := formmain.getKundennummer;
  // fkundennummer.Items           := formmain.getkundennrnAsString;
  escanverzeichnis.Text         := formmain.getscanverzeichnis;
  esachbearbeiter.Text          := formmain.getSachbearbeiter;
  epasswort.Text                := formmain.getpasswort;
  epostausgangsverzeichnis.Text := formmain.getpostausgangsverzeichnis;
  shownumber.Checked            := formmain.showingid;
  self.splitnumber.Checked      := formmain.splitnumber;

  if not formmain.intern then begin
    ekundennummer.Visible := false;
    lkun.Visible          := false;
  end;
end;

end.
