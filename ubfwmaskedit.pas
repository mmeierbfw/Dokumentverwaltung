unit ubfwmaskedit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask;

type
  tbfwmaskedit = class(TMaskEdit)
  private
    { Private-Deklarationen }
  protected
    { Protected-Deklarationen }
  public
    { Public-Deklarationen }
  published
    { Published-Deklarationen }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('bfw', [tbfwmaskedit]);
end;

end.
