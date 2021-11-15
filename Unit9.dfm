object Form9: TForm9
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Szyfrator/Deszyfrator'
  ClientHeight = 235
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 235
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 40
      Width = 179
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ustawienia generator LCG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabeledEdit1: TLabeledEdit
      Left = 4
      Top = 89
      Width = 55
      Height = 21
      EditLabel.Width = 5
      EditLabel.Height = 13
      EditLabel.Caption = 'L'
      NumbersOnly = True
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 65
      Top = 89
      Width = 55
      Height = 21
      EditLabel.Width = 7
      EditLabel.Height = 13
      EditLabel.Caption = 'C'
      NumbersOnly = True
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 126
      Top = 89
      Width = 55
      Height = 21
      EditLabel.Width = 7
      EditLabel.Height = 13
      EditLabel.Caption = 'G'
      NumbersOnly = True
      TabOrder = 2
    end
    object LabeledEdit4: TLabeledEdit
      Left = 24
      Top = 139
      Width = 121
      Height = 21
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Szyfr szyfrujacy:'
      NumbersOnly = True
      TabOrder = 3
    end
    object Button1: TButton
      Left = 12
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Szyfruj'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 93
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Deszyfruj'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 185
    Top = 0
    Width = 586
    Height = 235
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 88
      Top = 0
      Width = 100
      Height = 13
      Caption = 'Przed szyfrowaniem:'
    end
    object Label3: TLabel
      Left = 384
      Top = 0
      Width = 77
      Height = 13
      Caption = 'Po szyfrowaniu:'
    end
    object Memo1: TMemo
      Left = 0
      Top = 16
      Width = 289
      Height = 209
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 287
      Top = 16
      Width = 289
      Height = 209
      TabOrder = 1
    end
  end
end
