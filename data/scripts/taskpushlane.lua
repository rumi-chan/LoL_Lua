local L0_1, L1_1
L0_1 = 5625
MIN_FOLLOW_DIST_SQ = L0_1
L0_1 = 500
MAX_DIST_TO_LANE = L0_1
L0_1 = 22500
MIN_FIGHT_DIST_SQ = L0_1
L0_1 = 90000
MAX_FIGHT_DIST_SQ = L0_1
L0_1 = false
allBarracksStarted = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetMinions
  L2_2 = GetTeam
  L2_2 = L2_2()
  L3_2 = A0_2.LaneID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetMaxTravelDistSquared
  L2_2 = L2_2()
  L3_2 = nil
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetMinionDistanceToLane
    L9_2 = L1_2[L7_2]
    L8_2 = L8_2(L9_2)
    L9_2 = MAX_DIST_TO_LANE
    if L8_2 < L9_2 then
      L8_2 = GetDistSquared
      L9_2 = GetPos
      L9_2 = L9_2()
      L10_2 = GetPos
      L11_2 = L1_2[L7_2]
      L10_2, L11_2 = L10_2(L11_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = MIN_FOLLOW_DIST_SQ
      if L8_2 > L9_2 and L2_2 > L8_2 then
        L2_2 = L8_2
        L3_2 = L1_2[L7_2]
      end
    end
  end
  L4_2 = L3_2
  L5_2 = L2_2
  return L4_2, L5_2
end

FindNearestFriendlyMinion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0.3
  L2_2 = allBarracksStarted
  if not L2_2 then
    L2_2 = GetAreAllBarracksStarted
    L3_2 = GetTeam
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    allBarracksStarted = L2_2
  end
  L2_2 = allBarracksStarted
  if L2_2 then
    L2_2 = 0
    L3_2 = GetHeroes
    L4_2 = GetTeam
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = GetActiveTaskName
      L9_2 = L3_2[L7_2]
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2.Name
      if L8_2 == L9_2 then
        L2_2 = L2_2 + 1
      end
    end
    L4_2 = 0
    L5_2 = GetActiveTaskName
    L5_2 = L5_2()
    L6_2 = A0_2.Name
    if L5_2 == L6_2 then
      L4_2 = 0.05
      L2_2 = L2_2 - 1
    end
    L5_2 = 0
    L6_2 = #L3_2
    if 0 < L6_2 then
      L6_2 = #L3_2
      L6_2 = L6_2 - L2_2
      L7_2 = #L3_2
      L6_2 = L6_2 / L7_2
      L5_2 = L6_2 * 0.04
    end
    L7_2 = A0_2
    L6_2 = A0_2.FindNearestFriendlyMinion
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = GetDist
      L8_2 = GetPos
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetPos
      L9_2, L10_2, L11_2 = L9_2()
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = math
      L8_2 = L8_2.sqrt
      L9_2 = GetMaxTravelDistSquared
      L9_2, L10_2, L11_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L7_2 / L8_2
      L9_2 = 1 - L9_2
      L10_2 = L1_2 * L9_2
      L10_2 = L10_2 * 0.2
      L10_2 = L10_2 + 0.24
      L10_2 = L10_2 + L5_2
      L10_2 = L10_2 + L4_2
      L11_2 = GetRandomFloatLua
      L11_2 = L11_2()
      L11_2 = L11_2 * 0.03
      L10_2 = L10_2 + L11_2
      A0_2.Priority = L10_2
    else
      A0_2.Priority = 0
    end
  else
    A0_2.Priority = 0
  end
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.FindNearestFriendlyMinion
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = SetStateAndMove
    L3_2 = AI_SOFTATTACK
    L4_2 = GetPos
    L5_2 = L1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end

FollowClosestMinion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_TARGET_LOST
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.FollowClosestMinion
  L1_2(L2_2)
end

BeginTask = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetMinionDistanceToLane
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MAX_DIST_TO_LANE
  L3_2 = L2_2 < L3_2
  return L3_2
end

IsMinionCloseToLane = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.FindNearestFriendlyMinion
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = IsMoving
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = MAX_FIGHT_DIST_SQ
    if L2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.FollowClosestMinion
      L3_2(L4_2)
  end
  else
    L3_2 = IsMoving
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = MIN_FIGHT_DIST_SQ
      if L2_2 < L3_2 then
        L3_2 = StopMove
        L3_2()
      end
    end
  end
end

Tick = L0_1

function L0_1(A0_2)
  local L1_2
end

OnTargetLost = L0_1
