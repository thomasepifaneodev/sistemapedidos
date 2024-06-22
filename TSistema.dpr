program TSistema;

uses
  Vcl.Forms,
  TSistema.View.TelaPrincipal in 'src\View\TSistema.View.TelaPrincipal.pas' {frmPrincipal},
  TSistema.View.TelaCadastros.Principal in 'src\View\TSistema.View.TelaCadastros.Principal.pas' {frmPrincipalCad},
  TSistema.View.TelaCadastros.DadosInsertUpdate in 'src\View\TSistema.View.TelaCadastros.DadosInsertUpdate.pas' {frmCadastroDados},
  TSistema.View.Visualizacao.Clientes in 'src\View\clientes\TSistema.View.Visualizacao.Clientes.pas' {frmPrincipalVisualizacaoClientes},
  TSistema.Model.Conexao.Principal in 'src\Model\TSistema.Model.Conexao.Principal.pas' {dmDadosPrincipal: TDataModule},
  TSistema.View.Cadastro.Clientes in 'src\View\clientes\TSistema.View.Cadastro.Clientes.pas' {frmCadastroDadosCliente},
  CadastroClientes in 'classes\CadastroClientes.pas',
  uLib in 'classes\uLib.pas',
  TSistema.View.TelaLogin.Principal in 'src\View\login\TSistema.View.TelaLogin.Principal.pas' {frmLogin},
  uConexao in 'classes\uConexao.pas',
<<<<<<< HEAD
  TSistema.View.TelaLogin.Configuracao in 'src\View\login\TSistema.View.TelaLogin.Configuracao.pas' {frmConfig},
  TSistema.View.Cadastro.Produtos in 'src\View\produtos\TSistema.View.Cadastro.Produtos.pas' {frmPrincipalCadProdutos},
  CadastroProdutos in 'classes\CadastroProdutos.pas';
=======
  TSistema.View.TelaLogin.Configuracao in 'src\View\login\TSistema.View.TelaLogin.Configuracao.pas' {frmConfig};
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDadosPrincipal, dmDadosPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConfig, frmConfig);
<<<<<<< HEAD
  Application.CreateForm(TfrmPrincipalCadProdutos, frmPrincipalCadProdutos);
=======
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
  Application.Run;
end.
