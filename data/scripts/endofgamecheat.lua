local L0_1, L1_1
L0_1 = 0
TEAM_UNKNOWN = L0_1
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
  local L2_2, L3_2, L4_2, L5_2
  winningTeam = A0_2
  L2_2 = winningTeam
  L3_2 = TEAM_ORDER
  if L2_2 == L3_2 then
    L2_2 = TEAM_CHAOS
    losingTeam = L2_2
  else
    L2_2 = TEAM_ORDER
    losingTeam = L2_2
  end
  L2_2 = GetPosition
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  losingHQPosition = L2_2
  L2_2 = GetHQ
  L3_2 = TEAM_ORDER
  L2_2 = L2_2(L3_2)
  orderHQ = L2_2
  L2_2 = orderHQ
  if L2_2 ~= nil then
    L2_2 = AddInvulnerable
    L3_2 = orderHQ
    L2_2(L3_2)
    L2_2 = AddUntargetable
    L3_2 = orderHQ
    L2_2(L3_2)
    L2_2 = SetBuildingHealthRegenEnabled
    L3_2 = orderHQ
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = GetHQ
  L3_2 = TEAM_CHAOS
  L2_2 = L2_2(L3_2)
  chaosHQ = L2_2
  L2_2 = chaosHQ
  if L2_2 ~= nil then
    L2_2 = AddInvulnerable
    L3_2 = chaosHQ
    L2_2(L3_2)
    L2_2 = AddUntargetable
    L3_2 = chaosHQ
    L2_2(L3_2)
    L2_2 = SetBuildingHealthRegenEnabled
    L3_2 = chaosHQ
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = CloseShop
  L2_2()
  L2_2 = LuaForEachChampion
  L3_2 = TEAM_UNKNOWN
  L4_2 = "CheatChampionEoGCeremonyServer"
  L2_2(L3_2, L4_2)
  L2_2 = InitTimer
  L3_2 = "CheatDestroyNexusPhaseServer"
  L4_2 = GetEoGNexusChangeSkinTime
  L4_2 = L4_2()
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end

CheatEndOfGameCeremonyServer = L0_1

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

CheatChampionEoGCeremonyServer = L0_1

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
  L1_2 = "CheatStopRenderingMinionsPhaseServer"
  L2_2 = EOG_MINION_FADE_TIME
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "CheatRevertEoGSettingsServer"
  L2_2 = EOG_NEXUS_REVIVE_TIME
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end

CheatDestroyNexusPhaseServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetMinionsNoRender
  L1_2 = losingTeam
  L2_2 = true
  L0_2(L1_2, L2_2)
end

CheatStopRenderingMinionsPhaseServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetBarracksSpawnEnabled
  L1_2 = true
  L0_2(L1_2)
  L0_2 = FadeMinions
  L1_2 = losingTeam
  L2_2 = 1
  L3_2 = 0.1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetHQCurrentSkin
  L1_2 = losingTeam
  L2_2 = EOG_ALIVE_NEXUS_SKIN
  L0_2(L1_2, L2_2)
end

CheatRevertEoGSettingsServer = L0_1
