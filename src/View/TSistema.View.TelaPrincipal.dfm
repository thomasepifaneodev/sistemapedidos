object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TSistemas '
  ClientHeight = 705
  ClientWidth = 1099
  Color = clTeal
  Constraints.MinHeight = 720
  Constraints.MinWidth = 1080
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mainMenu
  Position = poScreenCenter
  WindowState = wsMaximized
  StyleName = 'Windows'
  TextHeight = 15
  object mainMenu: TMainMenu
    Left = 24
    Top = 653
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes: TMenuItem
        Caption = 'Clientes'
        OnClick = ClientesClick
      end
    end
  end
end
