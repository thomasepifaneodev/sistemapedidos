object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tela de Configura'#231#227'o'
  ClientHeight = 441
  ClientWidth = 278
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  OnShow = FormShow
  TextHeight = 15
  object edtIp: TLabeledEdit
    Left = 39
<<<<<<< HEAD
    Top = 104
=======
    Top = 80
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    Width = 200
    Height = 30
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 102
    EditLabel.Height = 28
    EditLabel.Caption = 'Endere'#231'o IP'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -20
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = ''
    OnKeyPress = edtIpKeyPress
  end
  object edtPorta: TLabeledEdit
    Left = 39
<<<<<<< HEAD
    Top = 176
=======
    Top = 152
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    Width = 200
    Height = 30
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 46
    EditLabel.Height = 28
    EditLabel.Caption = 'Porta'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -20
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ''
    OnKeyPress = edtPortaKeyPress
  end
  object edtBase: TLabeledEdit
    Left = 39
<<<<<<< HEAD
    Top = 256
=======
    Top = 232
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    Width = 200
    Height = 30
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    EditLabel.Width = 127
    EditLabel.Height = 28
    EditLabel.Caption = 'Base de Dados'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -20
    EditLabel.Font.Name = 'Segoe UI'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
    OnKeyPress = edtBaseKeyPress
  end
  object btnSave: TBitBtn
    Left = 81
<<<<<<< HEAD
    Top = 344
=======
    Top = 352
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    Width = 120
    Height = 35
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnSaveClick
  end
end
