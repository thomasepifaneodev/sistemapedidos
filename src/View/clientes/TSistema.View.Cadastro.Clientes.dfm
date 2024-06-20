inherited frmCadastroDadosCliente: TfrmCadastroDadosCliente
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Clientes'
  ClientHeight = 495
  ClientWidth = 763
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 771
  ExplicitHeight = 522
  TextHeight = 15
  inherited pnlBottom: TPanel
    Top = 456
    Width = 763
    ExplicitWidth = 755
    inherited btn4Sair: TSpeedButton
      Left = 660
      ExplicitLeft = 656
    end
    inherited btn1Salvar: TSpeedButton
      OnClick = btn1SalvarClick
    end
    inherited btn2Editar: TSpeedButton
      OnClick = btn2EditarClick
    end
  end
  inherited pnlTop: TPanel
    Width = 763
    Height = 456
    ExplicitWidth = 755
    object lblNome: TLabel
      Left = 55
      Top = 66
      Width = 63
      Height = 27
      Caption = 'Nome'
      FocusControl = edtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Noto Sans Armenian'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefone: TLabel
      Left = 55
      Top = 143
      Width = 90
      Height = 27
      Caption = 'Telefone'
      FocusControl = edtTelefone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Noto Sans Armenian'
      Font.Style = []
      ParentFont = False
    end
    object lblEndereco: TLabel
      Left = 55
      Top = 221
      Width = 103
      Height = 27
      Caption = 'Endere'#231'o'
      FocusControl = edtEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Noto Sans Armenian'
      Font.Style = []
      ParentFont = False
    end
    object lblEmail: TLabel
      Left = 55
      Top = 299
      Width = 68
      Height = 27
      Caption = 'E-mail'
      FocusControl = edtEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Noto Sans Armenian'
      Font.Style = []
      ParentFont = False
    end
    object lblCodigo: TDBText
      Left = 555
      Top = 4
      Width = 200
      Height = 35
      Alignment = taRightJustify
      DataField = 'id'
      DataSource = dmDadosPrincipal.dataSourceClientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNome: TDBEdit
      Left = 55
      Top = 97
      Width = 650
      Height = 35
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'nome'
      DataSource = dmDadosPrincipal.dataSourceClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtTelefone: TDBEdit
      Left = 55
      Top = 175
      Width = 650
      Height = 35
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'telefone'
      DataSource = dmDadosPrincipal.dataSourceClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtEndereco: TDBEdit
      Left = 55
      Top = 253
      Width = 650
      Height = 35
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'endereco'
      DataSource = dmDadosPrincipal.dataSourceClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtEmail: TDBEdit
      Left = 55
      Top = 331
      Width = 650
      Height = 35
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'email'
      DataSource = dmDadosPrincipal.dataSourceClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
