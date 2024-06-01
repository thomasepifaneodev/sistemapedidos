unit TSistema.View.Cadastro.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.Model.Conexao.Principal,
  TSistema.View.TelaCadastros.DadosInsertUpdate, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, CadastroClientes, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmCadastroDadosCliente = class(TfrmCadastroDados)
    edtNome: TDBEdit;
    edtTelefone: TDBEdit;
    edtEmail: TDBEdit;
    lblCodigo: TDBText;
    edtEndereco: TDBMemo;
    procedure btn1SalvarClick(Sender: TObject);
    procedure btn4SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    if dmDados.fdQueryClientes.State in [dsEdit, dsInsert] then
    begin
      dmDados.fdConnection.StartTransaction;
      dmDados.fdQueryClientes.Post;
      dmDados.fdConnection.CommitRetaining;
      ShowMessage('Dados salvos com sucesso!');
      Self.Close;
    end;
  except on e: Exception do
  begin
    ShowMessage('Erro na inser��o do cliente: ' + e.Message);
  end;
  end;
end;

procedure TfrmCadastroDadosCliente.btn4SairClick(Sender: TObject);
begin
  inherited;
  dmDados.fdConnection.RollbackRetaining;
  dmDados.fdQueryClientes.Close();
end;

procedure TfrmCadastroDadosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmDados.fdConnection.RollbackRetaining;
  dmDados.fdQueryClientes.Close();
end;

end.
