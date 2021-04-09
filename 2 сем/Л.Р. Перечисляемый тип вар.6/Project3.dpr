program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  FMth = [1,3,5,7,8,10,12];
  SMth = [4,6,9,11];

type
  years = 0..2013;
  months = (jan=1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
  days = 1..31;

var
  i:byte;
  year : years;
  month : months;
  day : days;
  leap, flag : boolean;
  dd,mm,yy : integer;

begin
writeln('������� ���');
leap := false;
flag := false;
  repeat
    readln(year);
    if (year <= 0) or (year > 2013) then    //�������� ����
      writeln ('������������ ����')
    else
    break
  until (false);

writeln('������� �����');
  
  repeat
    readln(i);
    case i of
    1: month:=jan;
    2: month:=feb;
    3: month:=mar;
    4: month:=apr;
    5: month:=may;
    6: month:=jun;
    7: month:=jul;
    8: month:=aug;
    9: month:=sep;
    10: month:=oct;
    11: month:=nov;
    12: month:=dec;
    end;
    if (ord(month) <= 0) or (ord(month) > 12) then    //�������� ������
      writeln ('������������ ����')
    else
    break
  until (false);

writeln('������� ����');
  
  repeat
    readln(day);
    if (ord(month) in FMth) and (day<=31) then  flag:=true
    else if (ord(month) in FMth) and (day>=31) then flag:=false;
    if (ord(month) in SMth) and (day<=30) then  flag:=true
    else if (ord(month) in SMth) and (day>=30) then flag:=false;
    if ord(month)=2 then
      if (((year mod 4=0) and (year mod 100<>0)) or ((year mod 4=0)and(year mod 100=0)and(year mod 400=0)))and(day<=29) then
        begin
        leap:=true;
        flag:=true;
        end
      else if (((year mod 4=0) and (year mod 100<>0)) or ((year mod 4=0)and(year mod 100=0)and(year mod 400=0)))and(day>=29) then
        flag:=false;
       if ((year mod 4<>0)or((year mod 4=0)and(year mod 100=0)and(year mod 400<>0)))and(day<=28) then
        begin
          flag:=true;
          leap:=false;
        end
       else if ((year mod 4<>0)or((year mod 4=0)and(year mod 100=0)and(year mod 400<>0)))and(day>= 28) then
        flag:=false;
  until (flag) ;
// 01.01.2013 - �������, ������� �������

dd := 29; mm := 12; yy := 2012; //������ �������
writeln(dd,'.',mm,'.',yy);

  repeat
    dd := dd -7;
    if dd <=0 then
      begin
        mm:=mm-1;
        if mm <=0 then
        begin
          yy:=yy-1;
          mm := 12;
        end;
        if mm in FMth then dd :=  31 + dd
        else if mm in SMth then dd := 30 + dd
          else if ((yy mod 4 <> 0) or (yy mod 100 = 0) and (yy mod 400 <> 0)) and(mm=2) then dd := 28 + dd
          else dd := 29 + dd
      end;
      writeln(dd,'.',mm,'.',yy);
  until ((yy<year));

readln;
end.
