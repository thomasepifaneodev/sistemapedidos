unit TSistema.Model.Conexao.Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Phys.PG;

type
  TdmDados = class(TDataModule)
    fdConnection: TFDConnection;
    fdPgLink: TFDPhysPgDriverLink;
    fdQueryClientes: TFDQuery;
    dataSourceClientes: TDataSource;
    fdQueryInserirClientes: TFDQuery;
    fdQueryClientesid: TIntegerField;
    fdQueryClientesnome: TWideStringField;
    fdQueryClientestelefone: TWideStringField;
    fdQueryClientesendereco: TWideStringField;
    fdQueryClientesemail: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
