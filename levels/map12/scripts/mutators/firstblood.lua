local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "HA_AP_Poro"
  L2_2 = 0
  L0_2(L1_2, L2_2)
end

OnInitClient = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "HowlingAbyssAuraFirstBlood"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "DoransItemsLimit"
  L2_2 = false
  L0_2(L1_2, L2_2)
end

OnInitServer = L0_1
