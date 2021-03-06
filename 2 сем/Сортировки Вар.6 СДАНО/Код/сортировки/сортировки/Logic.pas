unit Logic;

interface

Type
  TArr = array of smallint;
  TProc = procedure(arr: TArr; out compare, exchng: integer);

procedure Bubble_Sort(arr: TArr; out compare, exchng: integer);

procedure Insert_Sort(arr: TArr; out compare, exchng: integer);

procedure Quick_Sort(arr: TArr; out compare, exchng: integer);

function Create_Array(N: integer; sort, rev: boolean): TArr;

implementation

function Create_Array(N: integer; sort, rev: boolean): TArr;
var
  i, len: integer;
  step: shortint;
  arr: TArr;
begin
  randomize;
  SetLength(arr, N);

  if sort then
  begin
    if rev then
      for i := 0 to N - 1 do
        arr[i] := N - i - 1
    else
      for i := 0 to N - 1 do
        arr[i] := i;
  end
  else
    for i := 0 to N - 1 do
      arr[i] := random(200) - 100;

  Result := arr;
end;

procedure Insert_Sort(arr: TArr; out compare, exchng: integer);
var
  i, j, temp, imin: integer;
begin
  compare := 0;
  exchng := 0;
  for i := 1 to Length(arr) - 1 do
  begin
    imin := i;
    //temp := arr[i];
    for j := i + 1 to Length(arr) do
    begin
      inc(compare);
      if arr[j] < temp then imin := j;
    end;
    inc(exchng);
    temp := arr[i];
    arr[i] := arr[imin];
    arr[imin] := temp;

  end;
end;


procedure Bubble_Sort(arr: TArr; out compare, exchng: integer);
var
  i, j, k, N: integer;
begin
  compare := 0;
  exchng := 0;
  for i := 0 to high(arr) - 1 do
  begin
    for j := 0 to high(arr) - i-1 do
    begin
     inc(compare);
      if arr[j]>arr[j + 1] then
      begin
        k := arr[j];
        inc(exchng);
        arr[j] := arr[j + 1];
        inc(exchng);
        arr[j + 1] := k;
        inc(exchng);
      end;
    end;
  end;
end;


procedure calc_quick(var arr: TArr; l, r: integer;
  out compare, exchng: integer);

var
  i, j: integer;
  w, q: integer;

begin
  i := l;
  j := r;
  //inc(exchng);
  q := arr[(l + r) div 2];
  repeat
    //inc(compare);
    while (arr[i] < q) do
    begin
      inc(compare);
      inc(i);
    end;
    inc(compare);
    while (q < arr[j]) do
    begin
      inc(compare);
      Dec(j);
    end;
    if (i <= j) then
    begin
      //inc(exchng);
      w := arr[i];
      inc(exchng);
      arr[i] := arr[j];
      //inc(exchng);
      arr[j] := w;
      inc(i);
      Dec(j);
    end;
  until (i > j);
  if (l < j) then
    calc_quick(arr, l, j, compare, exchng);
  if (i < r) then
    calc_quick(arr, i, r, compare, exchng);
end;

procedure Quick_Sort(arr: TArr; out compare, exchng: integer);
Var
  N: integer;
begin
  compare := 0;
  exchng := 0;
  N := Length(arr) - 1;
  calc_quick(arr, 1, N, compare, exchng);
end;

end.
