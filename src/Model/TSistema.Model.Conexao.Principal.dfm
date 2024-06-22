object dmDadosPrincipal: TdmDadosPrincipal
  OnCreate = DataModuleCreate
  Height = 443
  Width = 588
  object fdConnection: TFDConnection
    Params.Strings = (
<<<<<<< HEAD
      'Server=127.0.0.1'
      'Database=base_pedidos'
      'User_Name=thomas'
      'Password=1'
      'DriverID=PG')
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    Connected = True
=======
      'Server='
      'Port='
      'DriverID=PG')
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object fdPgLink: TFDPhysPgDriverLink
<<<<<<< HEAD
    VendorHome = 'C:\Users\Usuario\Documents\ProgramaPedidos\sistemapedidos\exe'
=======
>>>>>>> a46487a500cb94f1c3e89ea5a7ba43e93470829c
    Left = 128
    Top = 24
  end
  object fdQueryClientes: TFDQuery
    Connection = fdConnection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'clientes_id_seq'
    UpdateOptions.AutoIncFields = 'id'
    SQL.Strings = (
      'SELECT * FROM clientes ORDER BY id')
    Left = 56
    Top = 88
    object fdQueryClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQueryClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object fdQueryClientestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 30
    end
    object fdQueryClientesendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object fdQueryClientesemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 80
    end
  end
  object fdTransactionClientes: TFDTransaction
    Connection = fdConnection
    Left = 168
    Top = 88
  end
  object dataSourceClientes: TDataSource
    DataSet = fdQueryClientes
    Left = 288
    Top = 88
  end
  object dataSourceProdutos: TDataSource
    DataSet = fdQueryProdutos
    Left = 296
    Top = 184
  end
  object fdTransactionProdutos: TFDTransaction
    Connection = fdConnection
    Left = 168
    Top = 184
  end
  object fdQueryProdutos: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'SELECT * FROM produtos ORDER BY id')
    Left = 48
    Top = 184
  end
end
