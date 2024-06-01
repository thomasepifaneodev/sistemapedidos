inherited frmPrincipalVisualizacaoClientes: TfrmPrincipalVisualizacaoClientes
  Caption = 'Cadastro de Clientes'
  OnClose = FormClose
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
      Font.Name = 'Segoe UI'
      Font.Style = []
      OnChange = edtSourceChange
      ExplicitLeft = 3
      ExplicitTop = 20
      ExplicitHeight = 36
    end
  end
  inherited dbGridPrincipal: TDBGrid
    TabStop = False
    DataSource = dmDados.dataSourceClientes
    OnDblClick = dbGridPrincipalDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome/Razao Social'
        Width = 450
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'Telefone'
        Width = 200
        Visible = True
      end>
  end
end
