local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = 2500
MAX_ENGAGE_DISTANCE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 0.25
DELAY_FIND_ENEMIES = L0_1
L0_1 = 1
AI_TARGET_HEROES = L0_1
L0_1 = 2
AI_TARGET_MINIONS = L0_1
L0_1 = 4
AI_TARGET_TURRETS = L0_1
L0_1 = 8
AI_TARGET_DAMPENER = L0_1
L0_1 = 16
AI_TARGET_HQ = L0_1

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
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_ATTACKMOVE_ATTACKING
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
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
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVESTATE
  if L0_2 == L1_2 then
    L1_2 = FindTargetInAcRWithFilter
    L2_2 = AI_TARGET_MINIONS
    L1_2 = L1_2(L2_2)
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
    L2_2 = ResetAndStartTimer
    L3_2 = "TimerAntiKite"
    L2_2(L3_2)
  else
    L1_2 = AI_TAUNTED
    if L0_2 == L1_2 then
      L1_2 = GetTauntTarget
      L1_2 = L1_2()
      if L1_2 ~= nil then
        L1_2 = SetStateAndCloseToTarget
        L2_2 = AI_TAUNTED
        L3_2 = GetTauntTarget
        L3_2, L4_2 = L3_2()
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_88
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
      goto lbl_61
    end
  end
  L1_2 = FindTargetOrMove
  L1_2()
  ::lbl_61::
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
    L2_2, L3_2, L4_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2)
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
  ::lbl_88::
end

TimerFindEnemies = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = FindTargetInAcRWithFilter
  L2_2 = AI_TARGET_MINIONS
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = LastAutoAttackFinished
    L2_2 = L2_2()
    if L2_2 == false then
      L2_2 = InitTimer
      L3_2 = "TimerFindEnemies"
      L4_2 = DELAY_FIND_ENEMIES
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      return
    end
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_ATTACKMOVE_ATTACKING
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = ResetAndStartTimer
    L3_2 = "TimerAntiKite"
    L2_2(L3_2)
  else
    L2_2 = SetStateAndMoveToForwardNav
    L3_2 = AI_ATTACKMOVESTATE
    L2_2(L3_2)
    L2_2 = StopTimer
    L3_2 = "TimerAntiKite"
    L2_2(L3_2)
    L2_2 = 0
    LastAttackScan = L2_2
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
L0_1 = {}
L0_1[0] = "AI_IDLE"
L1_1 = "AI_SOFTATTACK"
L2_1 = "AI_HARDATTACK"
L3_1 = "AI_ATTACKMOVESTATE"
L4_1 = "AI_STANDING"
L5_1 = "AI_MOVE"
L6_1 = "AI_GUARD"
L7_1 = "AI_ATTACK"
L8_1 = "AI_RETREAT"
L9_1 = "AI_HARDIDLE"
L10_1 = "AI_HARDIDLE_ATTACKING"
L11_1 = "AI_TAUNTED"
L12_1 = "AI_BERSERK"
L13_1 = "AI_ATTACKMOVE_ATTACKING"
L14_1 = "AI_FEARED"
L15_1 = "AI_CHARMED"
L16_1 = "AI_FLEEING"
L17_1 = "AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION"
L18_1 = "AI_HALTED"
L19_1 = "AI_SIEGEATTACK"
L20_1 = "AI_LAST_NONPET_AI_STATE"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
L0_1[15] = L15_1
L0_1[16] = L16_1
L0_1[17] = L17_1
L0_1[18] = L18_1
L0_1[19] = L19_1
L0_1[20] = L20_1
DEBUG_MINION_STATE_TABLE = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetState
  L1_2 = AI_IDLE
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
  L0_2 = InitTimer
  L1_2 = "TimerFeared"
  L2_2 = 1
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFlee"
  L2_2 = 0.5
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StopTimer
  L1_2 = "TimerAntiKite"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFlee"
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

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerMoveForward"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerAntiKite"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_IMMEDIATELY
  L0_2(L1_2)
  L0_2 = NetSetState
  L1_2 = AI_HALTED
  L0_2(L1_2)
end

HaltAI = L0_1
