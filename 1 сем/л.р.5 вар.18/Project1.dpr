program project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  n=5;
  m=8;
 var
  a: array[1..n, 1..m] of integer;
  i, j, k, Collumn, str :byte;
  max, TEMP, temp1, temp2, err :integer;
  s :string;
begin
{randomize;
for I := 1 to n do             //���� ��������
  begin
    for j := 1 to m do
      begin
         a[i,j]:=random(100);
         write(a[i,j],' ');
      end;
    writeln;
  end; }

writeln('������� �������� �������');
     for I := 1 to n do            //���� �������
       begin
         for J := 1 to m do
           begin
             repeat
                write('������� [',i,',',j,'] ������� �������: ');
                readln(s);
                val(s,TEMP,err);
                  if (err<>0) or (temp<0) then
                   begin
                    writeln('������, ���������� ������ ������������� �����');
                   end;
             until (err=0) and (temp>0);
             a[i,j]:=strtoint(s);
           end;
       end;

      max:=0;
      Collumn:=1;
      str:=1;
     for I := 1 to n do          //����� max ��-�� �������
        begin
          for j := 1 to m do
             begin
               if max<a[i,j] then
                   begin
                     max:=a[i,j];
                     str:=i;
                     collumn:=j;
                   end;
             end;
        end; 
writeln;
writeln('������������ ������� �������: a[',str,',',collumn,']=',max);
writeln;

      for i:=str downto 1 do
       begin
        if i=1 then
          break;
         for j := 1 to m do
          begin
             temp1:=a[i,j];
             temp2:=a[i-1,j];
             a[i-1,j]:=temp1;
             a[i,j]:=temp2;
          end;
       end;

       for j := collumn downto 1 do
         begin
           if j = 1 then
            break;
           for i := 1 to n do
             begin
               temp1:=a[i,j];
               temp2:=a[i,j-1];
               a[i,j-1]:=temp1;
               a[i,j]:=temp2;
             end;
         end;

     for I := 1 to n do             //����� ��������� �������
        begin
         for j := 1 to m do
           begin
             write(a[i,j],' ');
           end;
           writeln;
        end;
           
readln
end.
