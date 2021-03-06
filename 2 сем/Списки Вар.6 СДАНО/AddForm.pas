unit AddForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, API;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    TypeEdit: TEdit;
    Label2: TLabel;
    NameEdit: TEdit;
    Label3: TLabel;
    AuthorEdit: TEdit;
    Label4: TLabel;
    CostEdit: TEdit;
    Label5: TLabel;
    OtherEdit: TEdit;
    AddButton: TButton;
    CancelButton: TButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure TypeEditKeyPress(Sender: TObject; var Key: Char);
    procedure NameEditKeyPress(Sender: TObject; var Key: Char);
    procedure AuthorEditKeyPress(Sender: TObject; var Key: Char);
    procedure CostEditKeyPress(Sender: TObject; var Key: Char);
    procedure AddButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  DataFile: file of API.TData;

implementation

{$R *.dfm}

procedure TForm2.CancelButtonClick(Sender: TObject);
begin
  Form2.close;
end;

procedure TForm2.AddButtonClick(Sender: TObject);
var
  str: string;
  Data: API.TData;
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

  Data.ID := API.GenerateUUID;
  data.Other := trim(OtherEdit.Text);
  API.CreateNewEl(Data);

  Form2.close;
end;

procedure TForm2.CostEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  TypeEdit.Text := '';
  NameEdit.Text := '';
  AuthorEdit.Text := '';
  CostEdit.Text := '';
  OtherEdit.Text := '';
  TypeEdit.SetFocus;
end;

procedure TForm2.AuthorEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm2.NameEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

procedure TForm2.TypeEditKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'?????Ũ???????????????????????????????????????????????????????????')>0) then
    if not (Key in ['a'..'z', 'A'..'Z', ' ', '.', '/', '(', ')', '0'..'9', ':', '-', char(ord(vk_delete)),char(ord(vk_back))])
    Then
    begin
      beep;
      Key := #0;
    end;
end;

end.
