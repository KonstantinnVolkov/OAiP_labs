program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Math,
  System.SysUtils;

var
  x, res: real;
  n: byte;

function negativeN(x: real; var n: byte): real;
var
  a: real;
begin

end;

function positiveN(x: real; var n: byte):real;
var
  i :byte;
begin
  if not(i = n-1) then
    x := x*x;
    positiveN(())

end;

begin
  writeln('¬ведите X');
  readln(x);
  writeln('¬ведите степень n');
  readln(n);
  if n=0 then
    x := 1
  else if n > 0 then
    x := positiveN(x, n)
  else if n < 0 then
    x := negativeN(x,n);
  writeln('F(x)=', x:3:10);
  readln;

end.
