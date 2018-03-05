object frmColor: TfrmColor
  Left = 0
  Top = 0
  ActiveControl = spRed
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pick Colors'
  ClientHeight = 165
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 178
    Top = 9
    Width = 114
    Height = 117
  end
  object Label1: TLabel
    Left = 8
    Top = 89
    Width = 20
    Height = 13
    Caption = 'Red'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Green: TLabel
    Left = 65
    Top = 89
    Width = 31
    Height = 13
    Caption = 'Green'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 123
    Top = 89
    Width = 23
    Height = 13
    Caption = 'Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtHex: TLabeledEdit
    Left = 8
    Top = 22
    Width = 164
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Cor Hexa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtHexKeyPress
  end
  object edtColor: TLabeledEdit
    Left = 8
    Top = 62
    Width = 164
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'Cor TColor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edtHexKeyPress
  end
  object btnConvert: TButton
    Left = 8
    Top = 132
    Width = 241
    Height = 25
    Caption = 'Converter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnPick: TButton
    Left = 255
    Top = 132
    Width = 37
    Height = 25
    Caption = 'P'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = spRedChange
  end
  object spRed: TSpinEdit
    Left = 8
    Top = 104
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 4
    Value = 0
    OnChange = spRedChange
    OnExit = spRedChange
  end
  object spGreen: TSpinEdit
    Left = 65
    Top = 104
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 5
    Value = 0
    OnChange = spRedChange
    OnExit = spRedChange
  end
  object spBlue: TSpinEdit
    Left = 123
    Top = 104
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 6
    Value = 0
    OnChange = spRedChange
    OnExit = spRedChange
  end
  object ColorPick: TColorDialog
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdAnyColor]
    Left = 192
    Top = 64
  end
end
