object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Produto'
  ClientHeight = 328
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 79
    Top = 46
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 79
    Top = 86
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 79
    Top = 126
    Width = 62
    Height = 13
    Caption = 'Dt. Cadastro'
  end
  object Label4: TLabel
    Left = 79
    Top = 166
    Width = 54
    Height = 13
    Caption = 'Est. M'#237'nimo'
  end
  object Label5: TLabel
    Left = 219
    Top = 166
    Width = 58
    Height = 13
    Caption = 'Est. M'#225'ximo'
  end
  object Label6: TLabel
    Left = 79
    Top = 207
    Width = 44
    Height = 13
    Caption = 'Custo R$'
  end
  object Label7: TLabel
    Left = 219
    Top = 207
    Width = 46
    Height = 13
    Caption = 'Venda R$'
  end
  object lblStatusTela: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 413
    Height = 16
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = 'Status Tela'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ExplicitLeft = 343
    ExplicitWidth = 73
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 287
    Width = 419
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    DesignSize = (
      419
      41)
    object btnConfirmar: TBitBtn
      Left = 254
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TBitBtn
      Left = 333
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object edtCodigo: TEdit
    Left = 79
    Top = 61
    Width = 121
    Height = 21
    TabStop = False
    Color = clSilver
    ReadOnly = True
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 79
    Top = 101
    Width = 261
    Height = 21
    TabOrder = 1
  end
  object edtDataCadastro: TEdit
    Left = 79
    Top = 142
    Width = 121
    Height = 21
    TabStop = False
    Color = clSilver
    ReadOnly = True
    TabOrder = 2
  end
  object edtEstMinimo: TEdit
    Left = 79
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtEstMaximo: TEdit
    Left = 219
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtPrecoCusto: TEdit
    Left = 79
    Top = 223
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtPrecoVenda: TEdit
    Left = 219
    Top = 223
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
