local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetState
  L1_2 = AI_IDLE
  L0_2(L1_2)
  L0_2 = GetGoldRedirectTarget
  L0_2 = L0_2()
  if L0_2 == nil then
    L1_2 = Die
    L2_2 = me
    L1_2(L2_2)
    return
  end
  L1_2 = EnableTargetTracking
  L2_2 = me
  L3_2 = L0_2
  L4_2 = 4
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = false
  return L1_2
end

OnInit = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = ORDER_CASTSPELL
  if A0_2 == L3_2 then
    L3_2 = AddTeleportToTargetTracking
    L4_2 = me
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = true
  return L3_2
end

OnOrder = L0_1
