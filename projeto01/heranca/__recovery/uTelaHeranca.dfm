object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informe aqui o t'#237'tulo'
  ClientHeight = 371
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 669
    Height = 330
    ActivePage = TabListagem
    Align = alClient
    TabOrder = 0
    object TabListagem: TTabSheet
      Caption = 'Listagem'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 661
        Height = 41
        Align = alTop
        TabOrder = 0
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 41
        Width = 661
        Height = 261
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 330
    Width = 669
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 4
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 85
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 166
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 247
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 328
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apa&gar'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 590
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavegacao: TDBNavigator
      Left = 409
      Top = 6
      Width = 140
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object mskPesquisar: TMaskEdit
    Left = 8
    Top = 34
    Width = 395
    Height = 21
    TabOrder = 2
    Text = ''
    TextHint = 'Digite aqui sua pesquisa'
  end
  object btnPesquisar: TBitBtn
    Left = 409
    Top = 34
    Width = 75
    Height = 21
    Caption = 'Pesquisar'
    TabOrder = 3
  end
  object qryListagem: TZQuery
    Connection = DTMprincipal.ConexaoPostgreSQL
    Params = <>
    Left = 16
    Top = 280
  end
  object dtsListagem: TDataSource
    Left = 72
    Top = 280
  end
end
