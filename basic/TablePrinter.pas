unit TablePrinter;

interface
  procedure PrintTable();

implementation
  uses
    SysUtils;
  procedure PrintTable();
  var
    Right, Left, Count: Integer;
  begin
    Count := 9;
    for Right := 1 to Count do
      begin
        for Left := 1 to Right do
          write(IntToStr(Left) + '*' + IntToStr(Right) + '=' + IntToStr(Left * Right) + #9);
        write(#10);
      end;
    read(Left);
  end;
end.
