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
  EC4DExceptionBase = class(Exception)
  private
    FDetails: string;
    FWinControlFocu: TWinControl;
    procedure Clear;
  public
    constructor Create; reintroduce; overload;
    constructor Create(const AMsg: string); reintroduce; overload;
    constructor Create(const AMsg, ADetails: string); reintroduce; overload;
    constructor Create(const AWinControlFocu: TWinControl); reintroduce; overload;
    constructor Create(const AMsg: string; const AWinControlFocu: TWinControl); reintroduce; overload;
    constructor Create(const AMsg, ADetails: string; AWinControlFocu: TWinControl); reintroduce; overload;
    function Details: string;
    procedure DoSetFocus;
  end;

implementation

constructor EC4DExceptionBase.Create;
begin
  Self.Clear;
end;

constructor EC4DExceptionBase.Create(const AMsg: string);
begin
  Self.Clear;
  Message := AMsg;
end;

constructor EC4DExceptionBase.Create(const AMsg, ADetails: string);
begin
  Self.Clear;
  Message := AMsg;
  FDetails := ADetails;
end;

constructor EC4DExceptionBase.Create(const AWinControlFocu: TWinControl);
begin
  Self.Clear;
  FWinControlFocu := AWinControlFocu;
end;

constructor EC4DExceptionBase.Create(const AMsg: string; const AWinControlFocu: TWinControl);
begin
  Self.Clear;
  Self.Message := AMsg;
  FWinControlFocu := AWinControlFocu;
end;

constructor EC4DExceptionBase.Create(const AMsg, ADetails: string; AWinControlFocu: TWinControl);
begin
  Self.Clear;
  Message := AMsg;
  FDetails := ADetails;
  FWinControlFocu := AWinControlFocu;
end;

procedure EC4DExceptionBase.Clear;
begin
  Message := '';
  FDetails := '';
end;

function EC4DExceptionBase.Details: string;
begin
  Result := FDetails;
end;

procedure EC4DExceptionBase.DoSetFocus;
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
