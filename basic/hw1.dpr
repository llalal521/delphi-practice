program hw1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TablePrinter in 'TablePrinter.pas',
  CheckPrimer in 'CheckPrimer.pas',
  Goldbach in 'Goldbach.pas';

var
    Result: Boolean;
    Input, Left, Right: Integer;
begin
//  Result := CheckGoldbachAll();
//  if Result then
//    write('2 - INTMAX proved' + #10);
  while True do
  begin
    write('Input number to be divided' + #10);
    read(Input);
    Result := CheckGoldbach(Input, Left, Right);
    if Result then
      write(IntToStr(Input) + '=' + IntToStr(Left) + '+' + IntToStr(Right) + #10)
    else
      write(Input);
      write(#10);
  end;
end.
