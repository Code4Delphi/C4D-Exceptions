object C4DExceptionsDemo01ViewMain: TC4DExceptionsDemo01ViewMain
  Left = 0
  Top = 0
  Caption = 'C4DExceptionsDemo01ViewMain'
  ClientHeight = 358
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 215
    Width = 809
    Height = 143
    Align = alBottom
    Caption = ' Obligatory com foco  '
    TabOrder = 0
    object Button1: TButton
      Left = 20
      Top = 147
      Width = 75
      Height = 25
      Caption = 'Verificar'
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 805
      Height = 126
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object Label1: TLabel
          Left = 14
          Top = 17
          Width = 24
          Height = 13
          Caption = 'Edit1'
        end
        object Label2: TLabel
          Left = 137
          Top = 17
          Width = 37
          Height = 13
          Caption = 'DBEdit1'
        end
        object Label3: TLabel
          Left = 261
          Top = 17
          Width = 57
          Height = 13
          Caption = 'ComboBox1'
        end
        object Label4: TLabel
          Left = 14
          Top = 57
          Width = 24
          Height = 13
          Caption = 'Edit2'
        end
        object Edit1: TEdit
          Left = 10
          Top = 33
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 136
          Top = 33
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object ComboBox1: TComboBox
          Left = 259
          Top = 33
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            ''
            'Op'#231#227'o 01'
            'Op'#231#227'o 02'
            'Op'#231#227'o 03')
        end
        object Edit2: TEdit
          Left = 10
          Top = 73
          Width = 121
          Height = 21
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 215
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnMsg: TButton
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Msg'
      TabOrder = 0
    end
    object btnWarning: TButton
      AlignWithMargins = True
      Left = 3
      Top = 25
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Warning'
      TabOrder = 1
    end
    object btnError: TButton
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Error'
      TabOrder = 2
    end
    object btnEmpty: TButton
      AlignWithMargins = True
      Left = 3
      Top = 125
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Empty'
      TabOrder = 3
    end
    object btnPermission: TButton
      AlignWithMargins = True
      Left = 3
      Top = 75
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Permission'
      TabOrder = 4
    end
    object btnObligatory: TButton
      AlignWithMargins = True
      Left = 3
      Top = 100
      Width = 803
      Height = 25
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Obligatory'
      TabOrder = 5
    end
    object btnExceptionDefault: TButton
      Left = 6
      Top = 153
      Width = 118
      Height = 25
      Caption = 'Exception default'
      TabOrder = 6
      OnClick = btnExceptionDefaultClick
    end
    object Button2: TButton
      Left = 216
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 7
      OnClick = Button2Click
    end
  end
end
