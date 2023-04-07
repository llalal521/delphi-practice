unit CheckPrimer;

interface
  ///  <summary> �ж�һ�����Ƿ�Ϊ���� </summary>
  ///  <param name="Num"> ����Ҫ�жϵ������� </param>
  ///  <returns> �����жϽ�� </returns>
  function CheckPrime(Num: Integer): Boolean;

  ///  <summary> �ж�һ�����Ƿ�Ϊ���� </summary>
  ///  <param name="Num"> ����Ҫ�жϵ������� </param>
  ///  <returns> ����ǰ���������򷵻�true������Ϊfalse</returns>
  ///  <returns name="next"> ������һ������ </returns>
  function FindNextPrime(Num: Integer; out Next: Integer): Boolean;

implementation
  uses
    SysUtils;
  ///  <summary> ����ͨ���ж�2-sqrt(Num)���Ƿ���ڿ�������Num�������ж�����
  ///  ������ǰɸѡ�����Ա�2����3�������� </summary>
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

  ///  <summary> ����ǰ��ĺ��� </summary>
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
