inherited frmPrincipalCadProdutos: TfrmPrincipalCadProdutos
  Caption = 'Cadastro de Produtos'
  OnCreate = FormCreate
  TextHeight = 15
  inherited pnlTop: TPanel
    inherited edtSource: TEdit
      OnChange = edtSourceChange
    end
  end
  inherited dbGridPrincipal: TDBGrid
    DataSource = dmDadosPrincipal.dataSourceProdutos
    Font.Color = clBlack
    TitleFont.Color = -1
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
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 450
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precovenda'
        Title.Caption = 'Pre'#231'o'
        Width = 217
        Visible = True
      end>
  end
end
