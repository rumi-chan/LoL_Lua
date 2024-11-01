local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "SR_NeutralMinionSpawn"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = 3
  DRAGONS_TO_ELDER = L0_2
  L0_2 = MINION_SPAWN_START_TIME
  L0_2 = 1200 - L0_2
  BARON_SPAWN_TIME = L0_2
  L0_2 = MINION_SPAWN_START_TIME
  L0_2 = 600 - L0_2
  HERALD_SPAWN_TIME = L0_2
end

OverrideNeutralMinionSpawnDefaults = L0_1

function L0_1()
  local L0_2, L1_2
end

NeutralMinionOverride = L0_1
L0_1 = NeutralMinionSpawnInit
L0_1()
