object fEditaCli: TfEditaCli
  Left = 0
  Top = 0
  Caption = 'fEditaCli'
  ClientHeight = 654
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 654
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
    ExplicitWidth = 956
    ExplicitHeight = 653
    object lNome: TLabel
      Left = 52
      Top = 93
      Width = 103
      Height = 15
      Caption = 'NOME COMPLETO:'
      FocusControl = dbNome
    end
    object Label3: TLabel
      Left = 132
      Top = 133
      Width = 23
      Height = 15
      Caption = 'CPF:'
      FocusControl = dbCpf
    end
    object lDataNascimento: TLabel
      Left = 24
      Top = 173
      Width = 131
      Height = 15
      Caption = 'DATA DE NASCIMENTO:'
    end
    object lTelefone: TLabel
      Left = 97
      Top = 213
      Width = 58
      Height = 15
      Caption = 'TELEFONE:'
      FocusControl = dbTelefone
    end
    object lCep: TLabel
      Left = 132
      Top = 253
      Width = 23
      Height = 15
      Caption = 'CEP:'
      FocusControl = dbCep
    end
    object lLogradouro: TLabel
      Left = 68
      Top = 293
      Width = 87
      Height = 15
      Caption = 'LOGRADOURO:'
      FocusControl = dbLogradouro
    end
    object lBairro: TLabel
      Left = 107
      Top = 333
      Width = 48
      Height = 15
      Caption = 'BAIRRO:'
      FocusControl = dbBairro
    end
    object lUf: TLabel
      Left = 137
      Top = 373
      Width = 18
      Height = 15
      Caption = 'UF:'
      FocusControl = dbUF
    end
    object dbNome: TDBEdit
      Left = 173
      Top = 90
      Width = 313
      Height = 23
      CharCase = ecUpperCase
      DataField = 'nome_completo'
      DataSource = dm.dsClientes
      TabOrder = 0
    end
    object dbCpf: TDBEdit
      Left = 173
      Top = 130
      Width = 204
      Height = 23
      DataField = 'cpf'
      DataSource = dm.dsClientes
      TabOrder = 1
    end
    object dbTelefone: TDBEdit
      Left = 173
      Top = 210
      Width = 215
      Height = 23
      DataField = 'telefone'
      DataSource = dm.dsClientes
      TabOrder = 2
    end
    object dbCep: TDBEdit
      Left = 173
      Top = 250
      Width = 142
      Height = 23
      DataField = 'cep'
      DataSource = dm.dsClientes
      TabOrder = 3
      OnExit = dbCepExit
    end
    object dbLogradouro: TDBEdit
      Left = 173
      Top = 290
      Width = 290
      Height = 23
      CharCase = ecUpperCase
      DataField = 'logradouro'
      DataSource = dm.dsClientes
      TabOrder = 4
    end
    object dbBairro: TDBEdit
      Left = 173
      Top = 330
      Width = 290
      Height = 23
      CharCase = ecUpperCase
      DataField = 'bairro'
      DataSource = dm.dsClientes
      TabOrder = 5
    end
    object dbUF: TDBEdit
      Left = 173
      Top = 370
      Width = 24
      Height = 23
      CharCase = ecUpperCase
      DataField = 'uf'
      DataSource = dm.dsClientes
      TabOrder = 6
    end
    object Panel3: TPanel
      Left = 272
      Top = 448
      Width = 385
      Height = 81
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 7
      object btEditaCli: TBitBtn
        Left = 40
        Top = 32
        Width = 127
        Height = 25
        Caption = '&EDITAR CLIENTE'
        TabOrder = 0
        OnClick = btEditaCliClick
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
    object Panel2: TPanel
      Left = 12
      Top = 12
      Width = 932
      Height = 41
      Align = alTop
      Caption = 'EDI'#199#195'O DE CLIENTES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      ExplicitWidth = 928
      object btFechar: TBitBtn
        Left = 848
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
    object DBEdit1: TDBEdit
      Left = 173
      Top = 170
      Width = 154
      Height = 23
      DataField = 'data_nascimento'
      DataSource = dm.dsClientes
      TabOrder = 9
    end
  end
end
