program TSistema;

uses
  Vcl.Forms,
  TSistema.View.TelaPrincipal in 'src\View\TSistema.View.TelaPrincipal.pas' {frmPrincipal},
  TSistema.View.TelaCadastros.Principal in 'src\View\TSistema.View.TelaCadastros.Principal.pas' {frmPrincipalCad},
  TSistema.View.TelaCadastros.DadosInsertUpdate in 'src\View\TSistema.View.TelaCadastros.DadosInsertUpdate.pas' {frmCadastroDados},
  TSistema.View.Visualizacao.Clientes in 'src\View\clientes\TSistema.View.Visualizacao.Clientes.pas' {frmPrincipalVisualizacaoClientes},
  TSistema.Model.Conexao.Principal in 'src\Model\TSistema.Model.Conexao.Principal.pas' {dmDados: TDataModule},
  TSistema.View.Cadastro.Clientes in 'src\View\clientes\TSistema.View.Cadastro.Clientes.pas' {frmCadastroDadosCliente},
  CadastroClientes in 'classes\CadastroClientes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroDados, frmCadastroDados);
  Application.CreateForm(TfrmPrincipalCad, frmPrincipalCad);
  Application.CreateForm(TfrmCadastroDadosCliente, frmCadastroDadosCliente);
  Application.CreateForm(TfrmPrincipalVisualizacaoClientes, frmPrincipalVisualizacaoClientes);
  Application.Run;
end.
