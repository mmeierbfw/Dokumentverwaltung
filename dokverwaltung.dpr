program dokverwaltung;

{$R *.dres}

uses
  Vcl.Forms,
  UWorker in 'UWorker.pas',
  Vcl.Themes,
  Vcl.Styles,
  uparser in '..\perfectparser\uparser.pas' {formparser},
  doppelstart in 'doppelstart.pas',
  udirlisting in 'udirlisting.pas',
  usachkunde in 'usachkunde.pas' {formsachkunde},
  udbthread in 'udbthread.pas',
  uftpconnector in '..\neueftpverbindung\uftpconnector.pas' {formftp},
  uEinstellungen in 'uEinstellungen.pas' {Einstellungen},
  uConstants in 'uConstants.pas',
  umain in 'umain.pas' {formmain},
  uframebase in 'uframebase.pas' {framebase: TFrame},
  uframeenergie in 'uframeenergie.pas' {frameenergie: TFrame},
  uframereklmont in 'uframereklmont.pas' {framereklmont: TFrame},
  uframebasemitnutzer in 'uframebasemitnutzer.pas' {framebasenutzer: TFrame},
  uframezwischen in 'uframezwischen.pas' {framezwischen: TFrame},
  uframeauftrag in 'uframeauftrag.pas' {frameauftrag: TFrame},
  uframefilter in 'uframefilter.pas' {framebasefilter: TFrame},
  usettings in 'usettings.pas',
  uformkunde in 'uformkunde.pas' {formkunde: F},
  uframevertrag in 'uframevertrag.pas' {framebasenutzer1: TFrame},
  uanzeigemain in '..\Anzeigepgrogramm\uanzeigemain.pas' {anzeigemain},
  uanzeigeworker in '..\Anzeigepgrogramm\uanzeigeworker.pas',
  uflippanels in '..\Anzeigepgrogramm\uflippanels.pas' {Frame1: TFrame},
  udbconnector in '..\dokverwaltungdbconnector\udbconnector.pas' {formdb};

//  usammler in '..\Anzeigepgrogramm\usammler.pas;
//  udbbasisconnector in '..\dbconnector\udbbasisconnector.pas' {formbasisdb};
//  uanzeigecollector in '..\Anzeigepgrogramm\uanzeigecollector.pas'   ;
//  udbconnector in '..\dokverwaltungdbconnector\udbconnector.pas' {formdb};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Dokumentenverwalter';

  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(Tformdb, formdb);
  //  Application.CreateForm(Tformftp, formftp);
//  Application.CreateForm(Tformparser, formparser);
//  Application.CreateForm(Tformsachkunde, formsachkunde);
//  Application.CreateForm(Tformftp, formftp);
//  Application.CreateForm(Tformftp, formftp);
//  Application.CreateForm(Tformkunde, formkunde);
//  Application.CreateForm(Tformdb, formdb);
//  Application.CreateForm(Tanzeigemain, anzeigemain);
//  Application.CreateForm(Tanzeigemain, anzeigemain);
  Application.CreateForm(Tformbasisdb, formbasisdb);
  //  Application.CreateForm(Tformmain1, formmain1);
  //  Application.CreateForm(TEinstellungen, Einstellungen);
  Application.Run;

end.
