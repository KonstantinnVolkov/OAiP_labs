program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  strutils;

var
  s, lw, wordToCheck, strToProcess, FirstLetter, copystr: string;
  i, j, k, a, countlet: integer;

begin
  writeln('??????? ?????? s');
  readln(s);
  s := trim(s);
  strToProcess := s;
  lw := '';
  wordToCheck := '';

  if (s = '') or (s = ' ') then
  begin
    writeln('Wrong input');
    exit;
  end;

  for i := length(s) downto 1 do
  begin
    wordToCheck := wordToCheck + s[i];
    if s[i] = ' ' then
    begin
      wordToCheck := trim(wordToCheck);
      break;
    end;
  end;

  for i := length(wordToCheck) downto 1 do
  begin
    lw := lw + wordToCheck[i];
  end;

  wordToCheck := '';
  writeln('?????????  ?????: ', lw);
  writeln('?1--------------------------');
  {i := 0;
  j := 2;
   while i <= length(strToProcess) do
   begin
   inc(i);
   wordToCheck := wordToCheck + strToProcess[i];
   if ((wordToCheck[i] = ' ') or (length(strToProcess) = i)) then
   begin
   wordToCheck := trim(wordToCheck);
   while j <= length(wordToCheck) do
   begin
   if (pos(lw, wordToCheck) <> 0) or (wordToCheck[1] = wordToCheck[j]) then
   begin
   delete(strToProcess, 1, length(wordToCheck));
   strToProcess := trim(strToProcess);
   break;
   end;
   inc(j);
   end;
   j := 2;
   i := 0;
   wordToCheck := '';
   end;
   // inc(i);
   end;
   writeln(strToProcess);}


   trim(s); strToProcess:=s; copystr:='';
   for i := 1 to length(strToProcess) do
    begin
     if strToProcess[i]<>' ' then
      copystr:=copystr+strToProcess[i];
     if strToProcess[i]=' ' then
     begin
      copystr:=''; FirstLetter:='';
     end;
     if (strToProcess[i]=' ') and (strToProcess[i+1]<>' ') then
      FirstLetter:=strToProcess[i+1];
     if (strToProcess[i+1]=' ') and (copystr<>lw) then
     for j := 1 to length(copystr) do
      begin
       if copystr[j]=FirstLetter then
        begin
         write(copystr,' ');
         break;
        end;
      end;
    end;


  writeln('?2--------------------------');
  strToProcess := s;
  lowercase(strToProcess);
  for i := 1 to length(strToProcess) do
   begin
     if (strToProcess[i]='p') and (strToProcess[i+1]) then



   end;







  readln;
end.
