local L0_1, L1_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0.3
  L2_2 = GetMP
  L2_2 = L2_2()
  L3_2 = GetTarget
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = GetMaxMP
    L3_2 = L3_2()
    L3_2 = L2_2 / L3_2
    L3_2 = L3_2 * 0.8
    L3_2 = L3_2 * 2
    L3_2 = L3_2 * L1_2
    A0_2.Priority = L3_2
    L3_2 = true
    return L3_2
  end
  A0_2.Priority = 0
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2
end

BeginTask = L0_1

function L0_1(A0_2)
  local L1_2
end

Tick = L0_1

function L0_1()
  local L0_2, L1_2
end

OnLevelUp = L0_1

function L0_1(A0_2)
  local L1_2
end

OnTargetLost = L0_1
