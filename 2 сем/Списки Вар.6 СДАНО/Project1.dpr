program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  AddForm in 'AddForm.pas' {Form2},
  API in 'API.pas',
  DeleteForm in 'DeleteForm.pas' {Form3},
  EditForm in 'EditForm.pas' {Form4},
  SearchForm in 'SearchForm.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
