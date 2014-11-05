object formauftragsart: Tformauftragsart
  AlignWithMargins = True
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Auftragsarten'
  ClientHeight = 281
  ClientWidth = 408
  Color = 15856113
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 344
    Top = 89
    Width = 48
    Height = 48
    Brush.Color = 6118749
  end
  object ListBox1: TListBox
    Left = 13
    Top = 10
    Width = 327
    Height = 210
    TabStop = False
    BevelInner = bvNone
    BevelOuter = bvNone
    ItemHeight = 13
    TabOrder = 0
  end
  object fEdit1: TfEdit
    Left = 10
    Top = 225
    Width = 247
    Height = 23
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Letter Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'neue Auftragsart'
    OnKeyDown = fEdit1KeyDown
    OnKeyPress = fEdit1KeyPress
    TabOnEnter = False
    FontColorOnEnter = 36607
    ColorFocused = 36607
    ColorNotFocused = clBlack
  end
  object bnxspeichern: TNxButton
    Left = 10
    Top = 248
    Width = 191
    Caption = 'speichern'
    TabOrder = 3
    OnClick = bnxspeichernClick
  end
  object bnxabbrechen: TNxButton
    Left = 207
    Top = 248
    Width = 191
    Caption = 'abbrechen'
    TabOrder = 4
    OnClick = bnxabbrechenClick
  end
  object NxButton3: TNxButton
    Left = 255
    Top = 225
    Width = 141
    Caption = 'hinzuf'#252'gen'
    TabOrder = 2
    OnClick = NxButton3Click
  end
  object Panel1: TPanel
    Left = 346
    Top = 91
    Width = 44
    Height = 44
    AutoSize = True
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = clWhite
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 5
    object Image1: TImage
      Left = 10
      Top = 10
      Width = 24
      Height = 24
      AutoSize = True
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF8000002E24944415478DAED54CB4E1441143DF5E89E
        073330C3F0308A4854120941373E17104960E51F183FC01F70E9CA5F706162A2
        3B57C6156C0413035B131626C4850B4946054608F3EA999EAE87A79B0F70A371
        4365BAAB535573CEB9F79E5BE2E3C22C849668EE77D18925420104C2430208A5
        E2DB814B1C129E1F45EEA5678C77D9DEE9F07CB8E83D9C25462DC4D0BDEBF0BD
        3EC419C1FF27B0D6E25F8E33823F136CDD9C872A8687E5CBB5F1FDDD8885B564
        351049C24A26F02CB41AC4F0273152290367704451F7A727218773E85987D859
        383A60E01CDC7117E38F966902D9E8ED1D4C88572317D0F26EEBC1E3D5C5CA8D
        1A6D52852F05B0CD2ECCAF3644B307D51D20FED942BDD1C197A887433A4817F2
        181112935A639822F2A182A61B755E22482C76DE7DDA2E09BF245E8E4EA365CC
        C6ED31B9521206FDAE01120F915328964314A8ACD54DF02376A81B8386B768D0
        9D9AD12C047954A443414914783EAFF99FA28091396C7FEB6C96955E152FAAD3
        681ABB71B7AC56AA04E812504261C0A7693D9A0CBB4BEF1FBB18827344F5013D
        3F178418653ACB54ADA8DE87EC939C44A5A411A91C5EEF34362774B82A9E57A7
        D03666EB4E2158AC129AAD813E1BA643E0BE9759BE774D8C7A5A17AA9E614A96
        F321668BCC6651C112500C2BC842C8F468C8F110AD86C593F5AFDB53325C126F
        A7A691C01DCDDFBA385AFF7C8880612A36B0661A280C392920060E9B47113B5C
        E11C37878540AE2431D0A4541A8629B23C672930E1D295B91A3EBCDF3D26564D
        ACF3AAD045FDB47DD07FB87B14ED15A0939087F9433A87D4AD443A939473C4E8
        7ACE67EE49982E568B6B16F419DA7453D39B606668E8D2F9F3A537AE9F3C136B
        73574161E8B70DBE9F2454AD33402D4EEF19956E124865F74D567F468CCC962E
        5B9388086CF8DD2179446B8FD385E54A1EDEF01E5BBB46025A222641BD699812
        DA4DA6AA4F1B252D68D68AF47F4A9C10C4D29E3625E0771A6A9FF51A5044E44E
        09C6E8BEA1911C7C72467046F037087E033E267410159A6AD10000000049454E
        44AE426082}
      ShowHint = True
      OnClick = Image1Click
    end
  end
  object NxColorScheme1: TNxColorScheme
    ColorScheme = csSilver
    Left = 216
    Top = 168
  end
end
