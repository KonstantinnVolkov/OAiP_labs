unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TData = record
    InfoType, Name, Author, Cost, Other: String[30];
  end;
  PTItem = ^TItem;
  TItem = record
    Data: TData;
    Next, Prev :PTItem;
  end;
  TList = record
    Head,Tail: PTItem;
    ElemsCount: integer;
  end;
  TForm1 = class(TForm)
    DataSG: TStringGrid;
    Label1: TLabel;
    SortCB: TComboBox;
    SearchE: TEdit;
    Label2: TLabel;
    DeleteButton: TButton;
    SearchButton: TButton;
    Label3: TLabel;
    EAddType: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EName: TEdit;
    Label6: TLabel;
    EAuthor: TEdit;
    Label7: TLabel;
    ECost: TEdit;
    Label8: TLabel;
    EOther: TEdit;
    AddButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DataSGClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Procedure AddToEnd (var List:TList; NewElPointer: PTItem);
Procedure ShowItems (Const List: Tlist);

var
  Form1: TForm1;
  List: Tlist;
implementation

{$R *.dfm}

procedure TForm1.AddButtonClick(Sender: TObject);
var
  curr: PTItem;
begin
  curr := nil;
  new(curr);
  Curr^.data.infoType := EAddType.text;
  Curr^.data.Name := EName.text;
  Curr^.data.Author := EAuthor.text;
  Curr^.data.Cost := ECost.text;
  Curr^.data.Other := EOther.text;
  AddToEnd(list,curr);
  ShowItems(List);
end;
procedure TForm1.DataSGClick(Sender: TObject);
begin
  dataSg.Options := dataSg.Options + [goEditing];
  dataSg.Options := dataSg.Options + [goRowSelect];
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  curr: PTItem;
begin
  curr := nil;
  List.Head := nil;
  List.Tail := nil;
  new(Curr);
  Curr^.Data.Name := 'test';
  addToEnd(List,Curr);
  Curr^.Data.Name := 'test2';
  AddToEnd(List,Curr);
  ShowItems(List);
  dataSg.Cells[0,0] := '���';
  dataSg.Cells[1,0] := '������������';
  dataSg.Cells[2,0] := '�����';
  dataSg.Cells[3,0] := '����';
  dataSg.Cells[4,0] := '����������';
end;

Procedure AddToEnd (var List:TList; NewElPointer: PTItem);
begin
  inc(list.ElemsCount);
  if (list.Head = nil) then
  begin
    list.Head := NewElPointer;
    list.Tail := NewElPointer;
    NewElPointer^.Next := nil;
    NewElPointer^.Prev := nil;
    exit;
  end;
  NewElPointer^.Next := nil;
  NewElPointer^.prev := List.Tail;
  List.Tail^.Next := NewElPointer;
  List.Tail := NewElPointer;
end;

Procedure ShowItems (Const List: Tlist);
var
  Curr: PTItem;
begin
  Curr := list.Head;
  ShowMessage(List.ElemsCount.ToString);
  with Form1.DataSG do
  begin

  end;
//  while curr <> nil do
//  begin
//    ShowMessage(Curr^.Data.Name);
//    curr := curr^.Next;
//  end;
//  showMessage(curr^.Data.Name);
end;



end.
