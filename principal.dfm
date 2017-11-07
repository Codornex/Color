object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Convert Hex em TColor'
  ClientHeight = 168
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    OnChange = edtColorChange
  end
  object Button1: TButton
    Left = 8
    Top = 132
    Width = 241
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 180
    Top = 8
    Width = 110
    Height = 110
    TabOrder = 3
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 108
      Height = 108
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Stretch = True
      ExplicitLeft = -5
      ExplicitTop = -5
      ExplicitWidth = 120
      ExplicitHeight = 120
    end
  end
  object edtRed: TLabeledEdit
    Left = 8
    Top = 102
    Width = 50
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Red'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    NumbersOnly = True
    TabOrder = 4
    OnChange = edtRedChange
  end
  object edtGreen: TLabeledEdit
    Left = 66
    Top = 102
    Width = 50
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Green'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    NumbersOnly = True
    TabOrder = 5
    OnChange = edtRedChange
  end
  object edtBlue: TLabeledEdit
    Left = 122
    Top = 102
    Width = 50
    Height = 21
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = 'Blue'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    NumbersOnly = True
    TabOrder = 6
    OnChange = edtRedChange
  end
  object BitBtn1: TBitBtn
    Left = 254
    Top = 132
    Width = 36
    Height = 25
    Caption = 'P'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object ColorDialog1: TColorDialog
    Left = 192
    Top = 64
  end
end
