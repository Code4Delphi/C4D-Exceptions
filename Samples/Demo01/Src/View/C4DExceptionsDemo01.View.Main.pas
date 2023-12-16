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
    Button3: TButton;
    procedure btnExceptionDefaultClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnMsgClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure btnObligatoryClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  C4DExceptionsDemo01ViewMain: TC4DExceptionsDemo01ViewMain;

implementation

{$R *.dfm}

const
  MSG_PADRAO = 'Esta mensagem não sera exibida';

procedure TC4DExceptionsDemo01ViewMain.btnErrorClick(Sender: TObject);
begin
  raise ExceptionsError.Create('Mesagem de Erro', 'Detalhes');
  ShowMessage(MSG_PADRAO);
end;

procedure TC4DExceptionsDemo01ViewMain.btnExceptionDefaultClick(Sender: TObject);
begin
  raise Exception.Create('Error Message');
  ShowMessage(MSG_PADRAO);
end;

procedure TC4DExceptionsDemo01ViewMain.btnMsgClick(Sender: TObject);
begin
  raise ExceptionsMsg.Create('Mesagem de informação', 'Detalhes');
  ShowMessage(MSG_PADRAO);
end;

procedure TC4DExceptionsDemo01ViewMain.btnObligatoryClick(Sender: TObject);
begin
  raise ExceptionsObligatory.Create('Mesagem de obrigatório', 'Detalhes', Edit1);
  ShowMessage(MSG_PADRAO);
end;

procedure TC4DExceptionsDemo01ViewMain.Button2Click(Sender: TObject);
begin
  Edit1.SetFocus;
  //raise ExceptionsMsg.Create('Mensagem', 'Detalhes', Edit1);
  //raise ExceptionsError.Create('Mensagem', 'Detalhes', Edit1);
end;

procedure TC4DExceptionsDemo01ViewMain.Button3Click(Sender: TObject);
begin
  if(Edit1.Text = '')then
    raise ExceptionsObligatory.Create('Campo obrigatório sem preenchimento', 'Detalhes', ComboBox1);

  if(Edit1.Text = '')then
  begin
    TabSheet1.SetFocus;
    Edit1.SetFocus;
    ShowMessage('Minha mensagem');
    Exit;
  end;

  //CONTINUACAO DO CODIGO
end;

end.
