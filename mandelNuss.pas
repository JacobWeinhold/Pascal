//fpc 3.0.0

program HelloWorld;

const KONST = 'JACOB';

var eingabe, ausgabe, errorCode: String;
var code: Integer;

varByte: ShortInt;
MagNuss, MagAlkohol, SchaltJahr: Boolean;

Monat: Byte;


begin
    MagNuss := True;
    MagAlkohol := False;
    SchaltJahr := true;
    Monat := 7;
    
        readln(eingabe);
        val(eingabe, varByte, code);
        if code = 0 then
            if varByte < 0 then
                begin
                    writeln('negative');
                end
            else
               
                 writeln('positive');
               
             
        case varByte of
            0 : writeln('0');
            -100..-1: writeln('-1 bis -100');
            1..100: writeln('zwischen 1 und 100');
        else
            writeln('sehr große positive oder negative Zahl');
        end;
        
        
        If MagNuss and MagAlkohol then
            begin
                writeln('RumTraubeNuss');
            end
        Else If MagNuss and MagAlkohol = False then 
           begin
               writeln('Mandel');
            end
        Else If MagAlkohol and( MagNuss = False) then
           begin
               writeln('JamaicaRum');
           end
        Else
            writeln('zartbitter');
            
        case Monat of
            1, 3, 4: writeln('1,3,4');
            2: begin
                If Schaltjahr then
                
                begin    writeln(29);
                end
                else
                
                    writeln(28);
                 end
         else
             begin
                 writeln('byte enthaelt gar keinen monat nach gregorius fideldibus');
             end
         end
            
end.
