local L0_1, L1_1
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 1
DIFFICULTY_INDEX = L0_1

function L0_1()
  local L0_2, L1_2
end

OnInitClient = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.GetFloat
  L1_2 = L1_2(L2_2)
  DIFFICULTY_INDEX = L1_2
  L1_2 = LuaForEachChampion
  L2_2 = TEAM_ORDER
  L3_2 = "SetNightmareBotDifficulty"
  L1_2(L2_2, L3_2)
  L1_2 = LuaForEachChampion
  L2_2 = TEAM_CHAOS
  L3_2 = "SetNightmareBotDifficulty"
  L1_2(L2_2, L3_2)
end

OnInitServer = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ApplyPersistentBuff
  L2_2 = A0_2
  L3_2 = "NightmareBotDifficulty"
  L4_2 = false
  L5_2 = DIFFICULTY_INDEX
  L6_2 = 3
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

SetNightmareBotDifficulty = L0_1
