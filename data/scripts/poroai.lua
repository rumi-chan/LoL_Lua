local L0_1, L1_1
L0_1 = 2
RUN_IN_FEAR = L0_1
L0_1 = 0
HOSTILE = L0_1
L0_1 = 0
INACTIVE = L0_1
L0_1 = 850
LEASH_RADIUS = L0_1
L0_1 = 750
LEASH_PROTECTION_RADIUS = L0_1
L0_1 = 750
INNER_RELEASH_RADIUS = L0_1
L0_1 = 1150
RELEASH_RADIUS = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 0.05
REGEN_PERCENT_PER_SECOND = L0_1
L0_1 = 9000
VERY_FAR_DISTANCE = L0_1
L0_1 = 10
LEASH_COUNTER_THRESHOLD = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetState
  L2_2 = AI_ATTACK
  L1_2(L2_2)
  L1_2 = SetMyLeashedPos
  L1_2()
  L1_2 = SetMyLeashedOrientation
  L1_2()
  L1_2 = InitTimer
  L2_2 = "TimerRetreat"
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerAttack"
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerFeared"
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerRegen"
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerTaunt"
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerFlee"
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerCharmed"
  L3_2 = 0.2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = StopTimer
  L2_2 = "TimerFlee"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = "TimerRegen"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = "TimerTaunt"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = "TimerCharmed"
  L1_2(L2_2)
end

OnInit = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = TimerRegen
  L0_2()
  L0_2 = SetStateAndMoveToLeashedPos
  L1_2 = AI_RETREAT
  L0_2(L1_2)
end

Retreat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetMaxHP
  L1_2 = L1_2()
  L2_2 = REGEN_PERCENT_PER_SECOND
  L2_2 = L1_2 * L2_2
  L3_2 = GetHP
  L3_2 = L3_2()
  if 0 < L3_2 then
    L4_2 = L3_2 + L2_2
    L5_2 = SetHP
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

TimerRegen = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = ORDER_MOVETO
  if A0_2 == L3_2 then
    return
  end
  L3_2 = ORDER_ATTACKTO
  if A0_2 == L3_2 then
    L3_2 = StopTimer
    L4_2 = "TimerRegen"
    L3_2(L4_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_ATTACK
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = SetRoamState
    L4_2 = HOSTILE
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

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = GetMyPos
  L2_2 = L2_2()
  L3_2 = FindTargetNearPosition
  L4_2 = L2_2
  L5_2 = LEASH_RADIUS
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L3_2 = A0_2
    if A0_2 == nil then
      return
    end
  end
  L4_2 = GetRoamState
  L4_2 = L4_2()
  L5_2 = INACTIVE
  if L4_2 == L5_2 then
    L4_2 = AI_RETREAT
    if L1_2 ~= L4_2 then
      L4_2 = AI_TAUNTED
      if L1_2 ~= L4_2 then
        L4_2 = AI_BERSERK
        if L1_2 ~= L4_2 then
          L4_2 = AI_FEARED
          if L1_2 ~= L4_2 then
            L4_2 = AI_FLEEING
            if L1_2 ~= L4_2 then
              L4_2 = AI_CHARMED
              if L1_2 ~= L4_2 then
                L4_2 = StopTimer
                L5_2 = "TimerRegen"
                L4_2(L5_2)
                L4_2 = SetStateAndCloseToTarget
                L5_2 = AI_ATTACK
                L6_2 = L3_2
                L4_2(L5_2, L6_2)
                L4_2 = SetRoamState
                L5_2 = HOSTILE
                L4_2(L5_2)
            end
          end
        end
      end
    end
  end
  else
    L4_2 = GetRoamState
    L4_2 = L4_2()
    L5_2 = HOSTILE
    if L4_2 == L5_2 then
      L4_2 = AI_ATTACK
      if L1_2 == L4_2 then
        L4_2 = StopTimer
        L5_2 = "TimerRegen"
        L4_2(L5_2)
        L4_2 = GetTarget
        L4_2 = L4_2()
        target = L4_2
        L4_2 = target
        if L4_2 ~= nil then
          L4_2 = DistanceBetweenObjectCenterAndPoint
          L5_2 = target
          L6_2 = L2_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = DistanceBetweenObjectCenterAndPoint
          L6_2 = L3_2
          L7_2 = L2_2
          L5_2 = L5_2(L6_2, L7_2)
          L6_2 = L5_2 + 25
          if L4_2 > L6_2 then
            L6_2 = SetStateAndCloseToTarget
            L7_2 = AI_ATTACK
            L8_2 = L3_2
            L6_2(L7_2, L8_2)
            L6_2 = SetRoamState
            L7_2 = HOSTILE
            L6_2(L7_2)
            L6_2 = GetLeashCounter
            L6_2 = L6_2()
            L7_2 = SetLeashCounter
            L8_2 = L6_2 + 1
            L7_2(L8_2)
            L7_2 = LEASH_COUNTER_THRESHOLD
            if L6_2 > L7_2 then
              L7_2 = Retreat
              L7_2()
            end
          else
            L6_2 = IsHeroAI
            L7_2 = L3_2
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L6_2 = L5_2 + 25
              if L4_2 > L6_2 then
                L6_2 = SetStateAndCloseToTarget
                L7_2 = AI_ATTACK
                L8_2 = L3_2
                L6_2(L7_2, L8_2)
                L6_2 = SetRoamState
                L7_2 = HOSTILE
                L6_2(L7_2)
                L6_2 = GetLeashCounter
                L6_2 = L6_2()
                L7_2 = SetLeashCounter
                L8_2 = L6_2 + 1
                L7_2(L8_2)
                L7_2 = LEASH_COUNTER_THRESHOLD
                if L6_2 > L7_2 then
                  L7_2 = Retreat
                  L7_2()
                end
              end
            end
          end
        end
      end
    end
  end
  return
end

OnTakeDamage = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = GetMyPos
  L3_2 = L3_2()
  L4_2 = FindTargetNearPosition
  L5_2 = L3_2
  L6_2 = LEASH_RADIUS
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    L4_2 = A1_2
    if A1_2 == nil then
      return
    end
  end
  L5_2 = GetRoamState
  L5_2 = L5_2()
  L6_2 = INACTIVE
  if L5_2 == L6_2 then
    L5_2 = AI_RETREAT
    if L2_2 ~= L5_2 then
      L5_2 = AI_TAUNTED
      if L2_2 ~= L5_2 then
        L5_2 = AI_BERSERK
        if L2_2 ~= L5_2 then
          L5_2 = AI_FEARED
          if L2_2 ~= L5_2 then
            L5_2 = AI_FLEEING
            if L2_2 ~= L5_2 then
              L5_2 = StopTimer
              L6_2 = "TimerRegen"
              L5_2(L6_2)
              L5_2 = SetStateAndCloseToTarget
              L6_2 = AI_ATTACK
              L7_2 = L4_2
              L5_2(L6_2, L7_2)
              L5_2 = SetRoamState
              L6_2 = HOSTILE
              L5_2(L6_2)
          end
        end
      end
    end
  end
  else
    L5_2 = GetRoamState
    L5_2 = L5_2()
    L6_2 = HOSTILE
    if L5_2 == L6_2 then
      L5_2 = AI_ATTACK
      if L2_2 == L5_2 then
        L5_2 = GetTarget
        L5_2 = L5_2()
        target = L5_2
        L5_2 = GetMyPos
        L5_2 = L5_2()
        L6_2 = target
        if L6_2 ~= nil then
          L6_2 = StopTimer
          L7_2 = "TimerRegen"
          L6_2(L7_2)
          L6_2 = DistanceBetweenObjectCenterAndPoint
          L7_2 = target
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = DistanceBetweenObjectCenterAndPoint
          L8_2 = L4_2
          L9_2 = L5_2
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = L7_2 + 25
          if L6_2 > L8_2 then
            L8_2 = SetStateAndCloseToTarget
            L9_2 = AI_ATTACK
            L10_2 = L4_2
            L8_2(L9_2, L10_2)
            L8_2 = SetRoamState
            L9_2 = HOSTILE
            L8_2(L9_2)
            L8_2 = GetLeashCounter
            L8_2 = L8_2()
            L9_2 = SetLeashCounter
            L10_2 = L8_2 + 1
            L9_2(L10_2)
            L9_2 = LEASH_COUNTER_THRESHOLD
            if L8_2 > L9_2 then
              L9_2 = Retreat
              L9_2()
            end
          else
            L8_2 = IsHeroAI
            L9_2 = L4_2
            L8_2 = L8_2(L9_2)
            if not L8_2 then
              L8_2 = L7_2 + 25
              if L6_2 > L8_2 then
                L8_2 = SetStateAndCloseToTarget
                L9_2 = AI_ATTACK
                L10_2 = L4_2
                L8_2(L9_2, L10_2)
                L8_2 = SetRoamState
                L9_2 = HOSTILE
                L8_2(L9_2)
                L8_2 = GetLeashCounter
                L8_2 = L8_2()
                L9_2 = SetLeashCounter
                L10_2 = L8_2 + 1
                L9_2(L10_2)
                L9_2 = LEASH_COUNTER_THRESHOLD
                if L8_2 > L9_2 then
                  L9_2 = Retreat
                  L9_2()
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = GetState
  L5_2 = L5_2()
  L6_2 = AI_RETREAT
  if L5_2 == L6_2 then
    L5_2 = GetMyLeashedPos
    L5_2 = L5_2()
    L6_2 = DistanceBetweenObjectCenterAndPoint
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = GetLeashCounter
    L7_2 = L7_2()
    L8_2 = GetDistToLeashedPos
    L8_2 = L8_2()
    L9_2 = LEASH_RADIUS
    if L6_2 <= L9_2 then
      L9_2 = LEASH_COUNTER_THRESHOLD
      if L7_2 < L9_2 then
        L9_2 = SetLeashCounter
        L10_2 = L7_2 + 1
        L9_2(L10_2)
        L9_2 = StopTimer
        L10_2 = "TimerRegen"
        L9_2(L10_2)
        L9_2 = SetStateAndCloseToTarget
        L10_2 = AI_ATTACK
        L11_2 = L4_2
        L9_2(L10_2, L11_2)
        L9_2 = SetRoamState
        L10_2 = HOSTILE
        L9_2(L10_2)
    end
    else
      L9_2 = INNER_RELEASH_RADIUS
      if L8_2 <= L9_2 then
        L9_2 = RELEASH_RADIUS
        if L6_2 <= L9_2 then
          L9_2 = LEASH_COUNTER_THRESHOLD
          if L7_2 < L9_2 then
            L9_2 = SetLeashCounter
            L10_2 = L7_2 + 1
            L9_2(L10_2)
            L9_2 = StopTimer
            L10_2 = "TimerRegen"
            L9_2(L10_2)
            L9_2 = SetStateAndCloseToTarget
            L10_2 = AI_ATTACK
            L11_2 = L4_2
            L9_2(L10_2, L11_2)
            L9_2 = SetRoamState
            L10_2 = HOSTILE
            L9_2(L10_2)
          end
        end
      end
    end
  end
end

LeashedCallForHelp = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = GetOwner
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = GetGoldRedirectTarget
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if L3_2 ~= nil then
    L4_2 = SetStateAndCloseToTarget
    L5_2 = AI_ATTACK
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = FindNewTarget
    L4_2()
  end
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
    L1_2 = AI_FEARED
    if L0_2 ~= L1_2 then
      L1_2 = StopTimer
      L2_2 = "TimerRegen"
      L1_2(L2_2)
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

OnTauntBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerTaunt"
  L1_2(L2_2)
  L1_2 = GetTauntTarget
  L1_2 = L1_2()
  tauntTarget = L1_2
  L1_2 = tauntTarget
  if L1_2 ~= nil then
    L1_2 = AI_FEARED
    if L0_2 ~= L1_2 then
      L1_2 = StopTimer
      L2_2 = "TimerRegen"
      L1_2(L2_2)
      L1_2 = SetStateAndCloseToTarget
      L2_2 = AI_ATTACK
      L3_2 = tauntTarget
      L1_2(L2_2, L3_2)
      L1_2 = SetRoamState
      L2_2 = HOSTILE
      L1_2(L2_2)
  end
  else
    L1_2 = NetSetState
    L2_2 = AI_ATTACK
    L1_2(L2_2)
    L1_2 = TimerRetreat
    L1_2()
    L1_2 = TimerAttack
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
  L1_2 = GetTauntTarget
  L1_2 = L1_2()
  tauntTarget = L1_2
  L1_2 = tauntTarget
  if L1_2 ~= nil then
    L1_2 = AI_FEARED
    if L0_2 ~= L1_2 then
      L1_2 = StopTimer
      L2_2 = "TimerRegen"
      L1_2(L2_2)
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
  L1_2 = SetRoamState
  L2_2 = RUN_IN_FEAR
  L1_2(L2_2)
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
  L1_2 = SetRoamState
  L2_2 = HOSTILE
  L1_2(L2_2)
  L1_2 = NetSetState
  L2_2 = AI_ATTACK
  L1_2(L2_2)
  L1_2 = TimerRetreat
  L1_2()
  L1_2 = TimerAttack
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
  L1_2 = SetRoamState
  L2_2 = RUN_IN_FEAR
  L1_2(L2_2)
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
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = StopTimer
    L2_2 = "TimerRegen"
    L1_2(L2_2)
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
    L1_2 = SetRoamState
    L2_2 = HOSTILE
    L1_2(L2_2)
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
    L1_2 = StopTimer
    L2_2 = "TimerRegen"
    L1_2(L2_2)
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_ATTACK
    L3_2 = charmTarget
    L1_2(L2_2, L3_2)
    L1_2 = SetRoamState
    L2_2 = HOSTILE
    L1_2(L2_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_ATTACK
    L1_2(L2_2)
    L1_2 = TimerRetreat
    L1_2()
    L1_2 = TimerAttack
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
    L1_2 = StopTimer
    L2_2 = "TimerRegen"
    L1_2(L2_2)
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
    L1_2 = SetRoamState
    L2_2 = HOSTILE
    L1_2(L2_2)
  end
end

TimerCharmed = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetRoamState
  L0_2 = L0_2()
  L1_2 = INACTIVE
  if L0_2 ~= L1_2 then
    L0_2 = GetRoamState
    L0_2 = L0_2()
    L1_2 = RUN_IN_FEAR
    if L0_2 ~= L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetDistToLeashedPos
  L1_2 = L1_2()
  L2_2 = GetTarget
  L2_2 = L2_2()
  L3_2 = GetMyLeashedPos
  L3_2 = L3_2()
  L4_2 = LEASH_RADIUS
  L4_2 = L4_2 + 1
  if L2_2 ~= nil then
    L5_2 = DistanceBetweenObjectCenterAndPoint
    L6_2 = L2_2
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = GetLeashCounter
  L5_2 = L5_2()
  L6_2 = LEASH_PROTECTION_RADIUS
  if L1_2 > L6_2 then
    L6_2 = LEASH_RADIUS
    if L1_2 < L6_2 then
      L6_2 = LEASH_RADIUS
      if L4_2 > L6_2 then
        L6_2 = AI_RETREAT
        if L0_2 ~= L6_2 then
          L6_2 = LEASH_COUNTER_THRESHOLD
          if L5_2 < L6_2 then
            L6_2 = FindNewTarget
            L6_2()
            L6_2 = GetTarget
            L6_2 = L6_2()
            L2_2 = L6_2
            if L2_2 ~= nil then
              L6_2 = SetLeashCounter
              L7_2 = L5_2 + 1
              L6_2(L7_2)
            end
        end
      end
    end
  end
  else
    L6_2 = LEASH_RADIUS
    if L1_2 > L6_2 then
      L6_2 = AI_RETREAT
      if L0_2 ~= L6_2 then
        L6_2 = true
        isLeashing = L6_2
        L6_2 = ResetAndStartTimer
        L7_2 = "TimerRegen"
        L6_2(L7_2)
        L6_2 = Retreat
        L6_2()
      end
    end
  end
  L6_2 = AI_ATTACK
  if L0_2 == L6_2 then
    L6_2 = IsMovementStopped
    L6_2 = L6_2()
    if L6_2 == true then
      L6_2 = GetCanIMove
      L6_2 = L6_2()
      if L6_2 == true then
        L6_2 = FindNewTarget
        L6_2()
      end
    end
  end
  L6_2 = AI_RETREAT
  if L0_2 == L6_2 then
    L6_2 = IsMovementStopped
    L6_2 = L6_2()
    if L6_2 == true then
      L6_2 = GetDistToRetreat
      L6_2 = L6_2()
      if L6_2 < 100 then
        L6_2 = OnStoppedMoving
        L6_2()
      else
        L6_2 = Retreat
        L6_2()
      end
    end
  end
end

TimerRetreat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_RETREAT
  if L0_2 == L1_2 then
    L1_2 = SetLeashOrientation
    L1_2()
    L1_2 = SetLeashCounter
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = SetState
    L2_2 = AI_ATTACK
    L1_2(L2_2)
    L1_2 = SetRoamState
    L2_2 = GetOriginalState
    L2_2 = L2_2()
    L1_2(L2_2)
  end
end

OnStoppedMoving = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetRoamState
  L1_2 = L1_2()
  L2_2 = INACTIVE
  if L1_2 ~= L2_2 then
    L1_2 = GetRoamState
    L1_2 = L1_2()
    L2_2 = RUN_IN_FEAR
    if L1_2 ~= L2_2 then
      L1_2 = AI_RETREAT
      if L0_2 ~= L1_2 then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L1_2 = AI_ATTACK
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_52
      end
    end
  end
  L1_2 = GetTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = TargetInAttackRange
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = TurnOnAutoAttack
      L3_2 = L1_2
      L2_2(L3_2)
    else
      L2_2 = TargetInCancelAttackRange
      L2_2 = L2_2()
      if L2_2 == false then
        L2_2 = TurnOffAutoAttack
        L3_2 = STOPREASON_MOVING
        L2_2(L3_2)
      end
    end
  else
    L2_2 = FindNewTarget
    L2_2()
  end
  ::lbl_52::
end

TimerAttack = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetRoamState
  L1_2 = L1_2()
  L2_2 = INACTIVE
  if L1_2 ~= L2_2 then
    L1_2 = GetRoamState
    L1_2 = L1_2()
    L2_2 = RUN_IN_FEAR
    if L1_2 ~= L2_2 then
      L1_2 = GetState
      L1_2 = L1_2()
      L2_2 = AI_RETREAT
      if L1_2 ~= L2_2 then
        goto lbl_23
      end
    end
  end
  do return end
  ::lbl_23::
  L1_2 = GetMyLeashedPos
  L1_2 = L1_2()
  L2_2 = FindTargetNearPosition
  L3_2 = L1_2
  L4_2 = LEASH_RADIUS
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = LEASH_RADIUS
  L3_2 = L3_2 + 1
  if L2_2 ~= nil then
    L4_2 = DistanceBetweenObjectCenterAndPoint
    L5_2 = L2_2
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L2_2 ~= nil then
    L4_2 = LEASH_RADIUS
    if L3_2 <= L4_2 then
      L4_2 = StopTimer
      L5_2 = "TimerRegen"
      L4_2(L5_2)
      L4_2 = SetStateAndCloseToTarget
      L5_2 = AI_ATTACK
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = ResetAndStartTimer
    L5_2 = "TimerRegen"
    L4_2(L5_2)
    L4_2 = Retreat
    L4_2()
  end
end

FindNewTarget = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerRetreat"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerAttack"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerRegen"
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
  L1_2 = SetRoamState
  L2_2 = HOSTILE
  L1_2(L2_2)
  L1_2 = NetSetState
  L2_2 = AI_ATTACK
  L1_2(L2_2)
  L1_2 = TimerRetreat
  L1_2()
  L1_2 = TimerAttack
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
  L1_2 = SetRoamState
  L2_2 = RUN_IN_FEAR
  L1_2(L2_2)
  L1_2 = SetStateAndMove
  L2_2 = AI_FLEEING
  L3_2 = fleePoint
  L1_2(L2_2, L3_2)
end

TimerFlee = L0_1
