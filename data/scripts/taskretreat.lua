local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 1
  L2_2 = 0.25
  L3_2 = GetRegroupPos
  L3_2 = L3_2()
  L4_2 = GetDist
  L5_2 = L3_2
  L6_2 = GetPos
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = GetMaxTravelDistSquared
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L4_2 / L5_2
  L7_2 = 1 - L7_2
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = GetHP
  L8_2 = L8_2()
  L9_2 = GetMaxHP
  L9_2 = L9_2()
  L8_2 = L8_2 / L9_2
  L8_2 = 1 - L8_2
  L9_2 = 0
  L7_2 = L7_2(L8_2, L9_2)
  if 0.9 < L6_2 and 0 < L7_2 then
    L7_2 = 1
  end
  L8_2 = L2_2 * L6_2
  L9_2 = 1 - L2_2
  L8_2 = L8_2 + L9_2
  L9_2 = L1_2 * L8_2
  L9_2 = L9_2 * L7_2
  A0_2.Priority = L9_2
  L9_2 = GetTime
  L9_2 = L9_2()
  L10_2 = pairs
  L11_2 = L0_1
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = L9_2 - 2
    if L13_2 < L15_2 then
      L15_2 = L0_1
      L15_2[L13_2] = nil
    elseif L13_2 == L9_2 then
      L15_2 = GetHP
      L15_2 = L15_2()
      if L14_2 > L15_2 then
        L15_2 = L0_1
        L15_2[L13_2] = L14_2
      end
    end
  end
  L10_2 = L0_1
  L10_2 = L10_2[L9_2]
  if not L10_2 then
    L10_2 = L0_1
    L11_2 = GetHP
    L11_2 = L11_2()
    L10_2[L9_2] = L11_2
  end
  L10_2 = L0_1
  L11_2 = L9_2 - 2
  L10_2 = L10_2[L11_2]
  if L10_2 then
    L10_2 = L0_1
    L11_2 = L9_2 - 2
    L10_2 = L10_2[L11_2]
    L11_2 = GetHP
    L11_2 = L11_2()
    L10_2 = L10_2 - L11_2
    if 110 < L10_2 then
      A0_2.Priority = 1
    end
  end
end

UpdatePriority = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_TARGET_LOST
  L1_2(L2_2)
  L1_2 = GetRegroupPos
  L1_2 = L1_2()
  L2_2 = SetStateAndMove
  L3_2 = 0
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

BeginTask = L1_1

function L1_1(A0_2)
  local L1_2
end

Tick = L1_1

function L1_1(A0_2)
  local L1_2
end

OnTargetLost = L1_1
