program Project1;

uses
  System.SysUtils,
  math;

var x,y,z,t,cod,R :integer;
    N,n1 :longint;
    Str :string;
    R1 :real;

begin
R:=1;
cod:=1;
while R<>0 do       //???????? ???????????? ?????
 begin
  repeat
    writeln('??????? ????? N');
    readln(Str);   //???? ????? N
   if length(str)>10 then writeln('??????, ?????????? ?????!')
  until length(str)<=10;
  while cod<>0 do
   begin
    val(Str,R1,cod);
    if cod<>0 then
     begin
      writeln('??????, ?????????? ?????!');
       repeat
          writeln('??????? ????? N');
          readln(Str);   //???? ????? N
          if length(str)>10 then writeln('??????, ?????????? ?????!')
       until length(str)<=10;
     end

   end;
 N:=strtoint(str);
  if (N<=0) or (N>=2000000000) then
   writeln('??????, ?????????? ?????!')
  else R:=0;
 end;


 n1:=N;

 x:=trunc(sqrt(n1));    //?????????? ??????? ??????????
 n1:=n1-sqr(x);         //?????????? ????? ?????????? ???? ???????? ?????

 y:=trunc(sqrt(n1));
 n1:=n1-sqr(y);

 z:=trunc(sqrt(n1));
 n1:=n1-sqr(z);

 t:=trunc(sqrt(n1));

if(sqr(x)+sqr(y)+sqr(z)+sqr(t)=N) then  //????? ?? ????? ????????? ????? ????? N
begin
   writeln('????????: ','x=', x,', ','y=',y,', ','z=',z,', ','t=',t,';'); //????? X,Y,Z,T
   writeln('????? ???????? ',sqr(x),'+',sqr(y),'+',sqr(z),'+',sqr(t),'=',N); //????? ???????
   readln
end
else
writeln('?????????? ????????? ??? ??????? ?????');
readln
end.
