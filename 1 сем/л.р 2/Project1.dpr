program project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  math;
var
  k,n,i :integer;
  F,x,s: real;

begin
 x:=0.6;
 i:=0;
  repeat        //���� �� X
   begin
   n:=10;                 //���� �� N
     while n<=15 do
     begin
       s:=0;
       k:=1;
       f:=power(sin(x/n),3/2);     //��������� ���� ������
         while k<=n do                //���� �� K
          begin
            s:=s+(1+(k+1)/n)/(exp(1)*power(power(x,k-1),1/k)+ln(x));         //������� �����
            k:=k+1;
            inc(i);
          end;
       f:=f*s;
       writeln('n=',n,' x=',x:4:3,' f=',f:5:3);                  //����� N,K,F
       n:=n+1;
     end;
   x:=x+0.25;
   writeln('');
   end;
  until x>1.11 ;
writeln('press enter to finish programm');
writeln(i);
readln;
end.

