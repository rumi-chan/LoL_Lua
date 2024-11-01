local L0_1, L1_1
L0_1 = 2500
MAX_ENGAGE_DISTANCE = L0_1
L0_1 = 0.25
DELAY_FIND_ENEMIES = L0_1
L0_1 = 2500
TURRET_BREAK_RANGE = L0_1
L0_1 = DoLuaShared
L1_1 = "ObjectTags"
L0_1(L1_1)
L0_1 = DoLuaShared
L1_1 = "AIComponentSystem"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFearBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFleeBehavior"
L0_1(L1_1)
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Structure
L0_1[1] = L1_1
HIGH_PRIORITY_TARGETS = L0_1
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Minion
L0_1[1] = L1_1
MEDIUM_PRIORITY_TARGETS = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SpellIncLevel
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = Event
  L1_2 = "ComponentInit"
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "TimerFindEnemies"
  L2_2 = DELAY_FIND_ENEMIES
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerMoveForward"
  L2_2 = 0
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerAntiKite"
  L2_2 = 4
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = false
  Test = L0_2
  L0_2 = StopAI
  L0_2()
  L0_2 = false
  return L0_2
end

OnInit = L0_1

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
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_TAUNTED
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  end
end

OnTauntBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = NetSetState
  L2_2 = AI_ATTACK
  L1_2(L2_2)
end

OnTauntEnd = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = Event
  L1_2 = "ComponentHalt"
  L0_2(L1_2)
  L0_2 = StopAI
  L0_2()
end

HaltAI = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = NetSetState
  L1_2 = AI_HALTED
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_IMMEDIATELY
  L0_2(L1_2)
  L0_2 = StopMove
  L0_2()
  L0_2 = true
  Test = L0_2
  L0_2 = StopTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerMoveForward"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerAntiKite"
  L0_2(L1_2)
end

StopAI = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = NetSetState
  L1_2 = AI_ATTACKMOVESTATE
  L0_2(L1_2)
  L0_2 = false
  Test = L0_2
  L0_2 = ResetAndStartTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = ResetAndStartTimer
  L1_2 = "TimerMoveForward"
  L0_2(L1_2)
  L0_2 = TimerFindEnemies
  L0_2()
end

StartAI = L0_1

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
    L1_2 = FindTargetInAcRWithFilter
    L2_2 = HIGH_PRIORITY_TARGETS
    L1_2 = L1_2(L2_2)
    if L1_2 == nil then
      L2_2 = FindTargetInAcRWithFilter
      L3_2 = MEDIUM_PRIORITY_TARGETS
      L2_2 = L2_2(L3_2)
      if L2_2 == nil then
        L3_2 = TurnOffAutoAttack
        L4_2 = STOPREASON_TARGET_LOST
        L3_2(L4_2)
        return
      else
        L3_2 = SetStateAndCloseToTarget
        L4_2 = AI_ATTACKMOVE_ATTACKING
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = ResetAndStartTimer
        L4_2 = "TimerAntiKite"
        L3_2(L4_2)
      end
    else
      L2_2 = SetStateAndCloseToTarget
      L3_2 = AI_ATTACKMOVE_ATTACKING
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = ResetAndStartTimer
      L3_2 = "TimerAntiKite"
      L2_2(L3_2)
    end
  else
    L1_2 = AI_TAUNTED
    if L0_2 == L1_2 then
      L1_2 = GetTauntTarget
      L1_2 = L1_2()
      if L1_2 ~= nil then
        L1_2 = SetStateAndCloseToTarget
        L2_2 = AI_TAUNTED
        L3_2 = GetTauntTarget
        L3_2, L4_2, L5_2 = L3_2()
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        L1_2 = AI_ATTACK
        if L0_2 ~= L1_2 then
          goto lbl_105
        end
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
      goto lbl_78
    end
  end
  L1_2 = FindTargetOrMove
  L1_2()
  ::lbl_78::
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
  ::lbl_105::
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
  L1_2 = FindTargetInAcRWithFilter
  L2_2 = HIGH_PRIORITY_TARGETS
  L1_2 = L1_2(L2_2)
  L2_2 = FindTargetInAcRWithFilter
  L3_2 = MEDIUM_PRIORITY_TARGETS
  L2_2 = L2_2(L3_2)
  if L1_2 then
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
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = ResetAndStartTimer
    L4_2 = "TimerAntiKite"
    L3_2(L4_2)
  elseif L2_2 then
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
    L3_2 = SetStateAndMoveToForwardNav
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
      L1_2 = SetStateAndMoveToForwardNav
      L2_2 = AI_ATTACKMOVESTATE
      L1_2(L2_2)
      L1_2 = 0
      LastAttackScan = L1_2
    end
  end
end

TimerMoveForward = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_18
      end
    end
  end
  L1_2 = FindTargetOrMove
  L1_2()
  ::lbl_18::
end

OnTargetLost = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 == L1_2 then
    L1_2 = AddToIgnore
    L2_2 = 0.1
    L1_2(L2_2)
    L1_2 = FindTargetOrMove
    L1_2()
  end
end

OnPathToTargetBlocked = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
end

OnCallForHelp = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = NetSetState
  L2_2 = AI_IDLE
  L1_2(L2_2)
  L1_2 = FindTargetOrMove
  L1_2()
end

OnCanMove = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = NetSetState
  L2_2 = AI_IDLE
  L1_2(L2_2)
  L1_2 = FindTargetOrMove
  L1_2()
end

OnCanAttack = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_ATTACKMOVE_ATTACKING
  if L1_2 == L2_2 then
    L1_2 = IsMoving
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = AddToIgnore
      L2_2 = 0.1
      L1_2(L2_2)
      L1_2 = FindTargetOrMove
      L1_2()
    end
  end
end

TimerAntiKite = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = true
  return L2_2
end

OnCollisionEnemy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = AI_TAUNTED
  if L1_2 ~= L2_2 then
    L2_2 = AI_BERSERK
    if L1_2 ~= L2_2 then
      L2_2 = AI_FEARED
      if L1_2 ~= L2_2 then
        L2_2 = AI_FLEEING
        if L1_2 ~= L2_2 then
          L2_2 = FindTargetOrMove
          L2_2()
          L2_2 = false
          return L2_2
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end

OnCollisionOther = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = NetSetState
  L2_2 = AI_IDLE
  L1_2(L2_2)
  L1_2 = TimerDistanceScan
  L1_2()
  L1_2 = TimerCheckAttack
  L1_2()
end

OnReachedDestinationForGoingToLastLocation = L0_1
