unit uConexao;

interface

uses TSistema.Model.Conexao.Principal, uLib, System.SysUtils, Vcl.Forms,
  Vcl.Controls, Vcl.Dialogs;

procedure LoginUser(User, Pass : String);
function ReturnForm(Acao: TModalResult) : TModalResult;
procedure Conexao(Ip, Porta, Base : String);

implementation

procedure LoginUser(User, Pass : String);
var
  vFileName : String;
begin
    dmDadosPrincipal.fdPgLink.VendorHome := ExtractFilePath(Application.ExeName);
    vFileName := ExtractFilePath(Application.ExeName) + 'TSistema.ini';

    dmDadosPrincipal.fdConnection.Params.Clear;
    dmDadosPrincipal.fdConnection.Params.Add('DriverID=PG');
    dmDadosPrincipal.fdConnection.Params.Add('Database=' + GetValorIni(vFileName, 'CONFIGURACAO', 'BASE'));
    dmDadosPrincipal.fdConnection.Params.Add('Port=' + GetValorIni(vFileName, 'CONFIGURACAO', 'PORTA'));
    dmDadosPrincipal.fdConnection.Params.Add('Server=' + GetValorIni(vFileName, 'CONFIGURACAO', 'IP'));
    dmDadosPrincipal.fdConnection.Params.Add('LoginTimeout=1');

    dmDadosPrincipal.fdConnection.Params.UserName := User;
    dmDadosPrincipal.fdConnection.Params.Password := Pass;

  try
    dmDadosPrincipal.fdConnection.Connected := True;
  except on e: Exception do
  begin
    if e.ToString.Contains('password authentication failed for user') then
    begin
      MessageDlg('Usu�rio e/ou senha incorreto(s)!', mtWarning, [mbOk], 0);
    end
    else
    begin
      MessageDlg(e.Message, mtWarning, [mbOk], 0);
    end;
  end;
  end;
end;

function ReturnForm(Acao: TModalResult) : TModalResult;
begin
  Result := Acao;
end;

procedure Conexao(Ip, Porta, Base : String);
var
  vFileName: string;
begin
  vFileName := ExtractFilePath(Application.ExeName) + 'TSistema.ini';
  SetValorIni(vFileName, 'CONFIGURACAO', 'BASE', Base);
  SetValorIni(vFileName, 'CONFIGURACAO', 'IP', Ip);
  SetValorIni(vFileName, 'CONFIGURACAO', 'PORTA', Porta);
end;
end.
