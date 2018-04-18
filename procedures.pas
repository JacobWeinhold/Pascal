//fpc 3.0.0

program HelloWorld;
Uses sysutils, typinfo;

var Zaehler: byte = 0 ;
    bool: Boolean = True;

procedure gibZaehlerAus;
begin
Zaehler := succ(Zaehler);
writeln(Zaehler);
end;

procedure veraendereZaehler(n: byte);
begin
    Zaehler := n;
end;

function zaehlerIstGerade: boolean;
begin
    zaehlerIstGerade := Zaehler mod 2 = 0;
end;

function summe(x, y: byte; var bool: boolean): byte;

begin
    If (x + y) > high(byte) then
        begin
            bool := false;
            summe := x;
        end
      
     else
     begin
         summe := x + y;
         bool := true;
    end
    
end;

function fakultaet(b: byte): byte;
begin 
    If b <= 1 then
    begin
        fakultaet := 1;
   end
   else
        fakultaet := fakultaet(b-1) * b;
end;



begin
      gibZaehlerAus;
      writeln(zaehlerIstGerade);
      gibZaehlerAus;
            writeln(zaehlerIstGerade);
      gibZaehlerAus;
      veraendereZaehler(0);

      gibZaehlerAus;
      gibZaehlerAus;
      gibZaehlerAus;
      
      summe(10,10, bool);
      writeln(bool);
      
      summe(100,100, bool);
      writeln(bool);
      
      summe(200,200, bool);
      writeln(bool);
      
      writeln(fakultaet(5));
      
end.
