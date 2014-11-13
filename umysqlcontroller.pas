unit umysqlcontroller;

interface

uses
  Classes, SysUtils, TypInfo, StdCtrls, uutils, System.generics.collections;

type

  TEmail = class(TObject)
    dict: TDictionary<string, string>;
    function getproperties(): TDictionary<string, string>;
    constructor create();
    function setpropertie(key, value: string): boolean;
  end;

  { oberklasse }
  TDocument = class(TObject)
    dict: TDictionary<string, string>;

    function getproperties(): TDictionary<string, string>;
    constructor create();
    function setpropertie(key, value: String): boolean;
    procedure copydictionary(source, target: TDictionary<string, string>);
  end;

  TDocumentZwischenablesung = class(TDocument)
    Constructor create();
  end;

  TDocumentMontage = class(TDocument)
    Constructor create();
  end;

  TdocumentReklamation = class(TDocument)
    Constructor create();
  end;

  TDocumentEnergieausweis = class(TDocument)
    Constructor create();
  end;

  TDocumentKostenermittlung = class(TDocument)
    Constructor create;
  end;

  Tdocumentsonstiges = class(TDocument)
    Constructor create;
  end;

  TDocumentvertrag = class(TDocument)
    Constructor create;
  end;

  TdocumentAngebot = class(TDocument)
    Constructor create;
  end;

  TDocumentAuftrag = class(TDocument)
    Constructor create;
  end;

implementation

uses umain;
{ TDocument }

procedure TDocument.copydictionary(source, target: TDictionary<string, string>);
var
  key, value: string;
begin
  for key in source.Keys do begin
    target.Add(key, source.Items[key]);
  end;

end;

constructor TDocument.create();
begin
  with formmain.dokcons do begin
    dict := TDictionary<string, string>.create;
    dict.Add(Dateiname, default_value);
    dict.Add(Posteingang, default_value);
    dict.Add(erledigt, nicherledigtstr);
    dict.Add(Kundennummer, default_value);
    dict.Add(liegenschaft, default_value);
    dict.Add(Notizen, default_value);
    dict.Add(sachbearbeiter, default_value);
    dict.Add('Dokumentid', default_value);
    dict.Add(datumgepr, nicherledigtstr);
    dict.Add(anrufer, default_value);
    dict.Add(telefonnummer, default_value);
    dict.Add(Sammelordner, default_value);
    dict.Add(abrechnungsende, default_value);

  end;
end;

function TDocument.getproperties(): TDictionary<string, string>;
begin
  Result := dict;
end;

function TDocument.setpropertie(key, value: String): boolean;
begin
  Result := false;
  if dict.ContainsKey(key) then begin
    dict.AddOrSetValue(key, value);
    Result := true;
  end;

end;

{ TDocumentZwischenablesung }

constructor TDocumentZwischenablesung.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict := TDictionary<string, string>.create;
    dict.Add(nutzername, default_value);
    dict.Add(Ablesedatum, default_value);
    dict.Add(Vertragsbeginn, default_value);
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TDocumentMontage }

constructor TDocumentMontage.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict := TDictionary<string, string>.create;
    dict.Add(Montagedatum, default_value);
    dict.Add(auftragsnummer, default_value);
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TEmail }

constructor TEmail.create;
begin
  with formmain.dokcons do begin
    dict := TDictionary<string, string>.create;
    dict.Add(Empfängername, default_value);
    dict.Add(Empfängeradresse, default_value);
    dict.Add(Absendername, default_value);
    dict.Add(Absenderadresse, default_value);
    dict.Add(Betref, default_value);
  end;
end;

function TEmail.getproperties: TDictionary<string, string>;
begin
  Result := dict;
end;

function TEmail.setpropertie(key, value: string): boolean;
begin
  Result := false;
  if dict.ContainsKey(key) then begin
    dict.AddOrSetValue(key, value);
    Result := true;
  end;
end;

{ TdocumentReklamation }

constructor TdocumentReklamation.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(auftragsnummer, default_value);
    dict.Add(Montagedatum, default_value);
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TDocumentEnergieausweis }

constructor TDocumentEnergieausweis.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(pseudoliegenschaft, default_value);
    dict.Add(Nutzernummer, default_value);
    dict.Add(strasse, default_value);
    dict.Add(ort, default_value);
    dict.Add(plz, default_value);

  end;
end;
{ TDocumentKostenermittlung }

constructor TDocumentKostenermittlung.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ Tdocumentsonstiges }

constructor Tdocumentsonstiges.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TDocumentvertrag }

constructor TDocumentvertrag.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TdocumentAngebot }

constructor TdocumentAngebot.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(Nutzernummer, default_value);
  end;
end;

{ TDocumentAuftrag }

constructor TDocumentAuftrag.create;
begin
  with formmain.dokcons do begin
    inherited;
    dict.Add(Nutzernummer, default_value);
    dict.Add(auftragstyp, default_value);
  end;
end;

end.
