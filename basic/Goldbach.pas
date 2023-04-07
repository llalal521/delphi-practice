unit Goldbach;

interface
  ///  <summary> ��һ��ż�����Ϊ��������֮�� </summary>
  ///  <param name="Num"> �����ż�� </param>
  ///  <returns name="Left"> ������ </returns>
  ///  <returns name="Right"> ������ </returns>
  function CheckGoldbach(Num: Integer; out Left: Integer; out Right: Integer): Boolean;

  ///  <summary> �жϴ�2-IntMax�Ƿ�����Goldbach </summary>
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
