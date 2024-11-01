local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "GlobalLevelScript"
L0_1(L1_1)
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 1
ORDER_HQ = L0_1
L0_1 = 2
CHAOS_HQ = L0_1
L0_1 = 3
FRONT_TOWER = L0_1
L0_1 = 2
MIDDLE_TOWER = L0_1
L0_1 = 1
BACK_TOWER = L0_1
L0_1 = 4
HQ_TOWER2 = L0_1
L0_1 = 5
HQ_TOWER1 = L0_1
L0_1 = 0
RIGHT_LANE = L0_1
L0_1 = 1
CENTER_LANE = L0_1
L0_1 = 2
LEFT_LANE = L0_1
L0_1 = 100000
INITIAL_TIME_TO_SPAWN = L0_1
L0_1 = 1
EVENT_STAGE_WELCOME_TIME = L0_1
L0_1 = 30
EVENT_STAGE_PREANNOUNCE_TIME = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = PreloadSpell
  L1_2 = "TUTORIAL_MODULE_1_TUInit"
  L0_2(L1_2)
end

OnInitClient = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "TUTORIAL_MODULE_1_TUInit"
  L2_2 = true
  L0_2(L1_2, L2_2)
end

OnInitServer = L0_1
