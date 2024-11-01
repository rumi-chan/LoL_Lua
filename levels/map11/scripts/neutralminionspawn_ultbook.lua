local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "SR_NeutralMinionSpawn"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 34
  START_OF_GAME_ADDITIONAL_DELAY_CRAB = L0_2
  L0_2 = MINION_SPAWN_START_TIME
  L0_2 = 240 - L0_2
  DRAGON_SPAWN_TIME = L0_2
  L0_2 = 210
  ELEMENTAL_DRAGON_SPAWN_RATE = L0_2
  L0_2 = 270
  ELDER_DRAGON_SPAWN_RATE = L0_2
  L0_2 = {}
  L1_2 = {}
  L0_2[1] = L1_2
  L1_2 = {}
  L0_2[2] = L1_2
  L1_2 = {}
  L0_2[3] = L1_2
  L1_2 = {}
  L0_2[4] = L1_2
  L1_2 = {}
  L0_2[5] = L1_2
  L1_2 = {}
  L0_2[6] = L1_2
  L1_2 = {}
  L0_2[7] = L1_2
  L1_2 = {}
  L0_2[8] = L1_2
  L1_2 = {}
  L0_2[9] = L1_2
  L1_2 = {}
  L0_2[10] = L1_2
  L1_2 = {}
  L0_2[11] = L1_2
  L1_2 = {}
  L0_2[12] = L1_2
  L1_2 = {}
  L0_2[13] = L1_2
  L1_2 = {}
  L0_2[14] = L1_2
  L1_2 = {}
  L0_2[15] = L1_2
  L1_2 = {}
  L0_2[16] = L1_2
  NeutralMinionCamps = L0_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = 4
  L3_2 = 6
  L4_2 = 7
  L5_2 = 10
  L6_2 = 15
  L7_2 = 16
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  CampsWithInitialMinimapUI = L0_2
end

OverrideNeutralMinionSpawnDefaults = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = NeutralMinionCamps
  L0_2 = L0_2[2]
  L1_2 = START_OF_GAME_MONSTER_SPAWN_DELAY
  L2_2 = CAMP_TIME_OFFSET
  L2_2 = L2_2 * 2
  L1_2 = L1_2 + L2_2
  L0_2.GroupDelaySpawnTime = L1_2
  L0_2 = NeutralMinionCamps
  L0_2 = L0_2[3]
  L1_2 = START_OF_GAME_MONSTER_SPAWN_DELAY
  L2_2 = CAMP_TIME_OFFSET
  L2_2 = L2_2 * 1
  L1_2 = L1_2 + L2_2
  L0_2.GroupDelaySpawnTime = L1_2
  L0_2 = NeutralMinionCamps
  L0_2 = L0_2[8]
  L1_2 = START_OF_GAME_MONSTER_SPAWN_DELAY
  L2_2 = CAMP_TIME_OFFSET
  L2_2 = L2_2 * 2
  L1_2 = L1_2 + L2_2
  L0_2.GroupDelaySpawnTime = L1_2
  L0_2 = NeutralMinionCamps
  L0_2 = L0_2[9]
  L1_2 = START_OF_GAME_MONSTER_SPAWN_DELAY
  L2_2 = CAMP_TIME_OFFSET
  L2_2 = L2_2 * 1
  L1_2 = L1_2 + L2_2
  L0_2.GroupDelaySpawnTime = L1_2
end

NeutralMinionOverride = L0_1
L0_1 = NeutralMinionSpawnInit
L0_1()
