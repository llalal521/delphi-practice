unit Goldbach;

interface
  ///  <summary> 将一个偶数拆分为两个质数之和 </summary>
  ///  <param name="Num"> 待拆分偶数 </param>
  ///  <returns name="Left"> 左质数 </returns>
  ///  <returns name="Right"> 右质数 </returns>
  function CheckGoldbach(Num: Integer; out Left: Integer; out Right: Integer): Boolean;

  ///  <summary> 判断从2-IntMax是否满足Goldbach </summary>
  function CheckGoldbachAll(): Boolean;

implementation
  uses
    CheckPrimer;
  function CheckGoldbach(Num: Integer; out Left: Integer; out Right: Integer): Boolean;
  var
    i, sub, mid, next: Integer;
  begin
    mid := Trunc(Num / 2);
    i := 2;
    while i <= mid do
    begin
      if FindNextPrime(i, next) and CheckPrime(Num - i) then
      begin
        Left := i;
        Right := Num - i;
        exit(True);
      end;
      if i = next then
        i := i + 1
      else i := next;
    end;
    exit(False);
  end;

  function CheckGoldbachAll(): Boolean;
  var
    i, Left, Right: Integer;
  begin
    i := 4;
    while i < 2147483647 do
      if CheckGoldbach(i, Left, Right) = False then
        exit(False);
    exit(True);
  end;
end.
