unit CadastroProdutos;

interface

uses TSistema.Model.Conexao.Principal, Vcl.Dialogs, System.SysUtils, Data.DB;

procedure InserirProdutos;
procedure ConsultarProdutos;
procedure ExcluirProdutos;
procedure GravarAlteracoesProdutos;
procedure CancelarTransacaoProdutos;

implementation

procedure InserirProdutos;
begin
  if not (dmDadosPrincipal.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdTransactionProdutos.StartTransaction;
    dmDadosPrincipal.fdQueryProdutos.Insert;
  end;
end;

procedure ConsultarProdutos;
begin
  dmDadosPrincipal.fdQueryProdutos.Open();
end;

procedure ExcluirProdutos;
begin
  dmDadosPrincipal.fdTransactionProdutos.StartTransaction;
  dmDadosPrincipal.fdQueryProdutos.Delete;
  dmDadosPrincipal.fdTransactionProdutos.CommitRetaining ;
end;

procedure GravarAlteracoesProdutos;
begin
  if (dmDadosPrincipal.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdTransactionProdutos.StartTransaction;
    dmDadosPrincipal.fdQueryProdutos.Post;
    dmDadosPrincipal.fdTransactionProdutos.CommitRetaining;
  end;
end;

procedure CancelarTransacaoProdutos;
begin
  if (dmDadosPrincipal.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosPrincipal.fdQueryProdutos.Cancel;
    dmDadosPrincipal.fdTransactionProdutos.RollbackRetaining;
  end;
end;
end.



