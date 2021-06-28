program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

Var
  Str, LastWord: string;
  flag: boolean;
procedure WriteString(Var Str: string);
var
  k, i, LenW: integer;
  WrongInputFlag: boolean;
begin
  write('Input your string: ');
  readln(Str);
  for i := Length(Str) downto 1 do
  begin
    if Str[i] = ' ' then
      delete(Str, i, 1)
    else
      break;
  end;
  LenW := 0;
  Str := ' ' + Str + ' ';
  for i := Length(Str) downto 1 do
    if Str[i] <> ' ' then
    begin
      Inc(LenW);
      if (i = 1) or (Str[i - 1] = ' ') then
      begin
        for k := i to i + LenW - 1 do
          if not((Str[k] in ['a' .. 'z']) or (Str[k] in ['A' .. 'Z']) or
            (Str[k] = ' ')) then
          begin
            delete(Str, i, LenW + 1);
            break;
          end;
        LenW := 0;
      end;
    end;
  for i := 1 to Length(Str) do
  begin
    if Str[i] = ' ' then
      delete(Str, i, 1)
    else
      break
  end;
  Str := trim(Str);
   if str = '' then
    begin
      flag:=true;
      Writeln('String is empty!');
    end;
end;

function LastWordInString(out lw: string; Str: string): string;
Var
  i: byte;
begin
  Str := trim(Str);
  Str := ' ' + Str;
  for i := Length(Str) downto 1 do
  begin
    if Str[i] = ' ' then
    begin
      lw := Copy(Str, i + 1, Length(Str));
      break;
    end;
  end;
  Writeln('Last word in string: ', lw);
end;

procedure ActionOne(const lw: string);
var
  StrToProcess, copystr, FirstLetter: string;
  i, j, k: integer;
begin
  Str := trim(Str);
  Write('Point1: ');
  StrToProcess := ' ' + Str + ' ';
  copystr := '';
  for i := 1 to Length(StrToProcess) do
  begin
    if StrToProcess[i] <> ' ' then
      copystr := copystr + StrToProcess[i];
    if StrToProcess[i] = ' ' then
    begin
      copystr := '';
      FirstLetter := '';
    end;
    if (StrToProcess[i] = ' ') and (StrToProcess[i + 1] <> ' ') then
    begin
      FirstLetter := StrToProcess[i + 1];
      k := i + 1
    end;
    if (StrToProcess[i + 1] = ' ') and (copystr <> lw) then
      for j := 2 to Length(copystr) do
      begin
        if copystr[j] = FirstLetter then
        begin
          write(copystr, ' ');
          break;
        end;
      end;
  end;
  Writeln;
end;

procedure ActionTwo(const lw: string);
var
  s, outs, temp: string;
  ph, left, right, i: integer;
begin
  Str := trim(Str);
  s := ' ' + Str + ' ';
  write('Point2: ');
  repeat
    ph := pos('ph', s);
    if ph > 0 then
    begin
      for i := ph to Length(s) do
      begin
        if s[i + 1] = ' ' then
        begin
          right := i;
          break;
        end;
      end;
      for i := ph + 1 downto 1 do
      begin
        if s[i - 1] = ' ' then
        begin
          left := i;
          break;
        end;
      end;
      temp := Copy(s, left, right - left + 1);
      delete(s, ph, 2);
      insert('f', s, ph);
      if temp <> lw then
      begin
        outs := Copy(s, left, right - left);
        Write(outs + ' ');
      end;
      temp := '';
    end;
  until (ph = 0);

end;

begin
  // Input string and correct it
  WriteString(Str);
  if flag=false then
  begin
  // Last word in the string
  LastWordInString(LastWord, Str);

  // P1
  ActionOne(LastWord);

  // P2
  ActionTwo(LastWord);

  end;
  readln;

end.
