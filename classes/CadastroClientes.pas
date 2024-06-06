unit CadastroClientes;

interface

uses TSistema.Model.Conexao.Principal, Vcl.Dialogs, System.SysUtils, Data.DB;

procedure InserirClientes;
procedure ConsultarClientes;
procedure ExcluirClientes;
procedure GravarAlteracoes;
procedure CancelarTransacao;

implementation

procedure InserirClientes;
begin
  if not (dmDadosPrincipal.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdTransactionClientes.StartTransaction;
    dmDadosPrincipal.fdQueryClientes.Insert;
  end;
end;

procedure ConsultarClientes;
begin
  dmDadosPrincipal.fdQueryClientes.Open();
end;

procedure ExcluirClientes;
begin
  dmDadosPrincipal.fdTransactionClientes.StartTransaction;
  dmDadosPrincipal.fdQueryClientes.Delete;
  dmDadosPrincipal.fdTransactionClientes.CommitRetaining ;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosPrincipal.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdTransactionClientes.StartTransaction;
    dmDadosPrincipal.fdQueryClientes.Post;
    dmDadosPrincipal.fdTransactionClientes.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosPrincipal.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdQueryClientes.Cancel;
    dmDadosPrincipal.fdTransactionClientes.RollbackRetaining;
  end;
end;

end.



