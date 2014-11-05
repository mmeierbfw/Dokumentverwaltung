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
  Wichtig: Methoden und Eigenschaften von Objekten in visuellen Komponenten können nur
  in einer Methode verwendet werden, die mit 'Synchronize' aufgerufen wird, z.B.:

      Synchronize(UpdateCaption);  

  und UpdateCaption könnte folgendermaßen aussehen:

    procedure tdbthread.UpdateCaption;
    begin
      Form1.Caption := 'Im Thread aktualisiert';
    end; 
    
    oder 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Im Thread über eine anonyme Methode aktualisiert' 
      end
      )
    );
    
  wobei eine anonyme Methode übergeben wird.
  
  Entsprechend kann der Entwickler die Methode 'Queue' mit den gleichen Parametern wie oben 
  aufrufen, anstatt eine andere TThread-Klasse als ersten Parameter zu übergeben, und
  den aufrufenden Thread in eine Warteschlange mit dem anderen Thread zu stellen.
    
}

{ tdbthread }

procedure tdbthread.Execute;
begin
  formmain.getallids;
  { Thread-Code hier einfügen }
end;

end.
