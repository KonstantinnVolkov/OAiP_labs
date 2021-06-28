program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  math,
  System.SysUtils;

var
  x, y, a: extended;
  n, i, j: integer;
  flag: boolean;

Function PosN(x: extended; n, i: integer): extended;
begin
  inc(i);
  if n = 0 then
  begin
    result := 1;
  end
  else
    result := x * PosN(x, n - 1, i);
end;

begin
  i := 0;
  j := 0;
  a := 1;
  repeat
    write('Введите X: ');
    readln(x);
    y := x;
    write('Введите степень n: ');
    readln(n);
    if (n > 100) or ((x > 10) and (n > 100)) then
      writeln('Введите меньшую степень!')
    else
      flag := true;
  until flag;

  if n >= 0 then
  begin
    y := power(y, n);
    writeln('Нерекурсивная: ', y:2:5);
    x := PosN(x, n, i);
    writeln('Рекурсивная: ', x:2:5);
  end
  else
  begin
    n := abs(n);
    y := 1 / power(y, n);
    writeln('Нерекурсивная: ', y:2:5);
    x := 1 / PosN(x, n, i);
    writeln('Рекурсивная: ', x:2:5);
  end;

  readln;

end.
