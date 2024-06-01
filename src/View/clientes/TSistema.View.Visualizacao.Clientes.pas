unit TSistema.View.Visualizacao.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.View.TelaCadastros.Principal,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, TSistema.Model.Conexao.Principal,
  TSistema.View.Cadastro.Clientes;

type
  TfrmPrincipalVisualizacaoClientes = class(TfrmPrincipalCad)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2ExibirClick(Sender: TObject);
    procedure dbGridPrincipalDblClick(Sender: TObject);
    procedure btn1NovoClick(Sender: TObject);
    procedure btn3ExcluirClick(Sender: TObject);
    procedure edtSourceChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalVisualizacaoClientes: TfrmPrincipalVisualizacaoClientes;

implementation

{$R *.dfm}

procedure TfrmPrincipalVisualizacaoClientes.btn1NovoClick(Sender: TObject);
begin
  inherited;
  if not (dmDados.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDados.fdQueryClientes.Open();
    dmDados.fdQueryClientes.Insert;
    frmCadastroDadosCliente.ShowModal;
  end;
end;

procedure TfrmPrincipalVisualizacaoClientes.btn2ExibirClick(Sender: TObject);
begin
  inherited;
  if not (dmDados.fdQueryClientes.IsEmpty) then
  begin
    frmCadastroDadosCliente.ShowModal;
  end;
end;

procedure TfrmPrincipalVisualizacaoClientes.btn3ExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk then
  begin
    dmDados.fdConnection.StartTransaction;
    try
      if not dmDados.fdQueryClientes.IsEmpty then
      begin
        dmDados.fdQueryClientes.Delete;
        dmDados.fdConnection.CommitRetaining;
      end
      else
      begin
        ShowMessage('N�o h� registros para excluir.');
      end;
    except
      on e: Exception do
      begin
        dmDados.fdConnection.RollbackRetaining;
        ShowMessage('Erro ao excluir registro: ' + e.Message);
      end;
    end;
  end;
end;

procedure TfrmPrincipalVisualizacaoClientes.dbGridPrincipalDblClick(
  Sender: TObject);
begin
  inherited;
  frmCadastroDadosCliente.ShowModal;
end;

procedure TfrmPrincipalVisualizacaoClientes.edtSourceChange(Sender: TObject);
begin
  inherited;
  if edtSource.Text <> '' then
  begin
    dmDados.fdQueryClientes.Open();
  end;
end;

procedure TfrmPrincipalVisualizacaoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    dmDados.fdConnection.RollbackRetaining;
    dmDados.fdQueryClientes.Close()
end;

end.