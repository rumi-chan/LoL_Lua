local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "GlobalLevelScript"
L0_1(L1_1)
L0_1 = DoLuaLevel
L1_1 = "BBLuaConversionLibrary"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = PreloadCharacter
  L1_2 = "SRUAP_MageCrystal"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRUAP_Flag"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Snail"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Dragon_prop"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Bird"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Antlermouse"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Gromp_prop"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Lizard"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_StoreKeeperNorth"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_StoreKeeperSouth"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "PromoController"
  L0_2(L1_2)
end

OnLevelInit = L0_1

function L0_1()
  local L0_2, L1_2
end

OnLevelInitServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = Log
  L1_2 = "----------------------- Regular LevelScript PostLevelLoad ----------------------------"
  L0_2(L1_2)
  L0_2 = SetWorldVar
  L1_2 = "SmiteChargeStart"
  L2_2 = 80
  L0_2(L1_2, L2_2)
end

OnPostLevelLoad = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = Log
  L1_2 = "----------------------- Regular LevelScript OnLevelReset ----------------------------"
  L0_2(L1_2)
  L0_2 = OnGameStartup
  L0_2()
  L0_2 = OnPostLevelLoad
  L0_2()
end

OnLevelReset = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_UNKNOWN
  L2_2 = "ApplySRBuffs"
  L0_2(L1_2, L2_2)
end

OnGameStartup = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = {}
  POST_GAME_EVENTS = L1_2
end

PostGameSetup = L0_1

function L0_1(A0_2, A1_2)
end

PostGameUpdate = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end

HandleDestroyedObject = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = ApplySRBuffs
  L2_2 = A0_2
  L1_2(L2_2)
end

OnGameSwapChampion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetTurret
  L2_2 = TEAM_ORDER
  L3_2 = 1
  L4_2 = HQ_TOWER1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if A0_2 == 0 then
    L2_2 = ApplyPersistentBuff
    L3_2 = L1_2
    L4_2 = "DebugMidGameBuff"
    L5_2 = false
    L6_2 = 1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = ApplyPersistentBuff
    L3_2 = L1_2
    L4_2 = "DebugLateGameBuff"
    L5_2 = false
    L6_2 = 1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end

OnJumpToMidGameCheat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetTurret
  L1_2 = TEAM_ORDER
  L2_2 = 1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = L0_2
  L3_2 = "DebugEqualizeDragons"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

EqualizeDragonsCheat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetTurret
  L1_2 = TEAM_ORDER
  L2_2 = 1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = L0_2
  L3_2 = "DebugResetPlay"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

EqualizeResetPlay = L0_1

function L0_1(A0_2)
  local L1_2
  if A0_2 == 0 then
  end
end

OnBarracksToggled = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ApplyPersistentBuff
  L2_2 = A0_2
  L3_2 = "S6Test_RegionRules"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = A0_2
  L3_2 = "SRChampionBuff"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

ApplySRBuffs = L0_1
