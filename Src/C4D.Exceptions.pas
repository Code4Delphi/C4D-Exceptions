unit C4D.Exceptions;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Dialogs,
  C4D.Exceptions.Base,
  C4D.Msg;

type
  ExceptionMsg = class(EC4DExceptionBase);
  ExceptionError = class(EC4DExceptionBase);
  ExceptionObligatory = class(EC4DExceptionBase);
  ExceptionWarning = class(EC4DExceptionBase);
  ExceptionPermission = class(EC4DExceptionBase);
  ExceptionEmpty = class(EC4DExceptionBase);

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
  if(E is EC4DExceptionBase)then
    LDetails := EC4DExceptionBase(E).Details;

  if(E is ExceptionMsg)then
    ShowMsg(LMsg, LDetails)
  else if(E is ExceptionWarning)then
    ShowWarning(LMsg, LDetails)
  else if(E is ExceptionError)then
    ShowError(LMsg, LDetails)
  else if(E is ExceptionPermission)then
    ShowPermission(LMsg, LDetails)
  else if(E is ExceptionObligatory)then
    ShowObligatory(LMsg, LDetails)
  else if(E is ExceptionEmpty)then
    ShowEmpty(LMsg, LDetails)
  else
    ShowError(E.Message);

  if(E is EC4DExceptionBase)then
    EC4DExceptionBase(E).DoSetFocus;
end;

initialization
  Application.OnException := TC4DExceptions.OnException;

end.
