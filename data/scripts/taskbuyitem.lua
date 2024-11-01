local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = 500
MIN_DIST_TO_SHOP = L0_1
L0_1 = 0
AI_MOVE = L0_1
L0_1 = 1
AI_SHOP = L0_1
L0_1 = {}
L1_1 = 1001
L2_1 = 2003
L3_1 = 1006
L4_1 = 1042
L5_1 = 1028
L6_1 = 1029
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
ITEMS_TO_BUY = L0_1
L0_1 = 1
BUY_INDEX = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = BUY_INDEX
  L1_2 = L1_2 + 1
  BUY_INDEX = L1_2
  L1_2 = BUY_INDEX
  if 6 < L1_2 then
    L1_2 = 1
    BUY_INDEX = L1_2
  end
end

ChangeItemToBuy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = ITEMS_TO_BUY
  L2_2 = BUY_INDEX
  L1_2 = L1_2[L2_2]
  return L1_2
end

GetNextItemToBuy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.ItemToBuy
  if L1_2 == nil then
    L1_2 = GetNextItemToBuy
    L1_2 = L1_2()
    A0_2.ItemToBuy = L1_2
  end
  L1_2 = GetNumInvSlotsAvailable
  L1_2 = L1_2()
  if L1_2 < 1 then
    A0_2.Priority = 0
    return
  end
  L1_2 = GetGold
  L1_2 = L1_2()
  L2_2 = GetItemPrice
  L3_2 = A0_2.ItemToBuy
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = GetRegroupPos
  L4_2 = L4_2()
  L5_2 = GetDist
  L6_2 = L4_2
  L7_2 = GetPos
  L7_2 = L7_2()
  L5_2 = L5_2(L6_2, L7_2)
  if L1_2 < L2_2 then
    A0_2.Priority = 0
  elseif L1_2 >= L2_2 then
    L6_2 = 2 * L2_2
    if L1_2 > L6_2 then
      L3_2 = 1.1
    end
    if L5_2 < 3000 then
      L6_2 = 0.8 * L3_2
      A0_2.Priority = L6_2
    elseif 3000 < L5_2 and L5_2 < 6000 then
      L6_2 = 6000 / L5_2
      L6_2 = L6_2 * 0.2
      L6_2 = L6_2 * L3_2
      A0_2.Priority = L6_2
    else
      L6_2 = 0.2 * L3_2
      A0_2.Priority = L6_2
    end
  end
  L6_2 = A0_2.Priority
  if 0.9 < L6_2 then
    A0_2.Priority = 0.9
  end
  L6_2 = GetItemPrice
  L7_2 = A0_2.ItemToBuy
  L6_2 = L6_2(L7_2)
  if L6_2 == 0 then
    A0_2.Priority = 0
    A0_2.ItemToBuy = nil
  end
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_IMMEDIATELY
  L1_2(L2_2)
  L1_2 = SetState
  L2_2 = AI_SHOP
  L1_2(L2_2)
end

BeginTask = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetRegroupPos
  L1_2 = L1_2()
  L2_2 = GetDist
  L3_2 = L1_2
  L4_2 = GetPos
  L4_2, L5_2 = L4_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetState
  L3_2 = L3_2()
  L4_2 = AI_SHOP
  if L3_2 == L4_2 then
    L3_2 = MIN_DIST_TO_SHOP
    if L2_2 > L3_2 then
      L3_2 = SetStateAndMove
      L4_2 = AI_MOVE
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = MIN_DIST_TO_SHOP
  if L2_2 <= L3_2 then
    L3_2 = GetState
    L3_2 = L3_2()
    L4_2 = AI_MOVE
    if L3_2 == L4_2 then
      L3_2 = StopMove
      L3_2()
      L3_2 = SetState
      L4_2 = AI_SHOP
      L3_2(L4_2)
    end
    L3_2 = GetGold
    L3_2 = L3_2()
    L4_2 = GetItemPrice
    L5_2 = A0_2.ItemToBuy
    L4_2 = L4_2(L5_2)
    if L3_2 > L4_2 then
      L3_2 = BuyItem
      L4_2 = A0_2.ItemToBuy
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.ChangeItemToBuy
      L3_2(L4_2)
      L3_2 = GetNextItemToBuy
      L3_2 = L3_2()
      A0_2.ItemToBuy = L3_2
      L4_2 = A0_2
      L3_2 = A0_2.UpdatePriority
      L3_2(L4_2)
    end
  end
end

Tick = L0_1

function L0_1(A0_2)
  local L1_2
end

OnTargetLost = L0_1
