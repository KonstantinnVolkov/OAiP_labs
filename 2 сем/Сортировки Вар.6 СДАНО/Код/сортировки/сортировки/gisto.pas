unit gisto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Logic, Math;

type
  triple = array [1 .. 3] of integer;

  TgistForm = class(TForm)
    Img: TImage;
    gisLabel: TLabel;
    procedure DrawGist(Sender: TObject);
    procedure HideGist(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gistForm: TgistForm;
  sort1, sort2, sort3: TProc;

implementation

{$R *.dfm}

uses main;

procedure DrawAxis(cordX, cordY, UpperLime: integer; Img: TImage);
var
  i: byte;
begin
  with Img.Canvas do
  begin
    Pen.Color := clBlack;
    MoveTo(cordX, cordY);
    LineTo(cordX, cordY - 320);
    MoveTo(cordX, cordY);
    LineTo(cordX + 200, cordY);

    for i := 1 to 10 do
    begin
      TextOut(cordX - 20, cordY - i * 32 + 5, inttostr(UpperLime div 10 * i));
      MoveTo(cordX - 2, cordY - i * 32);
      LineTo(cordX + 2, cordY - i * 32);
    end;

  end;
end;

procedure DrawColum(cordX, cordY, UpperLim, wid, value: integer; clr: TColor;
  Img: TImage);
begin
  with Img.Canvas do
  begin
    Brush.Color := clr;
    Pen.Color := clr;
    Rectangle(cordX, cordY, cordX + wid, cordY - round(value / UpperLim * 320));
    Brush.Color := clWhite;
    TextOut(cordX + wid div 4, cordY - round(value / UpperLim * 320) - 14,
      inttostr(value));
  end;

end;

function MaxSize(arr: triple): integer;
var
  max, len: integer;
  temp: real;
begin
  if (arr[1] >= arr[2]) and (arr[1] >= arr[3]) then
    max := arr[1];
  if (arr[2] >= arr[1]) and (arr[2] >= arr[3]) then
    max := arr[2];
  if (arr[3] >= arr[1]) and (arr[3] >= arr[2]) then
    max := arr[3];
  temp := max;
  len := 1;
  while temp > 10 do
  begin
    len := 10 * len;
    temp := temp / 10;
  end;
  Result := Ceil(temp) * len;

end;

procedure TgistForm.DrawGist(Sender: TObject);
var
  str: string;
  amount, max, swaps, compr: integer;
  rev, sort: boolean;
  arr: TArr;
  max_swap: integer;
  max_comp: integer;
  sizes: triple;
begin
  sort1 := Insert_Sort;
  sort2 := Bubble_Sort;
  sort3 := Quick_Sort;
  sort := false;
  rev := false;
  str := 'Гистограмма для ';
  case Form1.rgArray.ItemIndex of
    0:
      begin
        str := str + 'случайного ';
      end;
    1:
      begin
        str := str + 'отсортированного ';
        sort := true;
      end;
    2:
      begin
        str := str + 'обрт. отсортированного ';
        sort := true;
        rev := true;
      end;
  end;

  case Form1.rgAmount.ItemIndex of
    0:
      begin
        amount := 10;
        str := str + '10 элем..';
        max_comp := 50;
      end;
    1:
      begin
        str := str + '100 элем.';
        max_comp := 5000;
        amount := 100;
      end;
    2:
      begin
        str := str + '2000 элем.';
        max_comp := 2000000;
        amount := 2000;
      end;
  end;
  gisLabel.Caption := str;
  if Form1.rgArray.ItemIndex = 0 then
  begin
    max_swap := MaxSize(list_swap[Form1.rgAmount.ItemIndex + 1]);
    DrawColum(30, 340, max_comp, 40, list_comp[Form1.rgAmount.ItemIndex + 1][1],
      clBlue, Img);
    DrawColum(70, 340, max_comp, 40, list_comp[Form1.rgAmount.ItemIndex + 1][2],
      clGreen, Img);
    DrawColum(110, 340, max_comp, 40, list_comp[Form1.rgAmount.ItemIndex + 1]
      [3], clPurple, Img);
    DrawColum(270, 340, max_swap, 40, list_swap[Form1.rgAmount.ItemIndex + 1]
      [1], clBlue, Img);
    DrawColum(310, 340, max_swap, 40, list_swap[Form1.rgAmount.ItemIndex + 1]
      [2], clGreen, Img);
    DrawColum(350, 340, max_swap, 40, list_swap[Form1.rgAmount.ItemIndex + 1]
      [3], clPurple, Img);
  end
  else
  begin

    arr := Create_Array(amount, sort, rev);
    sort1(copy(arr), compr, swaps);
    DrawColum(30, 340, max_comp, 40, compr, clBlue, Img);
    sizes[1] := swaps;
    sort2(copy(arr), compr, swaps);
    DrawColum(70, 340, max_comp, 40, compr, clGreen, Img);
    sizes[2] := swaps;
    sort3(copy(arr), compr, swaps);
    DrawColum(110, 340, max_comp, 40, compr, clPurple, Img);
    sizes[3] := swaps;
    max_swap := MaxSize(sizes);
    DrawColum(270, 340, max_swap, 40, sizes[1], clBlue, Img);
    DrawColum(310, 340, max_swap, 40, sizes[2], clGreen, Img);
    DrawColum(350, 340, max_swap, 40, sizes[3], clPurple, Img);
  end;
  Img.Canvas.Pen.Color := clBlack;
  Img.Canvas.TextOut(260,340,'Перестановки');
  Img.Canvas.TextOut(20,340,'Сравнения');

  DrawAxis(30, 340, max_comp, Img);
  DrawAxis(270, 340, max_swap, Img);

end;

procedure TgistForm.HideGist(Sender: TObject);
begin
  with Img.Canvas do
  begin
    Brush.Color := clWhite;
    Pen.Color := clWhite;
    Rectangle(0, 0, 1000, 1000);
  end;

end;

end.
