program dokverwaltung;

{$R *.dres}

uses
  Vcl.Forms,
  UWorker in 'UWorker.pas',
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb},
  Vcl.Themes,
  Vcl.Styles,
  uparser in '..\perfectparser\uparser.pas' {formparser},
  doppelstart in 'doppelstart.pas',
  udirlisting in 'udirlisting.pas',
  usachkunde in 'usachkunde.pas' {formsachkunde},
  udbthread in 'udbthread.pas',
  uutils in '..\sources2208\uutils.pas',
  uftpconnector in '..\neueftpverbindung\uftpconnector.pas' {formftp},
  uEinstellungen in 'uEinstellungen.pas' {Einstellungen},
  uUsables in '..\sources2208\uUsables.pas',
  uConstants in 'uConstants.pas',
  umain in 'umain.pas' {formmain},
  uframebase in 'uframebase.pas' {framebase: TFrame},
  uframeenergie in 'uframeenergie.pas' {frameenergie: TFrame},
  uframereklmont in 'uframereklmont.pas' {framereklmont: TFrame},
  uframebasemitnutzer in 'uframebasemitnutzer.pas' {framebasenutzer: TFrame},
  uframezwischen in 'uframezwischen.pas' {framezwischen: TFrame},
  uframeauftrag in 'uframeauftrag.pas' {frameauftrag: TFrame},
  uframefilter in 'uframefilter.pas' {framebasefilter: TFrame},
  uframeauftragsverwaltung in '..\sources2208\uframeauftragsverwaltung.pas' {frameauftragsdaten: TFrame},
  usettings in 'usettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Dokumentenverwalter';

  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(Tformftp, formftp);
  Application.CreateForm(Tformparser, formparser);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(Tformsachkunde, formsachkunde);
  Application.CreateForm(Tformftp, formftp);
  Application.CreateForm(Tformftp, formftp);
  //  Application.CreateForm(Tformmain1, formmain1);
  //  Application.CreateForm(TEinstellungen, Einstellungen);
  Application.Run;

end.
