unit TSistema.View.TelaCadastros.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPrincipalCad = class(TForm)
    pnlBottom: TPanel;
    btn4Sair: TSpeedButton;
    btn1Novo: TSpeedButton;
    btn2Exibir: TSpeedButton;
    pnlTop: TPanel;
    edtSource: TEdit;
    btn3Excluir: TSpeedButton;
    dbGridPrincipal: TDBGrid;
    procedure btn4SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalCad: TfrmPrincipalCad;

implementation

{$R *.dfm}

procedure TfrmPrincipalCad.btn4SairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPrincipalCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  edtSource.Text := '';
end;

end.
