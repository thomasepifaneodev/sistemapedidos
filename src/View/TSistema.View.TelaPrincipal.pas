unit TSistema.View.TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, TSistema.View.Visualizacao.Clientes,  uLib,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, TSistema.View.TelaLogin.Principal, uConexao,
<<<<<<< HEAD
  TSistema.Model.Conexao.Principal, TSistema.View.TelaLogin.Configuracao, TSistema.View.Cadastro.Produtos;
=======
  TSistema.Model.Conexao.Principal, TSistema.View.TelaLogin.Configuracao;
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c

type
  TfrmPrincipal = class(TForm)
    pnlTop: TPanel;
    btnClientes: TSpeedButton;
    imgList: TImageList;
    btnProdutos: TSpeedButton;
    btnPedidos: TSpeedButton;
    btnUsuarios: TSpeedButton;
    procedure btnClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
<<<<<<< HEAD
    procedure btnProdutosClick(Sender: TObject);
=======
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
  private
    { Private declarations }
    procedure LogarSistema;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
frmPrincipalVisualizacaoClientes := TFrmPrincipalVisualizacaoClientes.Create(nil);
  try
    frmPrincipalVisualizacaoClientes.ShowModal();
  finally
    FreeAndNil(frmPrincipalVisualizacaoClientes);
  end;
end;

<<<<<<< HEAD
procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin
frmPrincipalCadProdutos := TFrmPrincipalCadProdutos.Create(nil);
  try
    frmPrincipalCadProdutos.ShowModal();
  finally
    FreeAndNil(frmPrincipalCadProdutos);
  end;
end;

=======
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  LogarSistema;
end;
procedure TfrmPrincipal.LogarSistema;
begin
if not ArquivoINIExiste(ExtractFilePath(Application.ExeName) + 'TSistema.ini') then
  begin
  MessageDlg('Arquivo de configura��o n�o encontrado!', mtWarning, [mbOk], 0);
  frmConfig := TFrmConfig.Create(nil);
    try
      frmConfig.ShowModal();
    finally
      FreeAndNil(frmConfig);
    end;
  end;
  frmLogin := TFrmLogin.Create(nil);
    try
      frmLogin.ShowModal();
      if dmDadosPrincipal.fdConnection.Connected then
        begin
          frmLogin.ModalResult := ReturnForm(mrOk);
        end;
      if frmLogin.ModalResult <> mrOk then
      begin
        Self.Close;
        Application.Terminate;
        frmPrincipal.Free;
      end;
      except
      on e: Exception do
      begin
      ShowMessage(PWideChar(e.Message));
      FreeAndNil(frmLogin);
      end;
    end;
end;
end.
