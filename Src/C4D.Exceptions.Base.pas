unit C4D.Exceptions.Base;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Dialogs,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.ComCtrls;

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
    procedure DoSetFocus;
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

procedure EC4DExceptionsBase.DoSetFocus;
var
  LParent: TComponent;
begin
  if(not Assigned(FWinControlFocu))then
    Exit;

  LParent := FWinControlFocu.Parent;
  while(LParent <> nil)and(LParent.ClassParent <> TForm)do
  begin
    if(LParent is TTabSheet)then
      if(not TTabSheet(LParent).Showing)then
        TTabSheet(LParent).Show;

    LParent := TWinControl(LParent).Parent;
  end;

  if(FWinControlFocu.CanFocus)then
    FWinControlFocu.SetFocus;
end;

end.
