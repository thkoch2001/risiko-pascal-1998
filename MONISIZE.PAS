program monisize;
 uses crt,graph;
  var x,y:word;
     d:integer;
     Gd, Gm: Integer;
 begin
   Gd := Detect;
   InitGraph(Gd, Gm, '');
   if GraphResult <> grOk then
     Halt(1);
  x:=getmaxX;
  y:=getmaxY;
  CloseGraph;
  if x>y then d:=(y div 74)
  else d:=(x div 57);
  writeln(d);
  readln
 end.