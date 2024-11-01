local L0_1, L1_1
L0_1 = 550
MAX_ENGAGE_DISTANCE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 0.25
DELAY_FIND_ENEMIES = L0_1
L0_1 = DoLuaShared
L1_1 = "Minions"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
end

OnPostInit = L0_1

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
    L1_2 = IsObjectUseable
    L2_2 = tauntTarget
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = UseTarget
      L2_2 = tauntTarget
      L1_2(L2_2)
    else
      L1_2 = SetStateAndCloseToTarget
      L2_2 = AI_TAUNTED
      L3_2 = tauntTarget
      L1_2(L2_2, L3_2)
    end
    L1_2 = StopTimer
    L2_2 = "TimerAntiKite"
    L1_2(L2_2)
  end
end

OnTauntBegin = L0_1

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
    L1_2 = IsObjectUseable
    L2_2 = tauntTarget
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = UseTarget
      L2_2 = tauntTarget
      L1_2(L2_2)
    else
      L1_2 = SetStateAndCloseToTarget
      L2_2 = AI_ATTACKMOVE_ATTACKING
      L3_2 = tauntTarget
      L1_2(L2_2, L3_2)
    end
    L1_2 = ResetAndStartTimer
    L2_2 = "TimerAntiKite"
    L1_2(L2_2)
  else
    L1_2 = FindTargetOrMove
    L1_2()
  end
end

OnTauntEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_IDLE
  if L0_2 == L1_2 then
    L1_2 = FindTargetOrMove
    L1_2()
  else
    L1_2 = AI_ATTACKMOVESTATE
    if L0_2 == L1_2 then
      L1_2 = SetStateAndMoveToBackwardNav
      L2_2 = AI_ATTACKMOVESTATE
      L1_2(L2_2)
      L1_2 = 0
      LastAttackScan = L1_2
    end
  end
end

TimerMoveForward = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVESTATE
  if L0_2 == L1_2 then
    L1_2 = FindUseableObjectInAcR
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = NetSetState
      L3_2 = AI_IDLE
      L2_2(L3_2)
      L2_2 = TurnOffAutoAttack
      L3_2 = STOPREASON_MOVING
      L2_2(L3_2)
      L2_2 = UseTarget
      L3_2 = L1_2
      L2_2(L3_2)
      return
    end
    L2_2 = FindTargetInAcR
    L2_2 = L2_2()
    if L2_2 == nil then
      L3_2 = TurnOffAutoAttack
      L4_2 = STOPREASON_TARGET_LOST
      L3_2(L4_2)
      return
    end
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACKMOVE_ATTACKING
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = ResetAndStartTimer
    L4_2 = "TimerAntiKite"
    L3_2(L4_2)
  else
    L1_2 = GetTauntTarget
    L1_2 = L1_2()
    tauntTarget = L1_2
    L1_2 = AI_TAUNTED
    if L0_2 == L1_2 then
      L1_2 = tauntTarget
      if L1_2 ~= nil then
        L1_2 = IsObjectUseable
        L2_2 = tauntTarget
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = UseTarget
          L2_2 = tauntTarget
          L1_2(L2_2)
        else
          L1_2 = SetStateAndCloseToTarget
          L2_2 = AI_TAUNTED
          L3_2 = tauntTarget
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_111
      end
    end
  end
  L1_2 = GetTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L1_2 = DistanceBetweenMeAndObject
    L2_2 = GetTarget
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = MAX_ENGAGE_DISTANCE
    if not (L1_2 > L2_2) then
      goto lbl_84
    end
  end
  L1_2 = FindTargetOrMove
  L1_2()
  ::lbl_84::
  L1_2 = TargetInAttackRange
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        L1_2 = ResetAndStartTimer
        L2_2 = "TimerAntiKite"
        L1_2(L2_2)
      end
    end
    L1_2 = TurnOnAutoAttack
    L2_2 = GetTarget
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = TargetInCancelAttackRange
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = TurnOffAutoAttack
      L2_2 = STOPREASON_MOVING
      L1_2(L2_2)
      L1_2 = 0
      LastAttackScan = L1_2
    end
  end
  ::lbl_111::
end

TimerFindEnemies = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = FindUseableObjectInAcR
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = NetSetState
    L3_2 = AI_IDLE
    L2_2(L3_2)
    L2_2 = TurnOffAutoAttack
    L3_2 = STOPREASON_MOVING
    L2_2(L3_2)
    L2_2 = UseTarget
    L3_2 = L1_2
    L2_2(L3_2)
    return
  end
  L2_2 = FindTargetInAcR
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = LastAutoAttackFinished
    L3_2 = L3_2()
    if L3_2 == false then
      L3_2 = InitTimer
      L4_2 = "TimerFindEnemies"
      L5_2 = DELAY_FIND_ENEMIES
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      return
    end
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACKMOVE_ATTACKING
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = ResetAndStartTimer
    L4_2 = "TimerAntiKite"
    L3_2(L4_2)
  else
    L3_2 = SetStateAndMoveToBackwardNav
    L4_2 = AI_ATTACKMOVESTATE
    L3_2(L4_2)
    L3_2 = StopTimer
    L4_2 = "TimerAntiKite"
    L3_2(L4_2)
    L3_2 = 0
    LastAttackScan = L3_2
  end
end

FindTargetOrMove = L0_1
