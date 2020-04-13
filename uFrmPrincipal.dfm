object FormFormulario: TFormFormulario
  Left = 0
  Top = 0
  Caption = 'FormFormulario'
  ClientHeight = 300
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFormulario: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 300
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 5
    object LAltura: TLabel
      Left = 394
      Top = 96
      Width = 185
      Height = 23
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Informe sua altura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPeso: TLabel
      Left = 15
      Top = 96
      Width = 184
      Height = 23
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Informe seu peso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditAltura: TEdit
      Left = 410
      Top = 129
      Width = 117
      Height = 21
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabOrder = 0
      TextHint = 'Altura'
      OnKeyPress = EditAlturaKeyPress
    end
    object EditPeso: TEdit
      Left = 31
      Top = 129
      Width = 117
      Height = 21
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabOrder = 1
      TextHint = 'Peso'
      OnKeyPress = EditPesoKeyPress
    end
    object BCalcular: TButton
      Left = 186
      Top = 172
      Width = 221
      Height = 72
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Calcular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = '@Microsoft JhengHei'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BCalcularClick
    end
    object PanelTitulo: TPanel
      Left = 1
      Top = 1
      Width = 621
      Height = 72
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'C'#225'lculo de IMC'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
  end
end
