unit CadastroClientes;

interface

uses TSistema.Model.Conexao.Principal, Vcl.Dialogs, System.SysUtils;

procedure InserirClientes(Nome, Telefone, Endereco, Email : String);

implementation

procedure InserirClientes(Nome, Telefone, Endereco, Email : String);
begin
try
    dmDados.fdConnection.StartTransaction;
    dmDados.fdQueryInserirClientes.SQL.Add('SELECT * FROM inserir_cliente(:p_nome, :p_telefone, :p_endereco, :p_email);') ;

    dmDados.fdQueryInserirClientes.Params.ParamByName('p_nome').AsString := Nome;
    dmDados.fdQueryInserirClientes.Params.ParamByName('p_telefone').AsString := Telefone;
    dmDados.fdQueryInserirClientes.Params.ParamByName('p_endereco').AsString := Endereco;
    dmDados.fdQueryInserirClientes.Params.ParamByName('p_email').AsString := Email;

    dmDados.fdQueryInserirClientes.Open;

    dmDados.fdConnection.Commit;

    ShowMessage('Dados salvos com sucesso!');
  except
    on E: Exception do
    begin
      dmDados.fdConnection.Rollback;
      ShowMessage('Erro ao inserir cliente: ' + E.Message);
    end;
  end;
end;
end.



