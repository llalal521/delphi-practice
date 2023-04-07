program hw1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TablePrinter in 'TablePrinter.pas',
  CheckPrimer in 'CheckPrimer.pas',
  Goldbach in 'Goldbach.pas';

var
    Result: Boolean;
    Input, Output: Integer;
begin
  while True do
  begin
    write('Input number to be judged(integer needed)' + #10);
    read(Input);
    Result := FindNextPrime(Input, Output);
    if Result then
      write('yes' + #10)
    else
      write(Output);
      write(#10);
  end;
end.
