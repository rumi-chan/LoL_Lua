local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
end

OnInitClient = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 0
  L1_2 = 4
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = GetPlayerByClientID
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = ApplyPersistentBuff
      L6_2 = L4_2
      L7_2 = "IntroBotDamageIndicatorController"
      L8_2 = false
      L9_2 = 1
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = ApplyPersistentBuff
      L6_2 = L4_2
      L7_2 = "IntroBotPlayerDamageReduction"
      L8_2 = false
      L9_2 = 1
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = ApplyPersistentBuff
      L6_2 = L4_2
      L7_2 = "IntroBotPlayerExp"
      L8_2 = false
      L9_2 = 1
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "IntroBotReducedAttackRange"
  L2_2 = false
  L0_2(L1_2, L2_2)
end

OnInitServer = L0_1
