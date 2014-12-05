inherited frameauftrag: Tframeauftrag
  Width = 659
  Height = 575
  inherited gridpanel: TGridPanel
    Width = 659
    Height = 575
    inherited Panel5: TPanel
      Width = 323
      Height = 567
      ExplicitWidth = 219
      ExplicitHeight = 296
      inherited Label29: TLabel
        Top = 343
        ExplicitTop = 343
      end
      object Label1: TLabel [7]
        Left = 13
        Top = 251
        Width = 58
        Height = 13
        Margins.Left = 14
        Caption = 'Auftragstyp'
      end
      inherited dtabrechnungsende: tfmaskedit
        TabOrder = 12
      end
      inherited menotizen: TfMemo
        Top = 343
        ExplicitTop = 343
      end
      inherited bsave: TNxButton
        Top = 516
        ExplicitTop = 516
      end
      object cbselectauftrag: TNxComboBox [15]
        Left = 264
        Top = 251
        Width = 121
        Height = 21
        TabOrder = 3
        HideFocus = False
        AutoCompleteDelay = 0
      end
      object NxButton1: TNxButton [16]
        Left = 264
        Top = 297
        Width = 121
        Caption = 'Auftragstypen anlegen'
        TabOrder = 6
      end
      inherited eposteingang: TfEdit
        TabOrder = 10
      end
      inherited eabrechnungsende: TfEdit
        TabOrder = 13
      end
      inherited UpDown1: TUpDown
        Top = 229
        TabOrder = 11
        ExplicitTop = 229
      end
      inherited UpDown2: TUpDown
        TabOrder = 9
      end
    end
    inherited rightparent: TPanel
      Left = 333
      Width = 324
      Height = 567
    end
  end
end
