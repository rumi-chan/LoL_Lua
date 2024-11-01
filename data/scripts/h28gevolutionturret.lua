local L0_1, L1_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetState
  L1_2 = AI_PET_IDLE
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "TimerScanDistance"
  L2_2 = 0.15
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFindEnemies"
  L2_2 = 0.15
  L3_2 = true
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
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = Say
  L2_2 = "[TimerDebug()] State: "
  L3_2 = GetState
  L3_2 = L3_2()
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end

TimerDebug = L0_1

function L0_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end

OnOrder = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_PET_MOVE
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDMOVE
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_HARDRETURN
      if L0_2 ~= L1_2 then
        L1_2 = AI_FEARED
        if L0_2 ~= L1_2 then
          L1_2 = AI_FLEEING
          if L0_2 ~= L1_2 then
            L1_2 = AI_PET_HARDSTOP
            if L0_2 ~= L1_2 then
              goto lbl_27
            end
          end
        end
      end
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_27::
  L1_2 = FindTargetInAcR
  L1_2 = L1_2()
  newTarget = L1_2
  L1_2 = newTarget
  if L1_2 == nil then
    L1_2 = AI_PET_HARDIDLE_ATTACKING
    if L0_2 == L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_HARDIDLE
      L1_2(L2_2)
      L1_2 = true
      return L1_2
    end
  else
    L1_2 = AI_PET_HARDATTACK
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_ATTACK
      if L0_2 ~= L1_2 then
        L1_2 = AI_TAUNTED
        if L0_2 ~= L1_2 then
          L1_2 = AI_BERSERK
          if L0_2 ~= L1_2 then
            goto lbl_61
          end
        end
      end
    end
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_PET_ATTACK
    L3_2 = newTarget
    L1_2(L2_2, L3_2)
    L1_2 = true
    do return L1_2 end
    goto lbl_92
    ::lbl_61::
    L1_2 = AI_PET_HARDIDLE_ATTACKING
    if L0_2 == L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_HARDIDLE_ATTACKING
      L1_2(L2_2)
      L1_2 = SetTarget
      L2_2 = newTarget
      L1_2(L2_2)
      L1_2 = true
      return L1_2
    else
      L1_2 = AI_PET_RETURN_ATTACKING
      if L0_2 == L1_2 then
        L1_2 = SetStateAndCloseToTarget
        L2_2 = AI_PET_RETURN_ATTACKING
        L3_2 = newTarget
        L1_2(L2_2, L3_2)
        L1_2 = true
        return L1_2
      else
        L1_2 = AI_PET_ATTACKMOVE_ATTACKING
        if L0_2 == L1_2 then
          L1_2 = SetStateAndCloseToTarget
          L2_2 = AI_PET_ATTACKMOVE_ATTACKING
          L3_2 = newTarget
          L1_2(L2_2, L3_2)
          L1_2 = true
          return L1_2
        end
      end
    end
  end
  ::lbl_92::
  L1_2 = NetSetState
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end

OnTargetLost = L0_1

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
    L2_2 = AI_PET_ATTACK
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    L1_2 = TimerFindEnemies
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
  L1_2 = NetSetState
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = TimerFindEnemies
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
  L1_2 = NetSetState
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = TimerFindEnemies
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
    L2_2 = AI_PET_ATTACK
    L3_2 = charmTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    L1_2 = TimerFindEnemies
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
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = TimerFindEnemies
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
  L0_2 = L1_2
  L1_2 = FindTargetInAcR
  L1_2 = L1_2()
  L1_2 = L1_2 == nil
  bNoEnemiesNear = L1_2
  L1_2 = AI_PET_SPAWNING
  if L0_2 == L1_2 then
    L1_2 = IsNetworkLocal
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_IDLE
      L1_2(L2_2)
    end
  end
end

TimerScanDistance = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L0_2 = L1_2
  L1_2 = AI_PET_MOVE
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDMOVE
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_HARDSTOP
      if L0_2 ~= L1_2 then
        goto lbl_20
      end
    end
  end
  do return end
  ::lbl_20::
  L1_2 = AI_PET_IDLE
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_RETURN
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_ATTACKMOVE
      if L0_2 ~= L1_2 then
        L1_2 = AI_PET_HARDIDLE
        if L0_2 ~= L1_2 then
          goto lbl_57
        end
      end
    end
  end
  L1_2 = FindTargetInAcRUsingGoldRedirectTarget
  L1_2 = L1_2()
  newTarget = L1_2
  L1_2 = newTarget
  if L1_2 == nil then
    L1_2 = TurnOffAutoAttack
    L2_2 = STOPREASON_TARGET_LOST
    L1_2(L2_2)
    return
  end
  L1_2 = AI_PET_IDLE
  if L0_2 == L1_2 then
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_PET_ATTACK
    L3_2 = newTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = AI_PET_ATTACKMOVE
    if L0_2 == L1_2 then
      L1_2 = SetStateAndCloseToTarget
      L2_2 = AI_PET_ATTACKMOVE_ATTACKING
      L3_2 = newTarget
      L1_2(L2_2, L3_2)
    end
  end
  ::lbl_57::
  L1_2 = AI_PET_ATTACK
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDATTACK
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_RETURN_ATTACKING
      if L0_2 ~= L1_2 then
        L1_2 = AI_PET_ATTACKMOVE_ATTACKING
        if L0_2 ~= L1_2 then
          L1_2 = AI_PET_HARDIDLE_ATTACKING
          if L0_2 ~= L1_2 then
            L1_2 = AI_TAUNTED
            if L0_2 ~= L1_2 then
              L1_2 = AI_BERSERK
              if L0_2 ~= L1_2 then
                goto lbl_95
              end
            end
          end
        end
      end
    end
  end
  L1_2 = TargetInAttackRange
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = TurnOnAutoAttack
    L2_2 = GetTarget
    L2_2, L3_2 = L2_2()
    L1_2(L2_2, L3_2)
  else
    L1_2 = TargetInCancelAttackRange
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = TurnOffAutoAttack
      L2_2 = STOPREASON_MOVING
      L1_2(L2_2)
    end
  end
  do return end
  ::lbl_95::
end

TimerFindEnemies = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerScanDistance"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
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
