program C4DExceptionsDemo01;

uses
  Vcl.Forms,
  C4DExceptionsDemo01.View.Main in 'Src\View\C4DExceptionsDemo01.View.Main.pas' {C4DExceptionsDemo01ViewMain},
  C4D.Exceptions.Base in '..\..\Src\C4D.Exceptions.Base.pas',
  C4D.Exceptions in '..\..\Src\C4D.Exceptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TC4DExceptionsDemo01ViewMain, C4DExceptionsDemo01ViewMain);
  Application.Run;
end.
