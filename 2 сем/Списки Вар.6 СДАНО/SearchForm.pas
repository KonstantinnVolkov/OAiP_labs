unit SearchForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Combo1: TComboBox;
    Confirm: TButton;
    Edit1: TEdit;
    procedure Combo1Change(Sender: TObject);
    procedure ConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Field :integer;
    Value :string;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Combo1Change(Sender: TObject);
var
  i: integer;
begin
  Edit1.Enabled := true;
  Field := Combo1.ItemIndex;
  Edit1.Clear;
end;

procedure TForm5.ConfirmClick(Sender: TObject);
begin
  if Combo1.ItemIndex=-1 then
  begin
    ShowMessage('¬ведите данные в поле "1"!'); exit;
  end;
  Value:=trim(Edit1.Text);
  if Value='' then
  begin
    ShowMessage('¬ведите данные в поле "2"!'); exit;
  end
   else Form5.Close;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  Combo1.ItemIndex:=-1;
  Edit1.Clear;
  Edit1.Enabled:=false;
end;

end.
