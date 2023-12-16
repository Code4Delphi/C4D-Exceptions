unit C4DExceptionsDemo01.View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  C4D.Exceptions;

type
  TC4DExceptionsDemo01ViewMain = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    TabSheet2: TTabSheet;
    Panel9: TPanel;
    btnMsg: TButton;
    btnWarning: TButton;
    btnError: TButton;
    btnEmpty: TButton;
    btnPermission: TButton;
    btnObligatory: TButton;
    btnExceptionDefault: TButton;
    Button2: TButton;
    procedure btnExceptionDefaultClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  C4DExceptionsDemo01ViewMain: TC4DExceptionsDemo01ViewMain;

implementation

{$R *.dfm}

procedure TC4DExceptionsDemo01ViewMain.btnExceptionDefaultClick(Sender: TObject);
begin
  raise Exception.Create('Exception padr�o do Delphi');
end;

procedure TC4DExceptionsDemo01ViewMain.Button2Click(Sender: TObject);
begin
  Edit1.SetFocus;
  //raise ExceptionsMsg.Create('Mensagem', 'Detalhes', Edit1);
  //raise ExceptionsError.Create('Mensagem', 'Detalhes', Edit1);
end;

end.
