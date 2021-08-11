object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 288
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnTestRaize: TRzButton
    Left = 8
    Top = 8
    Width = 153
    Caption = 'btnTestRaize'
    TabOrder = 0
    OnClick = btnTestRaizeClick
  end
  object editTestDevExpress: TcxRichEdit
    Left = 8
    Top = 48
    Properties.ScrollBars = ssBoth
    Lines.Strings = (
      #26412#24037#31243#39564#35777'Delphi'#25554#20214#26159#21542#27491#30830#23433#35013
      '1. '#25171#24320#26412#31383#21475#19981#20250#25253#38169
      '2. '#32534#35793#26412#24037#31243#19981#20250#25253#38169
      '3. '#36816#34892#26412#24037#31243#65292#24212#35813#33021#30475#21040'CodeSite'#31383#21475#22686#21152#19968#34892#8220'Hello, CodeSite'#8221
      ''
      #30456#20851#25554#20214#65306
      '1. raize component'
      '2. devexpress'
      '3. code'
      '4. fsvcl'
      '5. nativexml')
    TabOrder = 1
    Height = 232
    Width = 500
  end
  object edtfsvcl: TRzCalcEdit
    Left = 167
    Top = 11
    Width = 153
    Height = 21
    TabOrder = 2
    CalculatorVisible = True
    DisplayFormat = ',0;(,0)'
  end
  object btnTestNativeXml: TButton
    Left = 327
    Top = 9
    Width = 181
    Height = 25
    Caption = 'btnTestNativeXml'
    TabOrder = 3
    OnClick = btnTestNativeXmlClick
  end
end
