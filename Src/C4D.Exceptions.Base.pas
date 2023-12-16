unit C4D.Exceptions.Base;

interface

uses
  System.SysUtils,
  Vcl.Dialogs,
  Vcl.Controls;

type
  EC4DExceptionsBase = class(Exception)
  private
    FDetails: string;
    FWinControlFocu: TWinControl;
  public
    constructor Create; reintroduce; overload;
    constructor Create(const AMsg: string); reintroduce; overload;
    constructor Create(const AMsg, ADetails: string); reintroduce; overload;
    constructor Create(const AMsg, ADetails: string; AWinControlFocu: TWinControl); reintroduce; overload;

    function Details: string;
  end;

implementation

constructor EC4DExceptionsBase.Create;
begin

end;

constructor EC4DExceptionsBase.Create(const AMsg: string);
begin
  Message := AMsg;
end;

constructor EC4DExceptionsBase.Create(const AMsg, ADetails: string);
begin
  Message := AMsg;
  FDetails := ADetails;
end;

constructor EC4DExceptionsBase.Create(const AMsg, ADetails: string; AWinControlFocu: TWinControl);
begin
  Message := AMsg;
  FDetails := ADetails;
  FWinControlFocu := AWinControlFocu;
end;

function EC4DExceptionsBase.Details: string;
begin
  Result := FDetails;
end;

end.
