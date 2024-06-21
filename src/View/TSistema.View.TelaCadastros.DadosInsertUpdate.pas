unit TSistema.View.TelaCadastros.DadosInsertUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TfrmCadastroDados = class(TForm)
    pnlBottom: TPanel;
    btn4Sair: TSpeedButton;
    btn1Salvar: TSpeedButton;
    btn2Editar: TSpeedButton;
    pnlTop: TPanel;
    procedure btn4SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDados: TfrmCadastroDados;

implementation

{$R *.dfm}

procedure TfrmCadastroDados.btn4SairClick(Sender: TObject);
begin
    Self.Close;
end;

end.
