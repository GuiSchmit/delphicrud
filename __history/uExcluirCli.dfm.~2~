object fExcluirCli: TfExcluirCli
  Left = 0
  Top = 0
  Caption = 'EXCLUIR CLIENTE'
  ClientHeight = 658
  ClientWidth = 954
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
    Top = 0
    Width = 954
    Height = 658
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelWidth = 6
    BorderStyle = bsSingle
    TabOrder = 0
    ExplicitLeft = -51
    ExplicitWidth = 1005
    ExplicitHeight = 656
    object Panel2: TPanel
      Left = 12
      Top = 12
      Width = 922
      Height = 125
      Align = alTop
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 973
      object Label1: TLabel
        Left = 320
        Top = 16
        Width = 245
        Height = 30
        Caption = 'EXCLUS'#195'O DE CLIENTES:'
      end
      object Panel3: TPanel
        Left = 2
        Top = 52
        Width = 918
        Height = 71
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 969
        object Label2: TLabel
          Left = 16
          Top = 25
          Width = 388
          Height = 25
          Caption = 'Digite o nome do cliente que deseja excluir:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbNome: TEdit
          Left = 410
          Top = 24
          Width = 348
          Height = 29
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = dbNomeChange
        end
      end
      object btFechar: TBitBtn
        Left = 832
        Top = 21
        Width = 75
        Height = 25
        Caption = '&FECHAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btFecharClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 12
      Top = 137
      Width = 922
      Height = 501
      Align = alClient
      DataSource = dm.dsConsultaCli
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_completo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'logradouro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Visible = True
        end>
    end
  end
end
