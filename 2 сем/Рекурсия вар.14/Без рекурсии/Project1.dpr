//Программа без рекурсии
program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Math,
  System.SysUtils;

var
  x,res : real;
  n : integer;

begin
writeln('Введите X');
readln(X);
writeln('Введите степень n');
readln(n);
if n < 0 then res := 1/ (power(x,abs(n)))
  else if n > 0 then res := x/(power(x,n-1))
    else res := 0;
writeln('F(x)=',res:3:10);
readln;

end.
