object fCadastraCli: TfCadastraCli
  Left = 0
  Top = 0
  Caption = 'fCadastraCli'
  ClientHeight = 632
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 950
    Height = 591
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelWidth = 6
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 946
    ExplicitHeight = 473
    object lNome: TLabel
      Left = 52
      Top = 63
      Width = 103
      Height = 15
      Caption = 'NOME COMPLETO:'
      FocusControl = dbNome
    end
    object Label3: TLabel
      Left = 132
      Top = 103
      Width = 23
      Height = 15
      Caption = 'CPF:'
      FocusControl = dbCpf
    end
    object lDataNascimento: TLabel
      Left = 24
      Top = 140
      Width = 131
      Height = 15
      Caption = 'DATA DE NASCIMENTO:'
      FocusControl = dbDataNasc
    end
    object lTelefone: TLabel
      Left = 97
      Top = 169
      Width = 58
      Height = 15
      Caption = 'TELEFONE:'
      FocusControl = dbTelefone
    end
    object lCep: TLabel
      Left = 132
      Top = 198
      Width = 23
      Height = 15
      Caption = 'CEP:'
      FocusControl = dbCep
    end
    object lLogradouro: TLabel
      Left = 68
      Top = 239
      Width = 87
      Height = 15
      Caption = 'LOGRADOURO:'
      FocusControl = dbLogradouro
    end
    object lBairro: TLabel
      Left = 107
      Top = 275
      Width = 48
      Height = 15
      Caption = 'BAIRRO:'
      FocusControl = dbBairro
    end
    object lUf: TLabel
      Left = 137
      Top = 307
      Width = 18
      Height = 15
      Caption = 'UF:'
      FocusControl = dbUF
    end
    object dbNome: TDBEdit
      Left = 173
      Top = 60
      Width = 313
      Height = 23
      CharCase = ecUpperCase
      DataField = 'nome_completo'
      DataSource = dm.dsClientes
      TabOrder = 0
      OnChange = dbNomeChange
    end
    object dbCpf: TDBEdit
      Left = 173
      Top = 100
      Width = 204
      Height = 23
      DataField = 'cpf'
      DataSource = dm.dsClientes
      MaxLength = 14
      TabOrder = 1
    end
    object dbDataNasc: TDBEdit
      Left = 173
      Top = 137
      Width = 144
      Height = 23
      DataField = 'data_nascimento'
      DataSource = dm.dsClientes
      MaxLength = 10
      TabOrder = 2
    end
    object dbTelefone: TDBEdit
      Left = 173
      Top = 166
      Width = 215
      Height = 23
      DataField = 'telefone'
      DataSource = dm.dsClientes
      MaxLength = 15
      TabOrder = 3
    end
    object dbCep: TDBEdit
      Left = 173
      Top = 195
      Width = 142
      Height = 23
      DataField = 'cep'
      DataSource = dm.dsClientes
      MaxLength = 10
      TabOrder = 4
      OnExit = dbCepExit
    end
    object dbLogradouro: TDBEdit
      Left = 173
      Top = 236
      Width = 290
      Height = 23
      CharCase = ecUpperCase
      DataField = 'logradouro'
      DataSource = dm.dsClientes
      TabOrder = 5
      OnClick = dbLogradouroClick
    end
    object dbBairro: TDBEdit
      Left = 173
      Top = 272
      Width = 290
      Height = 23
      CharCase = ecUpperCase
      DataField = 'bairro'
      DataSource = dm.dsClientes
      TabOrder = 6
      OnClick = dbBairroClick
    end
    object dbUF: TDBEdit
      Left = 173
      Top = 301
      Width = 24
      Height = 23
      CharCase = ecUpperCase
      DataField = 'uf'
      DataSource = dm.dsClientes
      TabOrder = 7
      OnClick = dbUFClick
    end
    object Panel3: TPanel
      Left = 280
      Top = 336
      Width = 385
      Height = 81
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 8
      object btCadastraCli: TBitBtn
        Left = 40
        Top = 32
        Width = 127
        Height = 25
        Caption = '&CADASTRAR CLIENTE'
        TabOrder = 0
        OnClick = btCadastraCliClick
      end
      object btCancelar: TBitBtn
        Left = 256
        Top = 32
        Width = 75
        Height = 25
        Caption = '&CANCELAR'
        TabOrder = 1
        OnClick = btCancelarClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE CLIENTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 946
    object btFechar: TBitBtn
      Left = 864
      Top = 10
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btFecharClick
    end
  end
end
