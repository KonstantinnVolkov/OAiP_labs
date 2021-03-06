unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,gisto;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    rgAmount: TRadioGroup;
    rgArray: TRadioGroup;
    Panel2: TPanel;
    bGistagram: TButton;
    bTable: TButton;
    procedure bTableClick(Sender: TObject);
    procedure bGistagramClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  list_comp: array [1 .. 3] of triple;
  list_swap: array [1 .. 3] of triple;

implementation

Uses fTable, Logic;
{$R *.dfm}

var
  NewArr: TArr;
  compares, exchanges, i: integer;
  sort1, sort2, sort3: TProc;
  //list_comp: array [1 .. 3] of triple;

procedure TForm1.bGistagramClick(Sender: TObject);
begin
  gistForm.show;
end;

procedure TForm1.bTableClick(Sender: TObject);
begin

  sort1 := Insert_Sort;
  sort2 := Bubble_Sort;
  sort3 := Quick_Sort;
  with fResTable.sgTable do
  begin
    cells[0, 0] := 'Тип массива';

    cells[0, 1] := '10 эл. неотсорт.';
    cells[0, 2] := '10 эл. отсорт.';
    cells[0, 3] := '10 обрю пор.';
    cells[0, 4] := '100 эл. неотсорт.';
    cells[0, 5] := '100 эл. отсорт.';
    cells[0, 6] := '100 обрю пор.';
    cells[0, 7] := '2000 эл. неотсорт.';
    cells[0, 8] := '2000 эл. отсорт.';
    cells[0, 9] := '2000 обрю пор.';

    cells[1, 0] := 'сравнения';
    cells[2, 0] := 'перестановки';
    cells[3, 0] := 'сравнения';
    cells[4, 0] := 'перестановки';
    cells[5, 0] := 'сравнения';
    cells[6, 0] := 'перестановки';

    NewArr := Create_Array(10, False, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 1] := IntToStr(compares);
    list_comp[1,1]:=compares;
    list_swap[1,1]:=exchanges;
    cells[2, 1] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);

    cells[3, 1] := IntToStr(compares);
    list_comp[1,2]:=compares;
    list_swap[1,2]:=exchanges;
    cells[4, 1] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);

    cells[5, 1] := IntToStr(compares);
    list_comp[1,3]:=compares;
    cells[6, 1] := IntToStr(exchanges);
    list_swap[1,3]:=exchanges;

    NewArr := Create_Array(10, True, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 2] := IntToStr(compares);
    cells[2, 2] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 2] := IntToStr(compares);
    cells[4, 2] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 2] := IntToStr(compares);
    cells[6, 2] := IntToStr(exchanges);

    NewArr := Create_Array(10, True, True);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 3] := IntToStr(compares);
    cells[2, 3] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 3] := IntToStr(compares);
    cells[4, 3] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 3] := IntToStr(compares);
    cells[6, 3] := IntToStr(exchanges);

    // 100 el
    NewArr := Create_Array(100, False, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 4] := IntToStr(compares);
    list_comp[2,1]:=compares;
    cells[2, 4] := IntToStr(exchanges);
    list_swap[2,1]:=exchanges;
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 4] := IntToStr(compares);
    list_comp[2,2]:=compares;
    cells[4, 4] := IntToStr(exchanges);
    list_swap[2,2]:=exchanges;
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 4] := IntToStr(compares);
    list_comp[2,3]:=compares;
    cells[6, 4] := IntToStr(exchanges);
    list_swap[2,3]:=exchanges;

    NewArr := Create_Array(100, True, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 5] := IntToStr(compares);
    cells[2, 5] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 5] := IntToStr(compares);
    cells[4, 5] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 5] := IntToStr(compares);
    cells[6, 5] := IntToStr(exchanges);

    NewArr := Create_Array(100, True, True);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 6] := IntToStr(compares);
    cells[2, 6] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 6] := IntToStr(compares);
    cells[4, 6] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 6] := IntToStr(compares);
    cells[6, 6] := IntToStr(exchanges);

    // 2000 el

    NewArr := Create_Array(2000, False, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 7] := IntToStr(compares);
    list_comp[3,1]:=compares;
    cells[2, 7] := IntToStr(exchanges);
    list_swap[3,1]:=exchanges;
    sort2(copy(NewArr), compares, exchanges);
    list_comp[3,2]:=compares;
    cells[3, 7] := IntToStr(compares);
    cells[4, 7] := IntToStr(exchanges);
    list_swap[3,2]:=exchanges;
    sort3(copy(NewArr), compares, exchanges);
    list_comp[3,3]:=compares;
    list_swap[3,3]:=exchanges;
    cells[5, 7] := IntToStr(compares);
    cells[6, 7] := IntToStr(exchanges);

    NewArr := Create_Array(2000, True, False);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 8] := IntToStr(compares);
    cells[2, 8] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 8] := IntToStr(compares);
    cells[4, 8] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 8] := IntToStr(compares);
    cells[6, 8] := IntToStr(exchanges);

    NewArr := Create_Array(2000, True, True);
    sort1(copy(NewArr), compares, exchanges);
    cells[1, 9] := IntToStr(compares);
    cells[2, 9] := IntToStr(exchanges);
    sort2(copy(NewArr), compares, exchanges);
    cells[3, 9] := IntToStr(compares);
    cells[4, 9] := IntToStr(exchanges);
    sort3(copy(NewArr), compares, exchanges);
    cells[5, 9] := IntToStr(compares);
    cells[6, 9] := IntToStr(exchanges);


    // ShowMessage(IntToStr(Compares));
    // ShowMessage(IntToStr(Exchanges));

  end;

  fResTable.show;
end;

end.
