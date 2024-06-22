unit TSistema.View.Cadastro.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.Model.Conexao.Principal,
  TSistema.View.TelaCadastros.DadosInsertUpdate, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, CadastroClientes,
  System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmCadastroDadosCliente = class(TfrmCadastroDados)
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblEndereco: TLabel;
    edtEndereco: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    lblCodigo: TDBText;
    edtTelefoneMask: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2EditarClick(Sender: TObject);
    procedure edtTelefoneMaskEnter(Sender: TObject);
    procedure edtTelefoneMaskExit(Sender: TObject);
    procedure edtTelefoneMaskChange(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefoneMaskKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure AtivarControles;
    procedure DesativarControles;
  public
    { Public declarations }
  end;

var
  frmCadastroDadosCliente: TfrmCadastroDadosCliente;

implementation

{$R *.dfm}
procedure TfrmCadastroDadosCliente.AtivarControles;
begin
  edtNome.Enabled := True;
  edtTelefone.Enabled := True;
  edtEndereco.Enabled := True;
  edtEmail.Enabled := True;
  btn1Salvar.Enabled := True;
  btn2Editar.Enabled := False;
end;

procedure TfrmCadastroDadosCliente.DesativarControles;
begin
  edtNome.Enabled := False;
  edtTelefone.Enabled := False;
  edtEndereco.Enabled := False;
  edtEmail.Enabled := False;
  btn1Salvar.Enabled := False;
  btn2Editar.Enabled := True;
end;

procedure TfrmCadastroDadosCliente.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    edtTelefoneMask.SetFocus;
  end;
end;

procedure TfrmCadastroDadosCliente.edtTelefoneMaskKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    edtEndereco.SetFocus;
  end;
end;

procedure TfrmCadastroDadosCliente.edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    edtEmail.SetFocus;
  end;
end;

procedure TfrmCadastroDadosCliente.edtEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    edtNome.SetFocus;
  end;
end;

procedure TfrmCadastroDadosCliente.edtTelefoneMaskChange(Sender: TObject);
begin
  inherited;
  edtTelefone.Text := edtTelefoneMask.Text;
end;

procedure TfrmCadastroDadosCliente.edtTelefoneMaskEnter(Sender: TObject);
begin
  inherited;
  edtTelefoneMask.EditMask := '';
end;

procedure TfrmCadastroDadosCliente.edtTelefoneMaskExit(Sender: TObject);
begin
  inherited;
  if edtTelefoneMask.GetTextLen = 10 then
  begin
    edtTelefoneMask.EditMask := '!\(99\)0000-0000;1;_';
  end
  else if edtTelefoneMask.GetTextLen = 11 then
  begin
    edtTelefoneMask.EditMask := '!\(99\)00000-0000;1;_';
  end;
end;

procedure TfrmCadastroDadosCliente.btn1SalvarClick(Sender: TObject);
begin
  inherited;
  if edtNome.Text = '' then
  begin
    Application.MessageBox('O campo nome � de preenchimento obrigat�rio!', 'TSistema', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin
    try
      CadastroClientes.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema', MB_OK + MB_ICONINFORMATION);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar('Erro: ' + e.Message), 'TSistema', MB_OK + MB_ICONERROR);
    end;
    end;
  end;
end;

procedure TfrmCadastroDadosCliente.btn2EditarClick(Sender: TObject);
begin
  inherited;
  AtivarControles;
  edtNome.SetFocus;
end;

procedure TfrmCadastroDadosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CadastroClientes.CancelarTransacao;
end;

procedure TfrmCadastroDadosCliente.FormShow(Sender: TObject);
begin
  inherited;
  if (dmDadosPrincipal.fdQueryClientes.State in [dsInsert, dsEdit]) then
  begin
    AtivarControles;
    edtNome.SetFocus;
  end
  else
  begin
    DesativarControles;
  end;

end;

end.
