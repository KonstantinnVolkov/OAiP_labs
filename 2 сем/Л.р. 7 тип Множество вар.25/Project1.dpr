program project1;

 {$APPTYPE CONSOLE}

 {$R *.res}

uses
  System.SysUtils;

var
  s:set of byte;
  a,b,c,i:byte;

begin
s:=[];
for a:=1 to 9 do
 if not(a in s)then
  begin
   include(s,a);
   for b:=0 to 9 do
    begin
     if not(b in s)then
      begin
       include(s,b);
       for c:=0 to 9 do
        begin
         if not(c in s) then
          begin
           include(s,c);
           if 11*(a+b+c)=100*a+10*b+c then
            begin
              writeln('ABC = AB + BC + CA');
              writeln(a,b,c, ' = ',a,b,' + ',b,c,' + ',c,a);
            end;
          end;
         exclude(s,c);
        end;
       exclude(s,b);
      end;
     exclude(s,a);
    end;
  end;
readln
end.
