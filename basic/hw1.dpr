program hw1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TablePrinter in 'TablePrinter.pas',
  CheckPrimer in 'CheckPrimer.pas';

  var
    Result: Boolean;
    Input: Integer;
begin
  while True do
  begin
    write('Input number to be judged(integer needed)' + #10);
    read(Input);
    Result := CheckPrime(Input);
    if Result then
      write('yes' + #10)
    else
      write('no' + #10);
  end;
end.
