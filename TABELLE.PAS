program aus;
type
  ttabelle=array[2..50,1..50] of byte;
var
  tab:ttabelle;
  f:file of ttabelle;


procedure Ausgabe(Tabelle:tTabelle);
  var
    i,j : byte;
  begin
    writeln('Gewinnwahrscheinlichkeiten fuer den Angreifer beim Risikospiel,');
    writeln('wobei AA die Zahl der Angreifer und AV die Zahl der Verteidiger ist.');
    writeln('Jeder Angriff wird solange durchgefuehrt, bis AA=0 oder AV=0 ist.');
    writeln('Der Berechnung liegen jeweils  Angriffe zugrunde.');
    writeln;
    writeln;
    write('   AV ');
    for i := 1 to 10 do
       write(i:6);
    writeln;
    write('AA');
    writeln;
    writeln;
    for i := 2 to 11 do begin
      write(i:2,' ':6);
      for j := 1 to i-1 do
        write(Tabelle[i,j]:6);
      writeln
    end
  end;

begin {HP}

assign(f,'c:\risiko\tabelle.bin');
reset(f);
read(f,tab);
close(f);
ausgabe(tab);
readln;
end.