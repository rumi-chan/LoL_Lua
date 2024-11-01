local L0_1, L1_1, L2_1
L0_1 = {}
DefaultTauntBehavior = L0_1
L0_1 = RegisterForEvent
L1_1 = "OnTauntBegin"
L2_1 = DefaultTauntBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnTauntEnd"
L2_1 = DefaultTauntBehavior
L0_1(L1_1, L2_1)
L0_1 = DefaultTauntBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = GetTauntTarget
  L2_2 = L2_2()
  tauntTarget = L2_2
  L2_2 = tauntTarget
  if L2_2 ~= nil then
    L2_2 = AI_FEARED
    if L1_2 ~= L2_2 then
      L2_2 = OutOfCombatRegen
      L2_2 = L2_2.Stop
      L2_2()
      L2_2 = SetStateAndCloseToTarget
      L3_2 = AI_TAUNTED
      L4_2 = tauntTarget
      L2_2(L3_2, L4_2)
      L2_2 = SetRoamState
      L3_2 = HOSTILE
      L2_2(L3_2)
    end
  end
end

L0_1.OnTauntBegin = L1_1
L0_1 = DefaultTauntBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = GetTauntTarget
  L2_2 = L2_2()
  tauntTarget = L2_2
  L2_2 = tauntTarget
  if L2_2 ~= nil then
    L2_2 = AI_FEARED
    if L1_2 ~= L2_2 then
      L2_2 = OutOfCombatRegen
      L2_2 = L2_2.Stop
      L2_2()
      L2_2 = SetStateAndCloseToTarget
      L3_2 = AI_ATTACK
      L4_2 = tauntTarget
      L2_2(L3_2, L4_2)
      L2_2 = SetRoamState
      L3_2 = HOSTILE
      L2_2(L3_2)
  end
  else
    L2_2 = NetSetState
    L3_2 = AI_ATTACK
    L2_2(L3_2)
    L2_2 = TimerRetreat
    L2_2()
    L2_2 = TimerAttack
    L2_2()
  end
end

L0_1.OnTauntEnd = L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetTauntTarget
  L1_2 = L1_2()
  tauntTarget = L1_2
  L1_2 = tauntTarget
  if L1_2 ~= nil then
    L1_2 = AI_FEARED
    if L0_2 ~= L1_2 then
      L1_2 = OutOfCombatRegen
      L1_2 = L1_2.Stop
      L1_2()
      L1_2 = SetStateAndCloseToTarget
      L2_2 = AI_TAUNTED
      L3_2 = tauntTarget
      L1_2(L2_2, L3_2)
      L1_2 = SetRoamState
      L2_2 = HOSTILE
      L1_2(L2_2)
    end
  end
end

TimerTaunt = L0_1
L0_1 = DefaultTauntBehavior
return L0_1
