unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, API, DeleteForm, EditForm,
  SearchForm;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    SortBy: TComboBox;
    MainTable: TStringGrid;
    AddButton: TButton;
    DelButton: TButton;
    CreateButton: TButton;
    SearchButton: TButton;
    ShowAllButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure GetRowData(out Data : API.TData);
    procedure FillTable(const List : API.TList);
    procedure CreateButtonClick(Sender: TObject);
    procedure setSize;
    procedure SortByChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure ShowAllButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  AddForm;

{$R *.dfm}

procedure TForm1.setSize;
begin
  if MainTable.RowCount < 10 then
   begin
    MainTable.ColWidths[0] := 0;
    MainTable.ColWidths[1] := 200;
    MainTable.ColWidths[2] := 200;
    MainTable.ColWidths[3] := 200;
    MainTable.ColWidths[4] := 200;
    MainTable.ColWidths[5] := 345;
  end
 else
  begin
    MainTable.ColWidths[0] := 0;
    MainTable.ColWidths[1] := 149;
    MainTable.ColWidths[2] := 149;
    MainTable.ColWidths[3] := 149;
    MainTable.ColWidths[4] := 149;
    MainTable.ColWidths[5] := 149;
  end;
end;

procedure TForm1.ShowAllButtonClick(Sender: TObject);
var
  List :API.TList;
  i:byte;
begin
  SortBy.ItemIndex:=0;
  API.LoadList(List);
  if List.head=nil then
  begin
   for i := 0 to MainTable.ColCount-1 do
    MainTable.Cells[i,1]:='';
  end
 else FillTable(List);
end;

procedure TForm1.SortByChange(Sender: TObject);
var
  List: API.TList;
  i, j, cnt: integer;
begin
  if MainTable.Cells[0,1] = '' then
  begin
    ShowMessage('?????? ???????????!');
    SortBy.ItemIndex := 0;
    exit;
  end;

  case SortBy.ItemIndex of
  0:
    begin
      API.LoadList(List);
      if List.Head = nil then
      begin
        for I := 0 to MainTable.ColCount - 1 do
          MainTable.Cells[i,1] := '';
      end
      else FillTable(List);
    end;

  1:
    begin
      cnt := MainTable.RowCount;
      for j := 1 to cnt - 1 do
        for i := j+1 to Cnt do
        begin
          if AnsiLowerCase(MainTable.Cells[2, i]) < AnsiLowerCase(MainTable.Cells[2, j]) then
          with MainTable do
          begin
            Rows[Cnt] := Rows[i];
            Rows[i] := Rows[j];
            Rows[j] := Rows[Cnt];
          end;
        end;
    end;

  2:
    begin
      cnt := MainTable.RowCount;
      for j := 1 to cnt - 1 do
        for i := j+1 to Cnt do
        begin
          if AnsiLowerCase(MainTable.Cells[3, i]) < AnsiLowerCase(MainTable.Cells[3, j]) then
          with MainTable do
          begin
            Rows[Cnt] := Rows[i];
            Rows[i] := Rows[j];
            Rows[j] := Rows[Cnt];
          end;
        end;
    end;
  end;
end;

procedure TForm1.FillTable(const List :API.TList);
var
  curr: API.ptr;
  cnt, i: integer;
begin    
  MainTable.RowCount := 2;
  
  if List.Head = nil then
  begin
    for i := 0 to MainTable.ColCount - 1 do
    MainTable.Cells[i,1] := '';  
    exit;
  end;
  
  Curr := List.Head;
  cnt := 1;
  while curr <> nil do
  begin
    with MainTable do
    begin
      cells[0,cnt] := curr.data.ID;
      cells[1,cnt] := curr.data.DataType;
      cells[2,cnt] := curr.data.Name;
      cells[3,cnt] := curr.data.Author;
      cells[4,cnt] := curr.data.cost;
      cells[5,cnt] := curr.data.Other;
    end;
    curr := curr.next;
    inc(cnt);
    MainTable.RowCount := cnt;
  end;
  MainTable.Selection := tGridRect(Rect(1,1,1,1));
end;

procedure TForm1.AddButtonClick(Sender: TObject);
var
  List: API.TList;
begin
  AddForm.Form2.Position := poScreenCenter;
  AddForm.Form2.ShowModal;
  API.LoadList(List);
  setSize;
  FillTable(List);
end;

procedure TForm1.CreateButtonClick(Sender: TObject);
var
  data: API.TData;
  List: API.TList;
begin
  GetRowData(Data);
  if data.ID = '' then
  begin
    ShowMessage('??? ?????? ??? ?????????????!');
    exit;
  end;
  Form4.data := data;
  Form4.Position := poScreenCenter;
  Form4.ShowModal;
  API.LoadList(List);
  setSize;
  FillTable(List);
end;

procedure TForm1.DelButtonClick(Sender: TObject);
var
  Data: API.TData;
  List: API.TList;
  i: byte;
begin
  GetRowData(Data);
  if data.ID = '' then
  begin
    ShowMessage('??? ?????? ??? ????????!');
    exit;
  end;
  
  Form3.data := data;
  DeleteForm.Form3.Position := poScreenCenter;
  Form3.ShowModal;
  LoadList(List);
  setSize;
  FillTable(List);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Position := poScreenCenter;

  MainTable.Cells[1,0] := '???';
  MainTable.Cells[2,0] := '????????????';
  MainTable.Cells[3,0] := '?????';
  MainTable.Cells[4,0] := '????';
  MainTable.Cells[5,0] := '??????????';
  API.LoadList(List);
  setSize;
  FillTable(List);
end;

procedure TForm1.GetRowData(out Data :API.TData);
var
  TableCol, TableRow :integer;
begin
  TableCol := 0;
  TableRow := MainTable.Row;
  Data.ID := MainTable.Cells[TableCol, TableRow];
  Data.DataType := MainTable.Cells[TableCol+1, TableRow];
  Data.Name := MainTable.Cells[TableCol+2,TableRow];
  Data.Author := MainTable.Cells[TableCol+3,TableRow];
  Data.cost := MainTable.Cells[TableCol+4,TableRow];
  Data.Other := MainTable.Cells[TableCol+5,TableRow];
end;

procedure TForm1.SearchButtonClick(Sender: TObject);
var
  FoundData : API.TDataArr;
  i, cnt :integer;
begin
  if MainTable.Cells[0,1]='' then
  begin
    ShowMessage('??? ?????? ??? ??????!');
    exit;
  end;

  Form5.Position := poScreenCenter;
  Form5.ShowModal;

  if not((Form5.Value='') or (Form5.Field=-1)) then
  begin
    API.FillDataArr(FoundData, Form5.Field, Form5.Value);

    if length(FoundData.DataArr)=0 then
      ShowMessage('?? ?????? ??????? ?????? ?? ???????!')
    else
    begin
      with MainTable do
        for i:=0 to ColCount-1 do
          Cols[i].Clear;

      MainTable.Cells[1,0] := '???';
      MainTable.Cells[2,0] := '????????????';
      MainTable.Cells[3,0] := '?????';
      MainTable.Cells[4,0] := '????';
      MainTable.Cells[5,0] := '??????????';

      MainTable.RowCount:= 2;
      cnt:=1;
      for i := 0 to length(FoundData.DataArr)-1 do
      begin
        MainTable.Cells[0, cnt]:=FoundData.DataArr[i].ID;
        MainTable.Cells[1, cnt]:=FoundData.DataArr[i].DataType;
        MainTable.Cells[2, cnt]:=FoundData.DataArr[i].Name;
        MainTable.Cells[3, cnt]:=FoundData.DataArr[i].Author;
        MainTable.Cells[4, cnt]:=FoundData.DataArr[i].cost;
        MainTable.Cells[5, cnt]:=FoundData.DataArr[i].Other;

        cnt := cnt+1;
        MainTable.RowCount:= cnt;
      end;
    end;
  end;
end;

end.
