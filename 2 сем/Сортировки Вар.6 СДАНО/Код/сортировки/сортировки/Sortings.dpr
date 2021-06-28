program Sortings;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  fTable in 'fTable.pas' {fResTable},
  Logic in 'Logic.pas',
  gisto in 'gisto.pas' {gistForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfResTable, fResTable);
  Application.CreateForm(TgistForm, gistForm);
  Application.Run;
end.
