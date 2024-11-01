local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = DebugPrintToChat
  L1_2 = "hello friends cats"
  L0_2(L1_2)
  L0_2 = false
  return L0_2
end

OnInit = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugPrintToChat
  L3_2 = "order"
  L2_2(L3_2)
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = ORDER_ATTACKTO
  if A0_2 == L3_2 then
    L3_2 = DebugPrintToChat
    L4_2 = "attack order received"
    L3_2(L4_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACK
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = SetRoamState
    L4_2 = 1
    L3_2(L4_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = Error
  L4_2 = "Unsupported Order"
  L3_2(L4_2)
  L3_2 = false
  return L3_2
end

OnOrder = L0_1
