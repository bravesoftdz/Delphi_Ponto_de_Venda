object Estoque00: TEstoque00
  Left = 279
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Ajustes de Estoque'
  ClientHeight = 420
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 5
    Width = 617
    Height = 361
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 601
      Height = 49
      Caption = 'Busca'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 21
        Width = 49
        Height = 13
        Caption = 'buscar em'
      end
      object BT_Buscar: TBitBtn
        Left = 512
        Top = 16
        Width = 81
        Height = 25
        Caption = '&Buscar'
        TabOrder = 2
        OnClick = BT_BuscarClick
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888800000888880000080F000888880F00080F000888880F0008000000080000
          000800F000000F00000800F000800F00000800F000800F000008800000000000
          0088880F00080F000888880000080000088888800088800088888880F08880F0
          888888800088800088888888888888888888}
      end
      object ComboLocalBusca: TComboBox
        Left = 80
        Top = 18
        Width = 217
        Height = 21
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'C'#243'digo'
        OnChange = ComboLocalBuscaChange
        OnKeyPress = ComboLocalBuscaKeyPress
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Grupo'
          'Fornecedor'
          'Unidade'
          'Pre'#231'o'
          'C'#243'digo de Barra'
          'Estoque')
      end
      object EditBusca: TMaskEdit
        Left = 312
        Top = 18
        Width = 182
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = EditBuscaKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 64
      Width = 601
      Height = 289
      Caption = '  Resultados Obtidos  '
      TabOrder = 1
      object GridProdutos: TDBGrid
        Left = 7
        Top = 16
        Width = 586
        Height = 265
        Ctl3D = True
        DataSource = ConexaoBD.DS_Produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = GridProdutosCellClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Produto_Codigo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 312
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Produto_Estoque_Atual'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque Atual'
            Width = 120
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 373
    Width = 617
    Height = 41
    TabOrder = 1
    object BT_Sair: TBitBtn
      Left = 526
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Retornar ao Menu Principal|Retornar ao Menu Principal'
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BT_SairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
end
