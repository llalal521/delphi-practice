unit CheckPrimer;

interface
  ///  <summary> 判断一个数是否为素数 </summary>
  ///  <param name="Num"> 输入要判断的整形数 </param>
  ///  <returns> 返回判断结果 </returns>
  function CheckPrime(Num: Integer): Boolean;

  ///  <summary> 判断一个数是否为素数 </summary>
  ///  <param name="Num"> 输入要判断的整形数 </param>
  ///  <returns> 若当前是质数，则返回true，否则为false</returns>
  ///  <returns name="next"> 返回下一个质数 </returns>
  function FindNextPrime(Num: Integer; out Next: Integer): Boolean;

implementation
  uses
    SysUtils;
  ///  <summary> 函数通过判断2-sqrt(Num)间是否存在可以整除Num的数来判断素数
  ///  并且提前筛选掉可以被2或者3整除的数 </summary>
  function CheckPrime(Num: Integer): Boolean;
  var
    SqrtNum, Count, Divisor: Integer;
  begin
    if Num <= 3 then
      exit(Num > 1);
    if (Num mod 2 = 0) or (Num mod 3 = 0) then
      exit(False);
    SqrtNum := Trunc(Sqrt(Num));
    Divisor := 5;
    while Divisor <= SqrtNum do
    begin
      if Num mod Divisor = 0 then
        exit(False);
      if Num mod (Divisor + 2) = 0 then
        exit(False);
      Divisor := Divisor + 6;
    end;
    exit(True);
  end;

  ///  <summary> 调用前面的函数 </summary>
  function FindNextPrime(Num: Integer; out Next: Integer): Boolean;
  var
    res: Boolean;
  begin
    res := CheckPrime(Num);
    if res then
    begin
      Next := Num;
      exit(True);
    end;
    while res = false do
    begin
      Num := Num + 1;
      res := CheckPrime(Num);
    end;
    Next := Num;
    exit(False);
  end;
end.
