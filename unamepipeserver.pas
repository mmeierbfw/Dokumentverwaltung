unit unamepipeserver;

interface

uses
  System.SysUtils, System.Classes, NPipe_Server, dialogs, strutils;

type
  Tdmnamepipeserver = class(TDataModule)
    nps: TNPipeServer;
    procedure DataModuleCreate(Sender: TObject);
    procedure npsIncomingData(Sender: TObject; Data: TMemoryStream;
      var Reply: TMemoryStream);
  private
    list: TStringList;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  dmnamepipeserver: Tdmnamepipeserver;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure Tdmnamepipeserver.DataModuleCreate(Sender: TObject);
begin
  nps.Active := true;
  list := TStringList.Create;
end;



procedure Tdmnamepipeserver.npsIncomingData(Sender: TObject;
  Data: TMemoryStream; var Reply: TMemoryStream);
var
  sl: TStrings;
  line, item, prefix: string;
  incoming: TStringList;
  newitem: string;
begin
  incoming := TStringList.Create;
  incoming.LoadFromStream(Data);
  if incoming.Count = 0 then begin

    sl := TStringList.Create;
    try
      line := list[0];
      list.Delete(0);
      sl.Add(line);
      sl.SaveToStream(Reply);
      sl.Free;
      showmessage('angefragt: ' + line);
    except
      // outputdebugstring('kein Element');
    end;
    exit;
  end;
  for item in incoming do begin
    prefix := copy(item, 0, length('SET'));
    newitem := copy(item, 4, length(item));
    if not('SET' = AnsiUpperCase(prefix)) then exit;
    list.Add(newitem);
    showmessage('angekommen' + newitem);
    // die ersten vier Stellen werden gelöscht. "SET "
  end;
end;

end.
