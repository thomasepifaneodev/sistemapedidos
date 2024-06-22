unit TSistema.View.Cadastro.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.View.TelaCadastros.Principal,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, CadastroProdutos, TSistema.Model.Conexao.Principal;

type
  TfrmPrincipalCadProdutos = class(TfrmPrincipalCad)
    procedure edtSourceChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalCadProdutos: TfrmPrincipalCadProdutos;

implementation

{$R *.dfm}

procedure TfrmPrincipalCadProdutos.edtSourceChange(Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  if edtSource.Text = '\' then
  begin
    dmDadosPrincipal.fdQueryProdutos.Filtered := False;
    dbGridPrincipal.DataSource := dmDadosPrincipal.dataSourceProdutos;
  end
  else if (edtSource.Text <> '\') and (edtSource.Text <> '') then
  begin
    dbGridPrincipal.DataSource := dmDadosPrincipal.dataSourceProdutos;
    dmDadosPrincipal.fdQueryProdutos.Filter := 'descricao LIKE ''%' + edtSource.Text + '%''';
    dmDadosPrincipal.fdQueryProdutos.Filtered := True;
  end
  else
  begin
    dbGridPrincipal.DataSource := nil;
  end;
end;

procedure TfrmPrincipalCadProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  dbGridPrincipal.DataSource := nil;
  CadastroProdutos.ConsultarProdutos;
end;

end.
