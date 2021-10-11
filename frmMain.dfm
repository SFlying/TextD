object fmMain: TfmMain
  Left = 284
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #25991#26412#24037#20855
  ClientHeight = 535
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 535
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      728
      535)
    object mmoText: TMemo
      Left = 8
      Top = 8
      Width = 353
      Height = 329
      ScrollBars = ssBoth
      TabOrder = 0
      OnKeyDown = mmoTextKeyDown
    end
    object btn1: TButton
      Left = 88
      Top = 352
      Width = 75
      Height = 25
      Caption = #39318#23383#22823#20889
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 168
      Top = 352
      Width = 75
      Height = 25
      Caption = #39318#23383#23567#20889
      TabOrder = 2
      OnClick = btn2Click
    end
    object edt1: TEdit
      Left = 8
      Top = 449
      Width = 713
      Height = 20
      Anchors = [akLeft, akBottom]
      TabOrder = 3
    end
    object btn3: TButton
      Left = 8
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #21435#25481#34892#39318
      TabOrder = 4
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 88
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #21435#25481#34892#26411
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 168
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #34892#39318#38468#21152
      TabOrder = 6
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 248
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #34892#26411#38468#21152
      TabOrder = 7
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 328
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #24490#29615#38468#21152
      TabOrder = 8
      OnClick = btn7Click
    end
    object edt2: TEdit
      Left = 8
      Top = 507
      Width = 313
      Height = 20
      Anchors = [akLeft, akBottom]
      TabOrder = 9
    end
    object edt3: TEdit
      Left = 328
      Top = 507
      Width = 313
      Height = 20
      Anchors = [akLeft, akBottom]
      TabOrder = 10
    end
    object btn8: TButton
      Left = 648
      Top = 503
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #20840#37096#26367#25442
      TabOrder = 11
      OnClick = btn8Click
    end
    object btn9: TButton
      Left = 248
      Top = 352
      Width = 75
      Height = 25
      Caption = #21435#25481#39318#23567#20889
      TabOrder = 12
      OnClick = btn9Click
    end
    object btn10: TButton
      Left = 328
      Top = 352
      Width = 75
      Height = 25
      Caption = #21435#25481#39318#31354#26684
      TabOrder = 13
      OnClick = btn10Click
    end
    object btn11: TButton
      Left = 408
      Top = 352
      Width = 75
      Height = 25
      Caption = #21435#25481#26411#31354#26684
      TabOrder = 14
      OnClick = btn11Click
    end
    object btn12: TButton
      Left = 408
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #21435#25481#20043#21069
      TabOrder = 15
      OnClick = btn12Click
    end
    object btn13: TButton
      Left = 488
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #21435#25481#20043#21518
      TabOrder = 16
      OnClick = btn13Click
    end
    object btn14: TButton
      Left = 488
      Top = 352
      Width = 75
      Height = 25
      Caption = #21024#38500#31354#30333#34892
      TabOrder = 17
      OnClick = btn14Click
    end
    object btn15: TButton
      Left = 568
      Top = 473
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #22797#21046#34892
      TabOrder = 18
      OnClick = btn15Click
    end
    object mmoStandby: TMemo
      Left = 368
      Top = 8
      Width = 353
      Height = 329
      ScrollBars = ssBoth
      TabOrder = 19
      OnKeyDown = mmoTextKeyDown
    end
    object btn16: TButton
      Left = 568
      Top = 352
      Width = 75
      Height = 25
      Caption = #20132#25442#20869#23481
      TabOrder = 20
      OnClick = btn16Click
    end
    object btn17: TButton
      Left = 648
      Top = 352
      Width = 33
      Height = 25
      Caption = #21512#24182
      TabOrder = 21
      OnClick = btn17Click
    end
    object btn18: TButton
      Left = 8
      Top = 352
      Width = 33
      Height = 25
      Caption = #22823#20889
      TabOrder = 22
      OnClick = btn18Click
    end
    object btn19: TButton
      Left = 48
      Top = 352
      Width = 33
      Height = 25
      Caption = #23567#20889
      TabOrder = 23
      OnClick = btn19Click
    end
    object btn20: TButton
      Left = 688
      Top = 352
      Width = 33
      Height = 25
      Caption = #23545#40784
      TabOrder = 24
      OnClick = btn20Click
    end
    object btn21: TButton
      Left = 8
      Top = 384
      Width = 75
      Height = 25
      Caption = #21435#22855#25968#34892
      TabOrder = 25
      OnClick = btn21Click
    end
    object btn22: TButton
      Left = 88
      Top = 384
      Width = 75
      Height = 25
      Caption = #21435#20598#25968#34892
      TabOrder = 26
      OnClick = btn22Click
    end
    object btn23: TButton
      Left = 168
      Top = 384
      Width = 75
      Height = 25
      Caption = #25554#20837#22855#25968
      TabOrder = 27
      OnClick = btn23Click
    end
    object btn24: TButton
      Left = 248
      Top = 384
      Width = 75
      Height = 25
      Caption = #25554#20837#20598#25968
      TabOrder = 28
      OnClick = btn24Click
    end
    object btn25: TButton
      Left = 328
      Top = 384
      Width = 75
      Height = 25
      Caption = #23545#40784#27880#37322
      TabOrder = 29
      OnClick = btn25Click
    end
    object btn26: TButton
      Left = 408
      Top = 384
      Width = 75
      Height = 25
      Caption = #23545#40784#36171#20540
      TabOrder = 30
      OnClick = btn26Click
    end
    object btn27: TButton
      Left = 568
      Top = 384
      Width = 75
      Height = 25
      Caption = #21319#24207
      TabOrder = 31
      OnClick = btn27Click
    end
    object btn28: TButton
      Left = 648
      Top = 384
      Width = 75
      Height = 25
      Caption = #38477#24207
      TabOrder = 32
      OnClick = btn28Click
    end
    object btn29: TButton
      Left = 8
      Top = 416
      Width = 75
      Height = 25
      Caption = #26684#24335#21270'SQL'
      TabOrder = 33
    end
    object btn30: TButton
      Left = 488
      Top = 384
      Width = 75
      Height = 25
      Caption = #23545#40784#23450#20041
      TabOrder = 34
      OnClick = btn30Click
    end
    object btn31: TButton
      Left = 88
      Top = 416
      Width = 75
      Height = 25
      Caption = #22266#23450#34892#23485
      TabOrder = 35
      OnClick = btn31Click
    end
    object btn32: TButton
      Left = 168
      Top = 416
      Width = 75
      Height = 25
      Caption = #23545#40784'D'#36171#20540
      TabOrder = 36
      OnClick = btn32Click
    end
    object btn33: TButton
      Left = 248
      Top = 416
      Width = 75
      Height = 25
      Caption = #23545#40784'Delphi'
      TabOrder = 37
      OnClick = btn33Click
    end
    object btn34: TButton
      Left = 328
      Top = 416
      Width = 75
      Height = 25
      Caption = #23553#35013#23383#31526#20018
      TabOrder = 38
      OnClick = btn34Click
    end
    object btn35: TButton
      Left = 408
      Top = 416
      Width = 75
      Height = 25
      Caption = #20998#31163#23383#31526#20018
      TabOrder = 39
      OnClick = btn35Click
    end
    object btn36: TButton
      Left = 488
      Top = 416
      Width = 75
      Height = 25
      Caption = 'SQL => C#'
      TabOrder = 40
      OnClick = btn36Click
    end
    object btn37: TButton
      Left = 568
      Top = 416
      Width = 75
      Height = 25
      Caption = #23553#35013'VB'
      TabOrder = 41
      OnClick = btn37Click
    end
  end
  object xpmnfst1: TXPManifest
    Left = 24
    Top = 24
  end
end
