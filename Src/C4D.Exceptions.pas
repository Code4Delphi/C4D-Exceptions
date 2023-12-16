unit C4D.Exceptions;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Dialogs,
  C4D.Exceptions.Base;

type
  ExceptionsMsg = class(EC4DExceptionsBase);
  ExceptionsError = class(EC4DExceptionsBase);
  ExceptionsObligatory = class(EC4DExceptionsBase);

  TC4DExceptions = class
  private
    class procedure OnException(Sender: TObject; E: Exception);
  end;

implementation

class procedure TC4DExceptions.OnException(Sender: TObject; E: Exception);
var
  LMsg: string;
  LDetails: string;
begin
  LMsg := E.Message;
  LDetails := '';
  if(E is EC4DExceptionsBase)then
    LDetails := EC4DExceptionsBase(E).Details;

  if(E is ExceptionsMsg)then
    ShowMessage('Msg ' + LMsg)
  else if(E is ExceptionsError)then
    ShowMessage('Erro ' + LMsg);
end;

initialization
  Application.OnException := TC4DExceptions.OnException;

end.
