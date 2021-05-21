﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TArray = array of integer;

  TForm1 = class(TForm)
    StaticText1: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText17: TStaticText;
    StaticText20: TStaticText;
    comp10_bubble_U: TStaticText;
    trans10_bubble_U: TStaticText;
    StaticText2: TStaticText;
    comp10_bubble_S: TStaticText;
    trans10_bubble_S: TStaticText;
    StaticText5: TStaticText;
    comp10_bubble_R: TStaticText;
    trans10_bubble_R: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    comp10_quick_U: TStaticText;
    trans10_quick_U: TStaticText;
    comp10_quick_S: TStaticText;
    trans10_quick_S: TStaticText;
    comp10_quick_R: TStaticText;
    trans10_quick_R: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    comp10_straight_U: TStaticText;
    trans10_straight_U: TStaticText;
    comp10_straight_S: TStaticText;
    trans10_straight_S: TStaticText;
    comp10_straight_R: TStaticText;
    trans10_straight_R: TStaticText;
    StaticText30: TStaticText;
    comp100_bubble_U: TStaticText;
    trans100_bubble_U: TStaticText;
    StaticText33: TStaticText;
    comp100_bubble_S: TStaticText;
    trans100_bubble_S: TStaticText;
    StaticText36: TStaticText;
    comp100_bubble_R: TStaticText;
    trans100_bubble_R: TStaticText;
    comp100_quick_U: TStaticText;
    trans100_quick_U: TStaticText;
    comp100_quick_S: TStaticText;
    trans100_quick_S: TStaticText;
    comp100_quick_R: TStaticText;
    trans100_quick_R: TStaticText;
    comp100_straight_U: TStaticText;
    trans100_straight_U: TStaticText;
    comp100_straight_S: TStaticText;
    trans100_straight_S: TStaticText;
    comp100_straight_R: TStaticText;
    trans100_straight_R: TStaticText;
    StaticText51: TStaticText;
    comp2000_bubble_U: TStaticText;
    trans2000_bubble_U: TStaticText;
    StaticText54: TStaticText;
    comp2000_bubble_S: TStaticText;
    trans2000_bubble_S: TStaticText;
    StaticText57: TStaticText;
    comp2000_bubble_R: TStaticText;
    trans2000_bubble_R: TStaticText;
    comp2000_quick_U: TStaticText;
    trans2000_quick_U: TStaticText;
    comp2000_quick_S: TStaticText;
    trans2000_quick_S: TStaticText;
    comp2000_quick_R: TStaticText;
    trans2000_quick_R: TStaticText;
    comp2000_straight_U: TStaticText;
    trans2000_straight_U: TStaticText;
    comp2000_straight_S: TStaticText;
    trans2000_straight_S: TStaticText;
    comp2000_straight_R: TStaticText;
    trans2000_straight_R: TStaticText;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AmountCB: TComboBox;
    StartButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, a1, Sorted, reversed: TArray;
  compare, transposition: integer;
  offset  :integer;

implementation

{$R *.dfm}

procedure Drawing(var img: TImage);
var
  x0, y0: integer;
begin
  img.Canvas.Pen.Color := clBlack;
  img.Canvas.Pen.Width := 1;
  x0 := round(img.Width div 2);
  y0 := round(img.Height div 2);
  with img.Canvas do
  begin
    Rectangle(0, 0, img.Width, img.Height);
    MoveTo(x0, 0);
    LineTo(x0, img.Height);
  end;
end;

function bubble_sort(arr: TArray): TArray;
var
  max, i, j, temp: integer;
begin
  compare := 0;
  transposition := 0;
  max := Length(arr) - 1;
  for j := 0 to max do
    for i := 0 to max - 1 do
    begin
      inc(compare);
      if arr[i] > arr[i + 1] then
      begin
        temp := arr[i];
        arr[i] := arr[i + 1];
        arr[i + 1] := temp;
        inc(transposition);
      end;
    end;
end;

procedure quick_sort(arr: TArray; min, max: integer);
var
  temp, mid, supp, i, j: integer;
begin
  supp := arr[(max + min) div 2];
  inc(transposition);
  i := min;
  j := max;
  repeat
    while arr[i] < supp do
    begin
      inc(compare);
      inc(i);
    end;
    while arr[j] > supp do
    begin
      dec(j);
      inc(compare);
    end;
    if i <= j then
    begin
      inc(compare);
      inc(transposition);
      temp := arr[i];
      arr[i] := arr[j];
      arr[j] := temp;
      inc(i);
      dec(j);
    end;
  until i > j;
  if min < j then
  begin
    quick_sort(arr, min, j);
  end;
  if i < max then
  begin
    quick_sort(arr, i, max);
  end;
end;

procedure selection(arr: TArray);
var
  i, j, MinInd, x: integer;
begin
  compare := 0;
  transposition := 0;
  for i := 0 to Length(arr) - 2 do
  begin
    MinInd := i;
    x := arr[i];
    for j := i + 1 to Length(arr)-1 do
    begin
      inc(compare);
      if arr[j] < x then
      begin
        MinInd := j;
        x := arr[MinInd];
      end;
    end;
    inc(transposition);
    arr[MinInd] := arr[i];
    arr[i] := x;
  end;

end;

procedure reverse_array(arr: TArray);
var
  i, temp, max: integer;
begin
  max := Length(arr) - 1;
  for i := 0 to (Length(arr) div 2)-1 do
  begin
    temp := arr[i];
    arr[i] := arr[max - i];
    arr[max - i] := temp;
  end;
end;

procedure generate_mas(Amount: integer; out arr: TArray; var Form1: TForm1);
var
  i: integer;
begin
  randomize;
  SetLength(arr, Amount);
  for i := 0 to Amount - 1 do
  begin
    arr[i] := random(Amount * 10);
  end;
end;

procedure bar_graph (offsetL, offsetR :integer; AmountCB: TComboBox; img :TImage);
begin
  case AmountCB.ItemIndex of
  0:
    begin
      img.Canvas.Pen.Width := 2;
      img.Canvas.Rectangle(offsetL,img.height - transposition * 5,offsetR,img.Height-1);
      img.Canvas.Brush.Color := clWhite;
      img.Canvas.TextOut(offsetL,(img.height-transposition * 5)-20,transposition.ToString)
    end;

  1:
    begin
      img.Canvas.Pen.Width := 2;
      img.Canvas.Rectangle(offsetL,img.height - transposition div 25, offsetR,img.Height-1);
      img.Canvas.Brush.Color := clWhite;
      img.Canvas.TextOut(offsetL,(img.height-transposition div 25)-20,transposition.ToString)
    end;
    
  2:
    begin
      img.Canvas.Pen.Width := 2;
      img.Canvas.Rectangle(offsetL,img.height - transposition div 100, offsetR,img.Height-1);
      img.Canvas.Brush.Color := clWhite;
      img.Canvas.TextOut(offsetL,(img.height-transposition div 100 )-20,transposition.ToString)
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Drawing(Image1);
  Drawing(Image2);
  Drawing(Image3);
  offset := round((image1.Height div 5) div 2 );
end;

procedure TForm1.StartButtonClick(Sender: TObject);
begin
  case AmountCB.ItemIndex of
    0:
      begin
        Drawing(Image1);
        Drawing(Image2);
        Drawing(Image3);
        generate_mas(10, a1, Form1); // Генерим массив
        a := copy(a1);
        bubble_sort(a); // сортируем его
        Form1.comp10_bubble_U.Caption := IntToStr(compare);
        Form1.trans10_bubble_U.Caption := IntToStr(transposition);
        image1.Canvas.Pen.Width := 2;
        Image1.Canvas.Pen.Color := clWebAquamarine;
        Image1.Canvas.brush.Color := clWebAquamarine;
        bar_graph(offset,2*offset,AmountCB,image1);
        Sorted := copy(a);
        bubble_sort(Sorted); // сортируем отсортированный
        Form1.comp10_bubble_S.Caption := IntToStr(compare);
        Form1.trans10_bubble_S.Caption := IntToStr(transposition);
        image2.Canvas.Pen.Width := 2;
        Image2.Canvas.Pen.Color := clWebAquamarine;
        Image2.Canvas.brush.Color := clWebAquamarine;
        bar_graph(offset,2*offset,AmountCB,image2);
        //image2.Canvas.Rectangle(offset,image1.height  - transposition, 2*offset,image1.Height-1);
        reversed := copy(sorted);
        reverse_array(Reversed); // реверс сортированного
        bubble_sort(reversed); // сортируем реверснутый
        Form1.comp10_bubble_R.Caption := IntToStr(compare);
        Form1.trans10_bubble_R.Caption := IntToStr(transposition);
        image3.Canvas.Pen.Width := 2;
        Image3.Canvas.Pen.Color := clWebAquamarine;
        Image3.Canvas.brush.Color := clWebAquamarine;
        bar_graph(offset,2*offset,AmountCB,image3);
        //image3.Canvas.Rectangle(offset,image1.height  - transposition, 2*offset,image1.Height-1);

        compare := 0;
        transposition := 0;
        a := copy(a1);
        quick_sort(a, 0, 9);    // сортируем его
        Form1.comp10_quick_U.Caption := IntToStr(compare);
        Form1.trans10_quick_U.Caption := IntToStr(transposition);
        image1.Canvas.Pen.Width := 2;
        Image1.Canvas.Pen.Color := clWebRed;
        Image1.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image1);
        //image1.Canvas.Rectangle(2*offset,image1.height  - transposition, 3*offset,image1.Height-1);
        compare := 0;
        transposition := 0;
        Sorted := copy(a);
        quick_sort(Sorted, 0, 9);     // сортируем отсортированный
        Form1.comp10_quick_S.Caption := IntToStr(compare);
        Form1.trans10_quick_S.Caption := IntToStr(transposition);
        image2.Canvas.Pen.Width := 2;
        Image2.Canvas.Pen.Color := clWebRed;
        Image2.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image2);
        compare := 0;
        transposition := 0;
        reversed := copy(sorted);
        reverse_array(reversed);
        quick_sort(reversed, 0, 9);     // сортируем реверснутый
        Form1.comp10_quick_R.Caption := IntToStr(compare);
        Form1.trans10_quick_R.Caption := IntToStr(transposition);
        image3.Canvas.Pen.Width := 2;
        Image3.Canvas.Pen.Color := clWebRed;
        Image3.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image3);

        a := copy(a1);
        selection(a); // сортируем его
        Form1.comp10_straight_U.Caption := IntToStr(compare);
        Form1.trans10_straight_U.Caption := IntToStr(transposition);
        image1.Canvas.Pen.Width := 2;
        Image1.Canvas.Pen.Color := clWebMediumBlue;
        Image1.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image1);
        Sorted := copy(a);
        selection(Sorted); // сортируем отсортированный
        Form1.comp10_straight_S.Caption := IntToStr(compare);
        Form1.trans10_straight_S.Caption := IntToStr(transposition);
        image2.Canvas.Pen.Width := 2;
        Image2.Canvas.Pen.Color := clWebMediumBlue;
        Image2.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image2);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        selection(reversed); // сортируем реверснутый
        Form1.comp10_straight_R.Caption := IntToStr(compare);
        Form1.trans10_straight_R.Caption := IntToStr(transposition);
        image3.Canvas.Pen.Width := 2;
        Image3.Canvas.Pen.Color := clWebMediumBlue;
        Image3.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image3);
      end;

    1:
      begin
        Drawing(Image1);
        Drawing(Image2);
        Drawing(Image3);
        generate_mas(100, a1, Form1); // Генерим массив
        a := copy(a1);
        bubble_sort(a); // сортируем его
        Form1.comp100_bubble_U.Caption := IntToStr(compare);
        Form1.trans100_bubble_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebAquamarine;
        Image1.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image1);
        Sorted := copy(a);
        bubble_sort(Sorted); // сортируем отсортированный
        Form1.comp100_bubble_S.Caption := IntToStr(compare);
        Form1.trans100_bubble_S.Caption := IntToStr(transposition);
        Image2.Canvas.Pen.Color := clWebAquamarine;
        Image2.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image2);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        bubble_sort(reversed); // сортируем реверснутый
        Form1.comp100_bubble_R.Caption := IntToStr(compare);
        Form1.trans100_bubble_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebAquamarine;
        Image3.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image3);

        compare := 0;
        transposition := 0;
        a := copy(a1);
        quick_sort(a, 0, 99); // сортируем его
        Form1.comp100_quick_U.Caption := IntToStr(compare);
        Form1.trans100_quick_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebRed;
        Image1.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image1);
        compare := 0;
        transposition := 0;
        Sorted := copy(a);
        quick_sort(Sorted, 0, 99); // сортируем отсортированный
        Form1.comp100_quick_S.Caption := IntToStr(compare);
        Form1.trans100_quick_S.Caption := IntToStr(transposition);
        Image2.Canvas.Pen.Color := clWebRed;
        Image2.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image2);
        reversed := copy(Sorted);
        reverse_array(reversed); // реверс сортированного
        compare := 0;
        transposition := 0;
        quick_sort(reversed, 0, 99); // сортируем реверснутый
        Form1.comp100_quick_R.Caption := IntToStr(compare);
        Form1.trans100_quick_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebRed;
        Image3.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image3);

        a := copy(a1);
        selection(a); // сортируем его
        Form1.comp100_straight_U.Caption := IntToStr(compare);
        Form1.trans100_straight_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebMediumBlue;
        Image1.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image1);
        Sorted := copy(a);
        selection(sorted); // сортируем отсортированный
        Form1.comp100_straight_S.Caption := IntToStr(compare);
        Form1.trans100_straight_S.Caption := IntToStr(transposition);
        Image2.Canvas.Pen.Color := clWebMediumBlue;
        Image2.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image2);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        selection(reversed); // сортируем реверснутый
        Form1.comp100_straight_R.Caption := IntToStr(compare);
        Form1.trans100_straight_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebMediumBlue;
        Image3.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image3);
      end;

    2:
      begin
        Drawing(Image1);
        Drawing(Image2);
        Drawing(Image3);
        generate_mas(2000, a1, Form1); // Генерим массив
        a := copy(a1);
        bubble_sort(a); // сортируем его
        Form1.comp2000_bubble_U.Caption := IntToStr(compare);
        Form1.trans2000_bubble_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebAquamarine;
        Image1.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image1);
        Sorted := copy(a);
        bubble_sort(Sorted); // сортируем отсортированный
        Form1.comp2000_bubble_S.Caption := IntToStr(compare);
        Form1.trans2000_bubble_S.Caption := IntToStr(transposition);
        Image2.Canvas.Pen.Color := clWebAquamarine;
        Image2.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image2);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        bubble_sort(reversed); // сортируем реверснутый
        Form1.comp2000_bubble_R.Caption := IntToStr(compare);
        Form1.trans2000_bubble_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebAquamarine;
        Image3.Canvas.brush.Color := clWebAquamarine;
        bar_graph(1*offset,2*offset,AmountCB,image3);

        a := copy(a1);
        compare := 0;
        transposition := 0;
        quick_sort(a, 0, 1999); // сортируем его
        Form1.comp2000_quick_U.Caption := IntToStr(compare);
        Form1.trans2000_quick_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebRed;
        Image1.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image1);
        compare := 0;
        transposition := 0;
        Sorted := copy(a);
        quick_sort(Sorted, 0, 1999); // сортируем отсортированный
        Image2.Canvas.Pen.Color := clWebRed;
        Image2.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image2);
        Form1.comp2000_quick_S.Caption := IntToStr(compare);
        Form1.trans2000_quick_S.Caption := IntToStr(transposition);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        compare := 0;
        transposition := 0;
        quick_sort(reversed, 0, 1999); // сортируем реверснутый
        Form1.comp2000_quick_R.Caption := IntToStr(compare);
        Form1.trans2000_quick_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebRed;
        Image3.Canvas.brush.Color := clWebRed;
        bar_graph(2*offset,3*offset,AmountCB,image3);

        a := copy(a1);
        selection(a); // сортируем его
        Form1.comp2000_straight_U.Caption := IntToStr(compare);
        Form1.trans2000_straight_U.Caption := IntToStr(transposition);
        Image1.Canvas.Pen.Color := clWebMediumBlue;
        Image1.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image1);
        Sorted := copy(a);
        selection(Sorted); // сортируем отсортированный
        Form1.comp2000_straight_S.Caption := IntToStr(compare);
        Form1.trans2000_straight_S.Caption := IntToStr(transposition);
        Image2.Canvas.Pen.Color := clWebMediumBlue;
        Image2.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image2);
        reversed := copy(sorted);
        reverse_array(reversed); // реверс сортированного
        selection(reversed); // сортируем реверснутый
        Form1.comp2000_straight_R.Caption := IntToStr(compare);
        Form1.trans2000_straight_R.Caption := IntToStr(transposition);
        Image3.Canvas.Pen.Color := clWebMediumBlue;
        Image3.Canvas.brush.Color := clWebMediumBlue;
        bar_graph(3*offset,4*offset,AmountCB,image3);
      end;
  end;
end;

end.
