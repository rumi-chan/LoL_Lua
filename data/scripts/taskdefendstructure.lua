local L0_1, L1_1
L0_1 = 22500
MIN_FIGHT_DIST_SQ = L0_1
L0_1 = 562500
MAX_FIGHT_DIST_SQ = L0_1
L0_1 = 0
AI_MOVE = L0_1
L0_1 = 1
AI_ATTACK = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetObject
  L2_2 = A0_2.StructureID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    A0_2.Done = true
    A0_2.Priority = 0
    return
  end
  L2_2 = 0.3
  L3_2 = 0.25
  L4_2 = 0.5
  L5_2 = 20
  L6_2 = GetTime
  L6_2 = L6_2()
  L7_2 = GetLastTookDamageTime
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  if 0 <= L6_2 and L5_2 >= L6_2 then
    L7_2 = GetDist
    L8_2 = GetPos
    L8_2 = L8_2()
    L9_2 = GetPos
    L10_2 = L1_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = math
    L8_2 = L8_2.sqrt
    L9_2 = GetMaxTravelDistSquared
    L9_2, L10_2, L11_2, L12_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = L8_2 - L7_2
    L9_2 = L9_2 / L8_2
    L10_2 = L6_2 / L5_2
    L10_2 = 1 - L10_2
    L11_2 = L7_2 * L7_2
    L12_2 = MAX_FIGHT_DIST_SQ
    if L11_2 < L12_2 then
      L2_2 = L2_2 * 0.5
    else
      L11_2 = L7_2 * L7_2
      L12_2 = MIN_FIGHT_DIST_SQ
      if L11_2 < L12_2 then
        L2_2 = 0
      end
    end
    L11_2 = L2_2 * L9_2
    L11_2 = L11_2 * L10_2
    A0_2.Priority = L11_2
  else
    A0_2.Priority = 0
  end
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetObject
  L2_2 = A0_2.StructureID
  L1_2 = L1_2(L2_2)
  L2_2 = Say
  L3_2 = "BeginTask: Defend "
  L4_2 = objGetName
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = TurnOffAutoAttack
  L3_2 = STOPREASON_TARGET_LOST
  L2_2(L3_2)
  L2_2 = SetStateAndMove
  L3_2 = AI_MOVE
  L4_2 = GetPos
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end

BeginTask = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetObject
  L2_2 = A0_2.StructureID
  L1_2 = L1_2(L2_2)
  L2_2 = GetDistSquared
  L3_2 = GetPos
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPos
  L4_2, L5_2, L6_2 = L4_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = IsMoving
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = MAX_FIGHT_DIST_SQ
    if L2_2 > L3_2 then
      L3_2 = SetStateAndMove
      L4_2 = AI_MOVE
      L5_2 = GetPos
      L6_2 = L1_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
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
