local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = PreloadSpell
  L1_2 = "BWPlayerBuff"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneMelee_Order"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneMelee_Chaos"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneRanged_Order"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneRanged_Chaos"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneCannon_Order"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BilgeLaneCannon_Chaos"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BW_Razorfin"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BW_Ironback"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BW_Plundercrab"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "BW_Ocklepod"
  L0_2(L1_2)
end

OnInitClient = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "BWPlayerBuff"
  L2_2 = false
  L0_2(L1_2, L2_2)
end

OnInitServer = L0_1
