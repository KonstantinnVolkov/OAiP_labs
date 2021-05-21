program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Math,
  System.SysUtils;

var
  x: extended;
  n, i: integer;
  flag: Boolean;

function positiveN(x: real; n :integer): extended;
begin
  inc(i);
  if i < n - 1 then
    begin
      x := x * positiveN(x, n);
    end;
  result := x;
end;

function negativeN(x: real; n: integer): extended;
begin
  inc(i);
  if i < n then
    x := x * negativeN(x, n);
  result := x;
end;

begin
  i := 1;
  flag := false;
  repeat
    write('������� X: ');
    readln(x);
    write('������� ������� n: ');
    readln(n);
    if  (N>100) or ((x>10)and(n>100)) then
      writeln('������� ������� �������!')
    else
      flag := true;
  until flag;
  if n > 0 then
    x := x * positiveN(x, n)
  else if n < 0 then
  begin
    n := abs(n);
    x := 1 / negativeN(x, n);
  end
  else if n = 0 then
    x := 1;
  writeln('������� �������: ',i);
  writeln('F(x)= ', x:2:3);
  readln;

end.
