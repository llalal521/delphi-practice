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
  ///  <summary> ����ͨ���ж�2-sqrt(Num)���Ƿ���ڿ�������Num�������ж�����</summary>
  function CheckPrime(Num: Integer): Boolean;
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

  ///  <summary> ����ǰ��ĺ���</summary>
  function FindNextPrime(Num: Integer; out Next: Integer): Boolean;
  var
    res: Boolean;
  begin
    res := CheckPrime(Num);
    if res then exit(True);
    while res = false do
    begin
      Num := Num + 1;
      res := CheckPrime(Num);
    end;
    Next := Num;
    exit(False);
  end;
end.
