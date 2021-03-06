unit EditForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, API, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TypeEdit: TEdit;
    NameEdit: TEdit;
    AuthorEdit: TEdit;
    CostEdit: TEdit;
    OtherEdit: TEdit;
    SaveButton: TButton;
    CancelButton: TButton;
    procedure TypeEditKeyPress(Sender: TObject; var Key: Char);
    procedure NameEditKeyPress(Sender: TObject; var Key: Char);
    procedure AuthorEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data: API.TData;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
  TypeEdit.Text := Data.DataType;
  NameEdit.Text := Data.Name;
  AuthorEdit.Text := Data.Author;
  CostEdit.Text := Data.cost;
  OtherEdit.Text := Data.Other;
  TypeEdit.SetFocus;
end;

procedure TForm4.CancelButtonClick(Sender: TObject);
begin
  Form4.close;
end;

procedure TForm4.CostEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm4.AuthorEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm4.NameEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm4.TypeEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm4.SaveButtonClick(Sender: TObject);
var
  str: string;
begin
  str := trim(TypeEdit.Text);
  if str = '' then
  begin
    ShowMessage('???? "???" ?? ????? ???? ??????!');
    exit;
  end
  else
  data.DataType := str;
  str := '';

  str := trim(NameEdit.Text);

  if str = '' then
  begin
    ShowMessage('???? "????????????" ?? ????? ???? ??????!');
    exit;
  end
  else
  data.Name := str;
  str := '';

  str := trim(AuthorEdit.Text);
  if str = '' then
  begin
    ShowMessage('???? "?????" ?? ????? ???? ??????!');
    exit;
  end
  else
  data.Author := str;
  str := '';

  str := trim(CostEdit.Text);
  if str = '' then
  begin
    ShowMessage('???? "????" ?? ????? ???? ??????!');
    exit;
  end
  else
  data.Cost := str;
  str := '';

  data.Other := trim(OtherEdit.Text);
  API.ReplaceElData(Data);

  Form4.close;
end;

end.
