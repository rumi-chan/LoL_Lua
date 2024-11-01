local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "SR_LevelScript"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = 600
  INCREASE_CANNON_RATE_TIMER = L0_2
  L0_2 = 1080
  INCREASE_CANNON_RATE_TIMER2 = L0_2
  L0_2 = 150
  NEXT_MINION_MOVE_SPEED_INCREASE_TIME = L0_2
  L0_2 = 6
  MAX_MINION_MOVE_SPEED_INCREMENT = L0_2
  L0_2 = 1080
  LATE_SPAWN_RATE_TIMER = L0_2
  L0_2 = 25000
  LATE_WAVE_SPAWN_RATE = L0_2
  L0_2 = 45
  UPGRADE_MINION_TIMER = L0_2
  L0_2 = 6
  UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = L0_2
end

OverrideDefaultDefines = L0_1

function L0_1()
  local L0_2, L1_2
end

OverrideDefaultMinionInfo = L0_1

function L0_1()
  local L0_2, L1_2
end

OverrideDefaultTables = L0_1

function L0_1(A0_2, A1_2, A2_2)
end

OverrideMinionSpawnInfo = L0_1

function L0_1()
  local L0_2, L1_2
end

DoAdditionalPreloads = L0_1
L0_1 = Init
L0_1()
