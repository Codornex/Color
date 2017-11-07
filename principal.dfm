object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = spRed
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Convert Hex em TColor'
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
    Height = 114
  end
  object Label1: TLabel
    Left = 8
    Top = 89
    Width = 19
    Height = 13
    Caption = 'Red'
  end
  object Green: TLabel
    Left = 65
    Top = 89
    Width = 29
    Height = 13
    Caption = 'Green'
  end
  object Label2: TLabel
    Left = 123
    Top = 89
    Width = 20
    Height = 13
    Caption = 'Blue'
  end
  object edtHex: TLabeledEdit
    Left = 8
    Top = 22
    Width = 164
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Cor Hexa'
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
    TabOrder = 1
    OnKeyPress = edtHexKeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 132
    Width = 241
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 255
    Top = 132
    Width = 32
    Height = 25
    Caption = 'P'
    TabOrder = 3
    OnClick = Button2Click
  end
  object spRed: TSpinEdit
    Left = 8
    Top = 104
    Width = 49
    Height = 22
    MaxValue = 255
    MinValue = 0
    TabOrder = 4
    Value = 0
    OnChange = spRedChange
  end
  object spGreen: TSpinEdit
    Left = 65
    Top = 104
    Width = 49
    Height = 22
    MaxValue = 255
    MinValue = 0
    TabOrder = 5
    Value = 0
    OnChange = spRedChange
  end
  object spBlue: TSpinEdit
    Left = 123
    Top = 104
    Width = 49
    Height = 22
    MaxValue = 255
    MinValue = 0
    TabOrder = 6
    Value = 0
    OnChange = spRedChange
  end
  object ColorDialog1: TColorDialog
    Left = 192
    Top = 64
  end
end
