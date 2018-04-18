//fpc 3.0.0

program HelloWorld;
Uses sysutils;
type TIndex = 1..3;
type TDreiBytes = array[TIndex] of Byte;

type TChessRow = 'A'..'H';
type TChessCol = 1..8;
type TSchachBrett = array[TChessRow, TChessCol] of String; 


var ChessBoard: TSchachBrett;
    ColCount: Integer;
    RowCount: Char;
    RowString: String;
    ColString: String;

begin
   
   for RowCount := 'A' to 'H' do
   begin
       for ColCount := 1 to 8 do
       begin
           ChessBoard[RowCount, ColCount] := IntToStr(ColCount) + RowCount;
       end
       
   end;
   
   for RowCount:= 'A' to 'H' do
   begin
       for ColCount := 8 downto 1 do
       begin
           write(ChessBoard[RowCount, Colcount]:3);
       end;
           writeln();
   
   end
   

    
end.
