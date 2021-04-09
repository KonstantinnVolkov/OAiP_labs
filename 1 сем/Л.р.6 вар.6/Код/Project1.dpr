program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  strutils;

var
  s,lw,wordToCheck,strToProcess :string;
  i,j,k,a :byte;

begin
  writeln('Введите строку s');
  readln(s);
  s := trim(s);
  strToProcess := s;
  lw:='';
  wordToCheck := '';

  if (s = '') or (s = ' ') then
    exit;

  for I := length(s) downto 1 do
    begin
      wordToCheck := wordToCheck + s[i];
      if s[i]=' ' then
        begin
          wordToCheck := trim(wordToCheck);
          break;
        end;
    end;

  for I := length(wordToCheck) downto 1 do
    begin
      lw := lw + wordToCheck[i];
    end;

  wordToCheck := '';
  writeln('Последнее  слово: ',lw);
  writeln('П1--------------------------');
  i := 1;
  j := 2;

  while i <= length(strToProcess) do
    begin
      wordToCheck := wordToCheck + s[i];
      if ((wordToCheck[i] = ' ') or (length(strToProcess)=i)) then
        begin
          wordToCheck := trim(wordToCheck);
          while j <= length(wordToCheck) do
            begin
              if wordToCheck[1]=wordToCheck[j]  then
                begin
                  if (pos(lw,wordToCheck)<>0) or (wordToCheck[1]<>wordToCheck(j))then
                    begin
                      delete(strToProcess,1,length(wordToCheck));
                      wordToCheck := '';
                      strToProcess := trim(strToProcess);
                      i := 1;
                      break;
                    end;
                end;
              
              inc(j);
            end;
          j := 2;
        end;
      inc(i);
    end;
  writeln(strToProcess);
  {writeln('П2--------------------------');
  strToProcess := s;
  for I := 1 to length(strToProcess) do
    begin
      wordToCheck := wordToCheck + s[i];
      if pos(' ',wordToCheck)<>0 then
        begin
          wordToCheck := trim(wordToCheck);
          if (pos(lw,wordToCheck)<>0) and (pos('ph',wordToCheck)<>0) then
            begin
              a := pos('ph',wordToCheck);
              delete(strToProcess,a, 2);
              insert('f',a);
              wordToCheck := '';
            end;
        end;
    end;  }
  readln;
end.
