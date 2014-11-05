unit ucollector;

interface

uses  Controls, StdCtrls,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, ExtCtrls,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection,  uusables, uconstants,
   shellapi, uutils, umysqlcontroller, udbconnector,
  System.Generics.collections;

type
  TCollector = class(TObject)

  public

    function collect(doctype: integer; emaildict: tdictionary<string, string>)
      : tdictionary<string, string>; overload;

    function collect(doctype: integer): tdictionary<string, string>; overload;

  private
    function collectDefault(doctype: integer): tdictionary<string, string>;
    function collectsonstiges: tdictionary<string, string>; overload;
    function collectZwischenablesung: tdictionary<string, string>; overload;
    function collectZwischenablesung(email: temail)
      : tdictionary<string, string>; overload;
    function collectKostenermittlung: tdictionary<string, string>; overload;
    function collectKostenermittlung(email: temail)
      : tdictionary<string, string>; overload;
    function collectMontage: tdictionary<string, string>; overload;
    function collectMontage(email: temail)
      : tdictionary<string, string>; overload;
    function collectEnergieausweis: tdictionary<string, string>; overload;
    function collectEnergieausweis(email: temail)
      : tdictionary<string, string>; overload;
    function collectNutzerliste: tdictionary<string, string>; overload;
    function collectNutzerliste(email: temail)
      : tdictionary<string, string>; overload;
    function collectreklamation(): tdictionary<string, string>; overload;
    function collectreklamation(email: temail)
      : tdictionary<string, string>; overload;
    function collectvertrag(): tdictionary<string, string>; overload;
    function collectvertrag(email: temail)
      : tdictionary<string, string>; overload;
    function collectangebotsanfrage: tdictionary<string, string>; overload;
    function collectangebotsanfrage(email: temail)
      : tdictionary<string, string>; overload;
    function collectAuftrag: tdictionary<string, string>; overload;
    function collectAuftrag(email: temail)
      : tdictionary<string, string>; overload;
       
  end;

var
  collector: TCollector;

implementation

{ TCollector }

uses umain;

function TCollector.collectEnergieausweis(email: temail)
  : tdictionary<string, string>;
var
  endoc: TDocumentEnergieausweis;
  dicten, dictemail: tdictionary<string, string>;
begin
  dictemail := email.getproperties;
  dicten := collectEnergieausweis;
  copydictionary(dictemail, dicten);
  Result := dicten;
end;

function TCollector.collectKostenermittlung(email: temail)
  : tdictionary<string, string>;
var
  dictkos, dictemail: tdictionary<string, string>;
begin
  dictkos := collectKostenermittlung;
  dictemail := email.getproperties;
  copydictionary(dictemail, dictkos);
  Result := dictkos;

end;

function TCollector.collectMontage(email: temail): tdictionary<string, string>;
var
  dictmon, dictemail: tdictionary<string, string>;
begin
  dictmon := collectMontage;
  dictemail := email.getproperties;
  copydictionary(dictemail, dictmon);
  Result := dictmon;

end;

function TCollector.collectNutzerliste(email: temail)
  : tdictionary<string, string>;
var
  dictnu, dictemail: tdictionary<string, string>;
begin
  dictnu := collectNutzerliste;
  dictemail := email.getproperties;
  copydictionary(dictemail, dictnu);
  Result := dictnu;

end;

function TCollector.collectreklamation(email: temail)
  : tdictionary<string, string>;
var
  dict, dictemail: tdictionary<string, string>;
begin
  dict := collectreklamation;
  dictemail := email.getproperties;
  copydictionary(dictemail, dict);
  Result := dict;

end;

function TCollector.collectreklamation: tdictionary<string, string>;
var
  dictre, dictd: tdictionary<string, string>;
  rekdoc: TdocumentReklamation;
begin
  dictd := collectDefault(ReklamationINT);
  rekdoc := TdocumentReklamation.create;
  with formmain do
  begin
    rekdoc.setpropertie(Montagedatum, getMontagedatum);
    rekdoc.setpropertie(Auftragsnummer, getauftragsnummer);
  end;
  dictre := rekdoc.getproperties;
  copydictionary(dictd, dictre);
  Result := dictre;

end;

function TCollector.collectsonstiges: tdictionary<string, string>;
var
  dictd, dictk: tdictionary<string, string>;
  sonstdoc: Tdocumentsonstiges;
begin
  sonstdoc := Tdocumentsonstiges.create;
  dictd := collectDefault(KostenINT);
  with formmain do
  begin
    sonstdoc.setpropertie(Nutzernummer, getNutzernummer);
  end;
  dictk := sonstdoc.getproperties;
  copydictionary(dictd, dictk);
  Result := dictk;

end;

function TCollector.collectvertrag: tdictionary<string, string>;
var
  dict, dictv: tdictionary<string, string>;
  doc: TDocumentvertrag;
begin
  doc := TDocumentvertrag.create;
  dict := collectDefault(vertragsint);
  with formmain do
  begin
    doc.setpropertie(Nutzernummer, getNutzernummer);
  end;
  dictv := doc.getproperties;
  copydictionary(dict, dictv);
  Result := dictv;
end;

function TCollector.collectvertrag(email: temail): tdictionary<string, string>;
var
  dict, dictemail: tdictionary<string, string>;

begin
  dictemail := email.getproperties;
  dict := collectvertrag;
  copydictionary(dictemail, dict);
  Result := dict;
end;

function TCollector.collectZwischenablesung(email: temail)
  : tdictionary<string, string>;
var
  dict, dictemail: tdictionary<string, string>;
begin
  dict := collectZwischenablesung;
  dictemail := email.getproperties;
  copydictionary(dictemail, dict);
  Result := dict;
end;

{ TCollector }

function TCollector.collectZwischenablesung: tdictionary<string, string>;
var
  dictd, dictz: tdictionary<string, string>;
  doc: TDocument;
  zwdoc: TdocumentZwischenablesung;
  checked: string;
begin
  dictd := collectDefault(ZwischenablsgINT);
  zwdoc := TdocumentZwischenablesung.create;
  with formmain do
  begin
    zwdoc.setpropertie(ablesedatum, getAblesedatum);
    zwdoc.setpropertie(vertragsbeginn, getAuszugsdatum);
    zwdoc.setpropertie(Nutzername, getNutzername);
    zwdoc.setpropertie(Nutzernummer, getNutzernummer);
    dictz := zwdoc.getproperties;
    copydictionary(dictd, dictz);
  end;
  Result := dictz;
end;

function TCollector.collect(doctype: integer): tdictionary<string, string>;
begin
  case doctype of
    ZwischenablsgINT:
      Result := collectZwischenablesung;
    MontageINT:
      Result := collectMontage;
    ReklamationINT:
      Result := collectreklamation;
    SonstigesInt:
      Result := collectsonstiges;
    EnergieausweisINT:
      Result := collectEnergieausweis;
    Nutzerint:
      Result := collectNutzerliste;
    KostenINT:
      Result := collectKostenermittlung;
    vertragsint:
      Result := collectvertrag;
    Angebotsint:
      Result := collectangebotsanfrage;
    Auftragsint:
      Result := collectAuftrag;
  end;
end;

function TCollector.collectangebotsanfrage: tdictionary<string, string>;
var
  doc: TdocumentAngebot;
  dictd, dicta: tdictionary<string, string>;
begin

  dictd := collectDefault(Angebotsint);
  doc := TdocumentAngebot.create;
  with formmain do
  begin
    doc.setpropertie(Nutzernummer, getNutzernummer);
  end;
  dicta := doc.getproperties;
  copydictionary(dictd, dicta);
  Result := dicta;
end;

function TCollector.collectangebotsanfrage(email: temail)
  : tdictionary<string, string>;
var
  dicte, dict: tdictionary<string, string>;
begin
  dict := collectangebotsanfrage;
  dicte := email.getproperties;
  copydictionary(dicte, dict);
  Result := dict;
end;

function TCollector.collectAuftrag: tdictionary<string, string>;

var
  dictd, dicta: tdictionary<string, string>;
  auftragsdoc: TDocumentAuftrag;
begin

  dictd := collectDefault(Auftragsint);
  auftragsdoc := TDocumentAuftrag.create;
  with formmain do
  begin
    auftragsdoc.setpropertie(Nutzernummer, getNutzernummer);
    auftragsdoc.setpropertie(auftragstyp, getauftragstyp);
  end;
  dicta := auftragsdoc.getproperties;
  copydictionary(dictd, dicta);
  Result := dicta;
end;

function TCollector.collectAuftrag(email: temail): tdictionary<string, string>;
var
  dict, dictemail: tdictionary<string, string>;
begin
  dictemail := email.getproperties;
  dict := collectAuftrag;
  copydictionary(dictemail, dict);
  Result := dict;

end;

function TCollector.collect(doctype: integer;
  emaildict: tdictionary<string, string>): tdictionary<string, string>;
var
  dict: tdictionary<string, string>;
begin
  dict := collect(doctype);
  copydictionary(emaildict, dict);
  Result := dict;

end;

function TCollector.collectDefault(doctype: integer)
  : tdictionary<string, string>;
var
  doc: TDocument;
  checked: string;
  dictd: tdictionary<string, string>;
  prefix: string;
  helper: string;
begin
  doc := TDocument.create;
  with formmain do
  begin
    // if not (doctype = TelefonnotizINT) then

    doc.setpropertie(Dateiname, formmain.getfilename);
    doc.setpropertie('Dokumentid', getDocumentid);
    doc.setpropertie(Posteingang, getPosteingang);
    doc.setpropertie(erledigt, getErledigt);
    doc.setpropertie(Kundennummer, getkundennrfordb);
    doc.setpropertie(liegenschaft, getLiegenschaft);
    doc.setpropertie(Notizen, getNotizen);
    doc.setpropertie(sachbearbeiter, getsachbearbeiter());
    doc.setpropertie(datumgepr, getdatumchecked);
    doc.setpropertie(Anrufer, getanrufer);
    doc.setpropertie(Telefonnummer, gettelefonnummer);
    doc.setpropertie(sammelordner, getsammelordner);
    doc.setpropertie(abrechnungsende, getabrechnungsende);
    doc.setpropertie(strasse, getstrasse);
    doc.setpropertie(plz, getplz);
    doc.setpropertie(ort, getort);

    doc.setpropertie(datumgepr, getdatumchecked);
  end;

  dictd := doc.getproperties;
  Result := dictd;
end;

function TCollector.collectEnergieausweis: tdictionary<string, string>;

var
  dictd, dicte: tdictionary<string, string>;
  endoc: TDocumentEnergieausweis;
begin
  endoc := TDocumentEnergieausweis.create;
  dictd := collectDefault(EnergieausweisINT);
  with formmain do
  begin
    endoc.setpropertie(pseudoliegenschaft, getpseudoliegenschaft);
    endoc.setpropertie(strasse, getstrasse);
    endoc.setpropertie(ort, getort);
    endoc.setpropertie(plz, getplz);
  end;
  dicte := endoc.getproperties;
  copydictionary(dictd, dicte);
  Result := dicte;
end;

function TCollector.collectKostenermittlung: tdictionary<string, string>;
var
  dictd, dictk: tdictionary<string, string>;
  kosdoc: TDocumentKostenermittlung;
begin
  kosdoc := TDocumentKostenermittlung.create;
  dictd := collectDefault(KostenINT);
  with formmain do
  begin
    kosdoc.setpropertie(Nutzernummer, getNutzernummer);
  end;
  dictk := kosdoc.getproperties;
  copydictionary(dictd, dictk);
  Result := dictk;
end;

function TCollector.collectMontage: tdictionary<string, string>;
var
  dictd, dictm: tdictionary<string, string>;
  mondoc: TDocumentMontage;
begin
  dictd := collectDefault(MontageINT);
  mondoc := TDocumentMontage.create;
  with formmain do
  begin
    mondoc.setpropertie(Montagedatum, getMontagedatum);
    mondoc.setpropertie(Auftragsnummer, getauftragsnummer);
    mondoc.setpropertie(Nutzernummer, getNutzernummer);
  end;
  dictm := mondoc.getproperties;
  copydictionary(dictd, dictm);
  Result := dictm;
end;

function TCollector.collectNutzerliste: tdictionary<string, string>;
var
  dictd: tdictionary<string, string>;
begin
  Result := collectDefault(Nutzerint);
end;

end.
