unit TSistema.View.TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, TSistema.View.Visualizacao.Clientes;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    clientes: TMenuItem;
    fornecedores: TMenuItem;
    procedure clientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.clientesClick(Sender: TObject);
begin
  frmPrincipalVisualizacaoClientes.ShowModal();
end;

end.
