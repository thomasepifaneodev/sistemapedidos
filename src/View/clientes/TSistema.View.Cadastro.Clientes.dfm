inherited frmCadastroDadosCliente: TfrmCadastroDadosCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 484
  ClientWidth = 759
  OnClose = FormClose
  ExplicitWidth = 771
  ExplicitHeight = 522
  TextHeight = 15
  inherited pnlBottom: TPanel
    Top = 445
    Width = 759
    ExplicitTop = 444
    ExplicitWidth = 755
    inherited btn4Sair: TSpeedButton
      Left = 656
      ExplicitLeft = 656
    end
    inherited btn1Salvar: TSpeedButton
      OnClick = btn1SalvarClick
    end
  end
  inherited pnlTop: TPanel
    Width = 759
    Height = 445
    ExplicitHeight = 444
    object lblNome: TLabel
      Left = 55
      Top = 66
      Width = 69
      Height = 33
      Caption = 'Nome'
      FocusControl = DBEdit2
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
      Width = 97
      Height = 33
      Caption = 'Telefone'
      FocusControl = DBEdit3
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
      Width = 108
      Height = 33
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit4
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
      Height = 33
      Caption = 'E-mail'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Noto Sans Armenian'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
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
    object DBEdit2: TDBEdit
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
      Font.Color = clWindowFrame
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
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
      Font.Color = clWindowFrame
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
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
      Font.Color = clWindowFrame
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
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
      Font.Color = clWindowFrame
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
