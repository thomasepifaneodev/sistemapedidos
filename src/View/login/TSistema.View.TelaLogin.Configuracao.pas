unit TSistema.View.TelaLogin.Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Buttons, uConexao, uLib;

type
  TfrmConfig = class(TForm)
    edtIp: TLabeledEdit;
    edtPorta: TLabeledEdit;
    edtBase: TLabeledEdit;
    btnSave: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure edtIpKeyPress(Sender: TObject; var Key: Char);
    procedure edtPortaKeyPress(Sender: TObject; var Key: Char);
    procedure edtBaseKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.dfm}

procedure TfrmConfig.btnSaveClick(Sender: TObject);
begin
  Conexao(edtIp.Text , edtPorta.Text, edtBase.Text);
  MessageDlg('Configuração salva!', mtInformation, [mbOk], 0);
  Close;
end;

procedure TfrmConfig.edtBaseKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  btnSaveClick(Sender);
end;

procedure TfrmConfig.edtIpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  edtPorta.SetFocus;
end;

procedure TfrmConfig.edtPortaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  edtBase.SetFocus;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  edtIp.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'IP');
  edtPorta.Text	:= GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'PORTA');
  edtBase.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'BASE');
end;

end.
