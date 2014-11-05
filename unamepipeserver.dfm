object dmnamepipeserver: Tdmnamepipeserver
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 505
  Width = 761
  object nps: TNPipeServer
    PipeName = 'pipe'
    Timeout = 500
    OnIncomingData = npsIncomingData
    Left = 368
    Top = 240
  end
end
