unit API;

interface

uses
  System.SysUtils;

Type
  TData = record
    ID: string[38];
    DataType: String[80];
    Name: String[80];
    Author: String[80];
    cost: String[80];
    Other: String[80];
  end;

  ptr = ^TElement;

  TElement = record
    next, prev: ptr;
    data: TData;
  end;

  TList = record
    Head, Tail: ptr;
  end;

  TDataArr = record
    DataArr: array of TData;
  end;

var
  Info: TData;
  List: TList;

procedure CreateNewEl(data: TData);
procedure LoadList(var List: TList);
procedure AddToEnd(var List: TList; var NewElement: ptr);
procedure SaveList(const List: TList);
procedure DeleteEl(data: TData);
procedure ReplaceElData(data: TData);
procedure FillDataArr(var FoundData: TDataArr; const Field: integer; const Value: string);
function GenerateUUID: string;

implementation

procedure FillDataArr(var FoundData: TDataArr; const Field: integer; const Value: string);
var
  List: TList;
  curr: ptr;
  i: integer;
begin
  LoadList(List);
  curr := List.head;
  i := 0;
  while curr <> nil do
  begin
    case Field of
    0:                                       //Наименование
      begin
        if Value = curr.data.Name then
          begin
            Setlength(FoundData.DataArr, i + 1);
            FoundData.DataArr[high(FoundData.DataArr)].ID := curr.data.ID;
            FoundData.DataArr[high(FoundData.DataArr)].DataType := curr.data.DataType;
            FoundData.DataArr[high(FoundData.DataArr)].Name := curr.data.Name;
            FoundData.DataArr[high(FoundData.DataArr)].Author := curr.data.Author;
            FoundData.DataArr[high(FoundData.DataArr)].Cost :=  curr.data.Cost;
            FoundData.DataArr[high(FoundData.DataArr)].Other := curr.data.Other;
            inc(i);
          end;
        curr := curr.next;
      end;

    1:                                         //Автор
      begin
        if Value = curr.data.Author then
          begin
            Setlength(FoundData.DataArr, i + 1);
            FoundData.DataArr[high(FoundData.DataArr)].ID := curr.data.ID;
            FoundData.DataArr[high(FoundData.DataArr)].DataType := curr.data.DataType;
            FoundData.DataArr[high(FoundData.DataArr)].Name := curr.data.Name;
            FoundData.DataArr[high(FoundData.DataArr)].Author := curr.data.Author;
            FoundData.DataArr[high(FoundData.DataArr)].Cost :=  curr.data.Cost;
            FoundData.DataArr[high(FoundData.DataArr)].Other := curr.data.Other;
            inc(i);
          end;
        curr := curr.next;
      end;
    end;
  end;

end;

procedure CreateNewEl(data: TData);
var
  List: TList;
  curr: ptr;
begin
  LoadList(List);
  New(curr);
  curr.data := data;
  AddToEnd(List, curr);
  SaveList(List);
end;

procedure LoadList(var List: TList);
var
  f: file of TData;
  tmp, curr: ptr;
begin
  List.head := nil;
  List.tail := nil;
  AssignFile(f, 'Data.txt');
  Reset(f);
  New(curr);
  if FileSize(f) <> 0 then
  begin
    Read(f, curr^.data);
    AddToEnd(List, curr);
    while not EOF(f) do
    begin
      tmp := curr;
      New(curr);
      Read(f, curr.data);
      AddToEnd(List, curr);
      tmp.next := curr;
      curr.prev := tmp;
    end;
  end;
end;

procedure AddToEnd(var List: TList; var NewElement: ptr);
begin
  if List.head = nil then
  begin
    List.head := NewElement;
    List.tail := NewElement;
    NewElement.next := nil;
    NewElement.prev := nil;
    exit;
  end;
  NewElement.next := nil;
  NewElement.prev := List.tail;
  List.tail.next := NewElement;
  List.tail := NewElement;
end;

procedure SaveList(const List: TList);
var
  f: file of TData;
  curr: ptr;
begin
  AssignFile(f, 'Data.txt');
  Rewrite(f);
  curr := List.head;
  while curr <> nil do
  begin
    Write(f, curr^.data);
    curr := curr^.next;
  end;
end;

procedure DeleteEl(data: TData);
var
  List: TList;
  curr: ptr;
begin
  LoadList(List);
  New(curr);
  curr := List.head;
  while curr <> nil do
  begin
    if curr.data.ID = data.ID then
    begin
      if (curr = List.head) and (curr.next = nil) then   // удаление единственной записи
      begin
        Dispose(curr);
        List.head := nil;
      end
      else
      begin
        if curr = List.head then            // удаление первой записи
        begin
          List.head := curr.next;
          curr.next.prev := nil;
          curr.next := nil;
          Dispose(curr);
        end
        else
        begin
          if curr.next = nil then         // удаление последней записи
          begin
            curr.prev.next := nil;
            curr.prev := nil;
            Dispose(curr);
          end
          else
          begin                         // удаление любой другой записи
            curr.prev^.next := curr.next;
            curr.next^.prev := curr.prev;
            curr.prev := nil;
            curr.next := nil;
            Dispose(curr);
          end;
        end;
      end;
    end;
    curr := curr.next;
  end;
  SaveList(List);
end;

function GenerateUUID: string;
var
  Uid: TGuid;
  Res: HResult;
begin
  Res := CreateGuid(Uid);
  if Res = S_OK then
  begin
    Result := Guidtostring(Uid);
  end;
end;

procedure ReplaceElData(data: TData);
Var
  List: TList;
  curr: Ptr;
begin
  LoadList(List);
  New(curr);
  curr := List.head;
  while curr <> nil do
  begin
    if curr.data.ID = data.ID then
    begin
      curr.data := data;
      SaveList(List);
      exit;
    end;
    curr := curr.next;
  end;
end;



end.
