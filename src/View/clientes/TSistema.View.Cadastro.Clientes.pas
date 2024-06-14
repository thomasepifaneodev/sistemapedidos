unit TSistema.View.Cadastro.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.Model.Conexao.Principal,
  TSistema.View.TelaCadastros.DadosInsertUpdate, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, CadastroClientes;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDadosCliente: TfrmCadastroDadosCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroDadosCliente.btn1SalvarClick(Sender: TObject);
begin
  inherited;
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

procedure TfrmCadastroDadosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CadastroClientes.CancelarTransacao;
end;

end.
