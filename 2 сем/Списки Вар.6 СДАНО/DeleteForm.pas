unit DeleteForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, API;

type
  TForm3 = class(TForm)
    Label_confirm: TLabel;
    Button_yes: TButton;
    Button_no: TButton;
    procedure Button_noClick(Sender: TObject);
    procedure Button_yesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data: API.TData;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button_noClick(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.Button_yesClick(Sender: TObject);
begin
  API.DeleteEl(Data);
  Form3.Close;
end;

end.
