local L0_1, L1_1
L0_1 = 2500
MAX_ENGAGE_DISTANCE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 2000
FLEE_RUN_DISTANCE = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetState
  L1_2 = AI_IDLE
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "TimerFindEnemies"
  L2_2 = 0
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFeared"
  L2_2 = 1
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFlee"
  L2_2 = 1
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerCharmed"
  L2_2 = 0.2
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFlee"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerCharmed"
  L0_2(L1_2)
  L0_2 = false
  return L0_2
end

OnInit = L0_1

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
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    L3_2 = false
    return L3_2
  end
  if A1_2 then
    L3_2 = AI_ATTACKMOVESTATE
    if L2_2 ~= L3_2 then
      L3_2 = AI_ATTACKMOVE_ATTACKING
      if L2_2 ~= L3_2 then
        L3_2 = AI_IDLE
        if L2_2 ~= L3_2 then
          goto lbl_25
        end
      end
    end
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACKMOVE_ATTACKING
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  ::lbl_25::
  L3_2 = false
  return L3_2
end

OnCallForHelp = L0_1

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
    L2_2 = AI_ATTACKMOVE_ATTACKING
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = FindTargetOrMove
    L1_2()
  end
end

OnTauntEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeWanderPoint
  L2_2 = GetFearLeashPoint
  L2_2 = L2_2()
  L3_2 = FEAR_WANDER_DISTANCE
  L1_2 = L1_2(L2_2, L3_2)
  wanderPoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FEARED
  L3_2 = wanderPoint
  L1_2(L2_2, L3_2)
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_IMMEDIATELY
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
end

OnFearBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
  L1_2 = FindTargetOrMove
  L1_2()
end

OnFearEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeWanderPoint
  L2_2 = GetFearLeashPoint
  L2_2 = L2_2()
  L3_2 = FEAR_WANDER_DISTANCE
  L1_2 = L1_2(L2_2, L3_2)
  wanderPoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FEARED
  L3_2 = wanderPoint
  L1_2(L2_2, L3_2)
end

TimerFeared = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeFleePoint
  L1_2 = L1_2()
  fleePoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FLEEING
  L3_2 = fleePoint
  L1_2(L2_2, L3_2)
  L1_2 = SetRoamState
  L2_2 = RUN_IN_FEAR
  L1_2(L2_2)
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_IMMEDIATELY
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerFlee"
  L1_2(L2_2)
end

OnFleeBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerFlee"
  L1_2(L2_2)
  L1_2 = FindTargetOrMove
  L1_2()
end

OnFleeEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeFleePoint
  L1_2 = L1_2()
  fleePoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FLEEING
  L3_2 = fleePoint
  L1_2(L2_2, L3_2)
end

TimerFlee = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
  end
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerCharmed"
  L1_2(L2_2)
end

OnCharmBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerCharmed"
  L1_2(L2_2)
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_ATTACKMOVE_ATTACKING
    L3_2 = charmTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = FindTargetOrMove
    L1_2()
  end
end

OnCharmEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
  end
end

TimerCharmed = L0_1

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
    end
  end
end

TimerMoveForward = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVESTATE
  if L0_2 == L1_2 then
    L1_2 = FindTargetInAcR
    L1_2 = L1_2()
    if L1_2 == nil then
      L2_2 = TurnOffAutoAttack
      L3_2 = STOPREASON_TARGET_LOST
      L2_2(L3_2)
      return
    end
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_ATTACKMOVE_ATTACKING
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_60
      end
    end
  end
  L1_2 = GetTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L1_2 = DistanceBetweenMeAndObject
    L2_2 = GetTarget
    L2_2, L3_2, L4_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = MAX_ENGAGE_DISTANCE
    if not (L1_2 > L2_2) then
      goto lbl_44
    end
  end
  L1_2 = FindTargetOrMove
  L1_2()
  ::lbl_44::
  L1_2 = TargetInAttackRange
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = TurnOnAutoAttack
    L2_2 = GetTarget
    L2_2, L3_2, L4_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = TargetInCancelAttackRange
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = TurnOffAutoAttack
      L2_2 = STOPREASON_MOVING
      L1_2(L2_2)
    end
  end
  ::lbl_60::
end

TimerFindEnemies = L0_1

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

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = FindTargetInAcR
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = LastAutoAttackFinished
    L2_2 = L2_2()
    if L2_2 == false then
      L2_2 = InitTimer
      L3_2 = "TimerFindEnemies"
      L4_2 = 0.1
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      return
    end
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_ATTACKMOVE_ATTACKING
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetStateAndMoveToForwardNav
    L3_2 = AI_ATTACKMOVESTATE
    L2_2(L3_2)
  end
end

FindTargetOrMove = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = AI_TAUNTED
  if L1_2 == L2_2 then
    L2_2 = AI_BERSERK
    if L1_2 == L2_2 then
      goto lbl_25
    end
    L2_2 = AI_FEARED
    if L1_2 == L2_2 then
      goto lbl_25
    end
    L2_2 = AI_FLEEING
    if L1_2 == L2_2 then
      goto lbl_25
    end
  end
  L2_2 = SetStateAndCloseToTarget
  L3_2 = AI_ATTACKMOVE_ATTACKING
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = false
  do return L2_2 end
  ::lbl_25::
  L2_2 = true
  return L2_2
end

OnCollisionEnemy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = AI_TAUNTED
  if L1_2 == L2_2 then
    L2_2 = AI_BERSERK
    if L1_2 == L2_2 then
      goto lbl_29
    end
    L2_2 = AI_FEARED
    if L1_2 == L2_2 then
      goto lbl_29
    end
    L2_2 = AI_FLEEING
    if L1_2 == L2_2 then
      goto lbl_29
    end
  end
  L2_2 = FindTargetInAcR
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACKMOVE_ATTACKING
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_29::
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

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFlee"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerCharmed"
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_IMMEDIATELY
  L0_2(L1_2)
  L0_2 = NetSetState
  L1_2 = AI_HALTED
  L0_2(L1_2)
end

HaltAI = L0_1
