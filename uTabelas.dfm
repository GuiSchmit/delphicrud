object dm: Tdm
  Height = 480
  Width = 640
  object tbClientes: TFDTable
    IndexFieldNames = 'codigo'
    Connection = fdConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clientes'
    Left = 56
    Top = 160
    object tbClientescodigo: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbClientesnome_completo: TWideStringField
      FieldName = 'nome_completo'
      Origin = 'nome_completo'
      Size = 100
    end
    object tbClientescpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '999.999.999-99'
      Size = 14
    end
    object tbClientesdata_nascimento: TWideStringField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      EditMask = '99/99/9999'
      Size = 10
    end
    object tbClientestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(99) 99999-9999'
      Size = 15
    end
    object tbClientescep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '99.999-999'
      Size = 10
    end
    object tbClienteslogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object tbClientesbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 80
    end
    object tbClientesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
  end
  object qConsultaCli: TFDQuery
    Active = True
    Connection = fdConnection
    SQL.Strings = (
      'SELECT * FROM clientes'
      'ORDER BY codigo ASC')
    Left = 56
    Top = 264
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 152
    Top = 160
  end
  object dsConsultaCli: TDataSource
    DataSet = qConsultaCli
    Left = 168
    Top = 264
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=codorna8'
      'DriverID=PG')
    Connected = True
    Left = 48
    Top = 48
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnection
    Left = 168
    Top = 48
  end
  object pgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 328
    Top = 48
  end
end
