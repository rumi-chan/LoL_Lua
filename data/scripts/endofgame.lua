local L0_1, L1_1
L0_1 = 0
TEAM_UNKNOWN = L0_1
L0_1 = 2
EOG_SCOREBOARD_PHASE_DELAY_TIME_DEFAULT = L0_1
L0_1 = 10
EOG_NEXUS_REVIVE_TIME = L0_1
L0_1 = 0
EOG_ALIVE_NEXUS_SKIN = L0_1
L0_1 = 1
EOG_DESTROYED_NEXUS_SKIN = L0_1
L0_1 = 0
EOG_MINION_FADE_AMOUNT = L0_1
L0_1 = 2
EOG_MINION_FADE_TIME = L0_1

function L0_1(A0_2, A1_2)
  local L2_2
  inWinningTeam = A0_2
  inLosingHQ = A1_2
  L2_2 = TriggerEndOfGameCeremony
  L2_2()
end

EndOfGameCeremony = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = BeginEndOfGame
  L0_2()
  L0_2 = inWinningTeam
  winningTeam = L0_2
  L0_2 = winningTeam
  L1_2 = TEAM_ORDER
  if L0_2 == L1_2 then
    L0_2 = TEAM_CHAOS
    losingTeam = L0_2
  else
    L0_2 = TEAM_ORDER
    losingTeam = L0_2
  end
  L0_2 = GetPosition
  L1_2 = inLosingHQ
  L0_2 = L0_2(L1_2)
  losingHQPosition = L0_2
  L0_2 = GetHQ
  L1_2 = TEAM_ORDER
  L0_2 = L0_2(L1_2)
  orderHQ = L0_2
  L0_2 = AddInvulnerable
  L1_2 = orderHQ
  L0_2(L1_2)
  L0_2 = AddUntargetable
  L1_2 = orderHQ
  L0_2(L1_2)
  L0_2 = SetBuildingHealthRegenEnabled
  L1_2 = orderHQ
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = GetHQ
  L1_2 = TEAM_CHAOS
  L0_2 = L0_2(L1_2)
  chaosHQ = L0_2
  L0_2 = AddInvulnerable
  L1_2 = chaosHQ
  L0_2(L1_2)
  L0_2 = AddUntargetable
  L1_2 = chaosHQ
  L0_2(L1_2)
  L0_2 = SetBuildingHealthRegenEnabled
  L1_2 = chaosHQ
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_CAMERALOCKING
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_CAMERAMOVEMENT
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_ABILITIES
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_SUMMONERSPELLS
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_MOVEMENT
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_SHOP
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_MINIMAPMOVEMENT
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = DisableHUDForEndOfGame
  L0_2()
  L0_2 = SetBarracksSpawnEnabled
  L1_2 = false
  L0_2(L1_2)
  L0_2 = CloseShop
  L0_2()
  L0_2 = HaltAllAI
  L0_2()
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_UNKNOWN
  L2_2 = "ChampionEoGCeremony"
  L0_2(L1_2, L2_2)
  L0_2 = InitTimer
  L1_2 = "DestroyNexusPhase"
  L2_2 = GetEoGNexusChangeSkinTime
  L2_2 = L2_2()
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetWinningTeam
  L1_2 = winningTeam
  L0_2(L1_2)
end

LegacyEndOfGameCeremony = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = MoveCameraFromCurrentPositionToPoint
  L2_2 = A0_2
  L3_2 = losingHQPosition
  L4_2 = GetEoGPanToHQTime
  L4_2 = L4_2()
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetGreyscaleEnabledWhenDead
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end

ChampionEoGCeremony = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetEoGUseNexusDeathAnimation
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = SetHQCurrentSkin
    L1_2 = losingTeam
    L2_2 = EOG_DESTROYED_NEXUS_SKIN
    L0_2(L1_2, L2_2)
  end
  L0_2 = FadeMinions
  L1_2 = losingTeam
  L2_2 = EOG_MINION_FADE_AMOUNT
  L3_2 = EOG_MINION_FADE_TIME
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "StopRenderingMinionsPhase"
  L2_2 = EOG_MINION_FADE_TIME
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EOG_SCOREBOARD_PHASE_DELAY_TIME_DEFAULT
  scoreboardPhaseDelay = L0_2
  L0_2 = EOG_SCOREBOARD_PHASE_DELAY_TIME
  if L0_2 ~= nil then
    L0_2 = EOG_SCOREBOARD_PHASE_DELAY_TIME
    scoreboardPhaseDelay = L0_2
  end
  L0_2 = InitTimer
  L1_2 = "ScoreboardPhase"
  L2_2 = scoreboardPhaseDelay
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end

DestroyNexusPhase = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetMinionsNoRender
  L1_2 = losingTeam
  L2_2 = true
  L0_2(L1_2, L2_2)
end

StopRenderingMinionsPhase = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_CHAT
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = EndGame
  L0_2()
end

ScoreboardPhase = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetHQCurrentSkin
  L1_2 = losingTeam
  L2_2 = EOG_ALIVE_NEXUS_SKIN
  L0_2(L1_2, L2_2)
end

TestReviveNexus = L0_1
