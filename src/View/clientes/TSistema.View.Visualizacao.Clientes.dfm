inherited frmPrincipalVisualizacaoClientes: TfrmPrincipalVisualizacaoClientes
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Clientes'
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  inherited pnlBottom: TPanel
    inherited btn1Novo: TSpeedButton
      OnClick = btn1NovoClick
    end
    inherited btn2Exibir: TSpeedButton
      OnClick = btn2ExibirClick
    end
    inherited btn3Excluir: TSpeedButton
      OnClick = btn3ExcluirClick
    end
  end
  inherited pnlTop: TPanel
    inherited edtSource: TEdit
      CharCase = ecUpperCase
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 80
      TextHint = 'PESQUISAR PELO NOME'
      OnChange = edtSourceChange
    end
  end
  inherited dbGridPrincipal: TDBGrid
    TabStop = False
    DataSource = dmDadosPrincipal.dataSourceClientes
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    OnDblClick = dbGridPrincipalDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 450
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'Telefone'
        Width = 217
        Visible = True
      end>
  end
end
