unit AddForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit3;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    EAddType: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EName: TEdit;
    Label4: TLabel;
    EAuthor: TEdit;
    Label5: TLabel;
    ECost: TEdit;
    Label6: TLabel;
    EOther: TEdit;
    AddButton: TButton;
    procedure AddButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddButtonClick(Sender: TObject);
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
  AddToEnd(Form3.list,curr);
end;

end.
