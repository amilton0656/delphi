object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 302
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainPrincipal: TMainMenu
    Left = 80
    Top = 72
    object mnuCadastro: TMenuItem
      Caption = 'Cadastro'
      object mnuCliente: TMenuItem
        Caption = 'Cliente'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuCategoria: TMenuItem
        Caption = 'Categoria'
        OnClick = mnuCategoriaClick
      end
      object mnuProduto: TMenuItem
        Caption = 'Produto'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = mnuFecharClick
      end
    end
    object mnuMovimentao: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object mnuVendas: TMenuItem
        Caption = 'Vendas'
      end
    end
    object mnuRelatrios: TMenuItem
      Caption = 'Relat'#243'rios'
      object mnuClienteRel: TMenuItem
        Caption = 'Cliente'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuProdutoRel: TMenuItem
        Caption = 'Produto'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mnuVendaporData: TMenuItem
        Caption = 'Venda por Data'
      end
    end
  end
end
