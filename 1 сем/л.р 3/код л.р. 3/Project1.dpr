program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, math;
Var k,i,n: integer;
    x,f1,f2,E,ch,s: real;
begin
x := -0.6;
    writeln('------------------------------------------------------------------------');
    writeln('|  X    |    f1      |   E=0.0001     |   E=0.00001   |   E=0.000001    |');
    writeln('|       |            |----------------|----------------|----------------|');
    writeln('|       |            |      f2(x)  | N|    f2(x)    |N |     f2(x)   |N |');
    writeln('-------------------------------------------------------------------------');
    i:=0;
 repeat
           E:=0.0001;
           f1:=(x*x*x)/12+1/16*(x*x*x*x-1)*(ln((1+x)/(1-x))-2*arctan(x));
           write('|',x:5:2,'  |',f1:12:7,'|');
           k:=0;
           ch:=power(x,7);
           s:=ch/((4*k+3)*(4*k+7));
           f2:=s;
           n:=1;
        repeat

              repeat
                n:=n+1;
                k:=k+1;
                ch:=ch*power(x,4);
                s:=ch/((4*k+3)*(4*k+7));
                f2:=f2+s;
              until abs(s)<=E;
                if E>=0.0001 then          //Вывод F2 в зависимости от точности
                 begin
                   write(f2:10:5,'   |');
                 end
                else
                begin
                    if (E<0.0001) and (E>=0.00001) then    //Вывод с разными отступами
                    write(f2:10:7,'  |') else write(f2:10:7,'   |');
                end;
                write(n,' |');
                E:=E/10;
        until E<=0.000001;
            writeln(' ');
           x:=x+0.05;
           x:=round(x/0.0001)*0.0001;       //Округление X
           i:=i+1;

 until i>=20;
 readln;
end.


