unit CheckPrimer;

interface
  function CheckPrime(Num: Integer): Boolean;

implementation
  uses
    SysUtils;
  function CheckPrime(Num: Integer):Boolean;
  var
    SqrtNum, Count: Integer;
  begin
    if Num <= 3 then
      exit(Num > 1);
    SqrtNum := Trunc(Sqrt(Num));
    for Count := 2 to SqrtNum do
    begin
      if Num mod Count = 0 then
        exit(False);
    end;
    exit(True);
  end;
end.
