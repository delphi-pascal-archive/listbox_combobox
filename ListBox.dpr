program ListBox;

uses
  Forms,
  LBox in 'LBox.pas' {Form1},
  Number1 in 'Number1.pas' {Form2},
  Number2 in 'Number2.pas' {Form3},
  Frm1 in 'Frm1.pas' {Frame1: TFrame};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
