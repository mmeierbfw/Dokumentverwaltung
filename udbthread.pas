unit udbthread;

interface

uses
  System.Classes;

type
  tdbthread = class(TThread)
  private
    { Private-Deklarationen }
  protected
    procedure Execute; override;
  end;

implementation
uses umain;
{ 
  Wichtig: Methoden und Eigenschaften von Objekten in visuellen Komponenten k�nnen nur
  in einer Methode verwendet werden, die mit 'Synchronize' aufgerufen wird, z.B.:

      Synchronize(UpdateCaption);  

  und UpdateCaption k�nnte folgenderma�en aussehen:

    procedure tdbthread.UpdateCaption;
    begin
      Form1.Caption := 'Im Thread aktualisiert';
    end; 
    
    oder 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Im Thread �ber eine anonyme Methode aktualisiert' 
      end
      )
    );
    
  wobei eine anonyme Methode �bergeben wird.
  
  Entsprechend kann der Entwickler die Methode 'Queue' mit den gleichen Parametern wie oben 
  aufrufen, anstatt eine andere TThread-Klasse als ersten Parameter zu �bergeben, und
  den aufrufenden Thread in eine Warteschlange mit dem anderen Thread zu stellen.
    
}

{ tdbthread }

procedure tdbthread.Execute;
begin
  formmain.getallids;
  { Thread-Code hier einf�gen }
end;

end.
