local L0_1, L1_1
L0_1 = GetAttackRange
L0_1 = L0_1()
L0_1 = L0_1 + 50
MIN_FIGHT_DIST = L0_1
L0_1 = MIN_FIGHT_DIST
L1_1 = MIN_FIGHT_DIST
L0_1 = L0_1 * L1_1
MIN_FIGHT_DIST_SQ = L0_1
L0_1 = GetAttackRange
L0_1 = L0_1()
L0_1 = L0_1 + 500
MIN_ENGAGE_DIST = L0_1
L0_1 = MIN_ENGAGE_DIST
L1_1 = MIN_ENGAGE_DIST
L0_1 = L0_1 * L1_1
MIN_ENGAGE_DIST_SQ = L0_1
L0_1 = 0
AI_ATTACK = L0_1
L0_1 = 1
AI_FOLLOW = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetMinions
  L2_2 = GetOtherTeam
  L2_2 = L2_2()
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 10000
  L3_2 = nil
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = GetDistSquared
    L10_2 = GetPos
    L10_2 = L10_2()
    L11_2 = GetPos
    L12_2 = L8_2
    L11_2, L12_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = MIN_ENGAGE_DIST_SQ
    if L9_2 <= L10_2 then
      L10_2 = IsDead
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = GetHP
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L2_2 > L10_2 then
          L3_2 = L8_2
          L10_2 = GetHP
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L2_2 = L10_2
        end
      end
    end
  end
  if L3_2 then
    L4_2 = GetDist
    L5_2 = GetPos
    L5_2 = L5_2()
    L6_2 = GetPos
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = SetDebugSlotText
    L6_2 = 25
    L7_2 = "Dist: "
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L8_2 = 0
    L5_2(L6_2, L7_2, L8_2)
  end
  return L3_2
end

FindNearLowestHPMinion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  A0_2.Priority = 0
  L2_2 = A0_2
  L1_2 = A0_2.FindNearLowestHPMinion
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.Priority = 0.45
  end
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_TARGET_LOST
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.FindNearLowestHPMinion
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_ATTACK
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end

BeginTask = L0_1

function L0_1(A0_2)
  local L1_2
end

OnTargetLost = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetState
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.FindNearLowestHPMinion
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = GetPos
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetDistSquared
    L5_2 = GetPos
    L5_2 = L5_2()
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = AI_FOLLOW
    if L1_2 == L5_2 then
      L5_2 = MIN_FIGHT_DIST_SQ
      if L4_2 < L5_2 then
        L5_2 = SetStateAndCloseToTarget
        L6_2 = AI_ATTACK
        L7_2 = L2_2
        L5_2(L6_2, L7_2)
      else
        L5_2 = SetStateAndMove
        L6_2 = AI_FOLLOW
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
      end
    else
      L5_2 = AI_ATTACK
      if L1_2 == L5_2 then
        L5_2 = TargetInAttackRange
        L5_2 = L5_2()
        if L5_2 then
          L5_2 = TurnOnAutoAttack
          L6_2 = L2_2
          L5_2(L6_2)
        else
          L5_2 = TurnOffAutoAttack
          L6_2 = STOPREASON_MOVING
          L5_2(L6_2)
          L5_2 = SetStateAndMove
          L6_2 = AI_FOLLOW
          L7_2 = L3_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

Tick = L0_1
