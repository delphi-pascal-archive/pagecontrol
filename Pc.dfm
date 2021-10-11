object Form1: TForm1
  Left = 225
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Page Control'
  ClientHeight = 223
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 168
    Top = 136
    Width = 84
    Height = 16
    Caption = 'Page number:'
  end
  object Button1: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 88
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Next'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 88
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Pred'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 160
    Width = 169
    Height = 25
    Caption = 'Select'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Visible'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 256
    Top = 128
    Width = 81
    Height = 24
    TabOrder = 6
    Text = '2'
  end
  object CheckBox1: TCheckBox
    Left = 104
    Top = 200
    Width = 97
    Height = 17
    Caption = 'Visible=true'
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 216
    Top = 200
    Width = 121
    Height = 17
    Caption = 'TabVisible=true'
    TabOrder = 8
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 329
    Height = 113
    ActivePage = TabSheet1
    TabOrder = 9
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
    end
  end
end
