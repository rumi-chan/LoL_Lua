local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 2000
FLEE_RUN_DISTANCE = L0_1
L0_1 = 500
ATTACKMOVE_CLICK_TARGET_DISTANCE = L0_1
L0_1 = 5000
ATTACKMOVE_CLICK_TARGET_RANGE_ADDITION = L0_1
L0_1 = 100
ATTACKMOVE_CLICK_TARGET_FAR_RANGE_CLICK_TOLERANCE = L0_1
L0_1 = {}
L0_1[0] = "kNone"
L1_1 = "kHold"
L2_1 = "kMoveTo"
L3_1 = "kAttackTo"
L4_1 = "kTempCastSpell"
L5_1 = "kPetHardAttack"
L6_1 = "kPetHardMove"
L7_1 = "kAttackMove"
L8_1 = "kTaunt"
L9_1 = "kPetHardReturn"
L10_1 = "kStop"
L11_1 = "kPetHardStop"
L12_1 = "kUse"
L13_1 = "kAttackTerrainSustained"
L14_1 = "kAttackTerrainOnce"
L15_1 = "kCastSpell"
L16_1 = "kUnitClickTrigger"
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
ORDER_STRINGS = L0_1
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
STATE_STRINGS = L0_1
L0_1 = false
ClickCloseToTargetAttackMove = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = GetPercentAttackSpeedMod
  L0_2 = L0_2()
  L0_2 = L0_2 + 1
  L0_2 = 1.6 / L0_2
  checkAttackTimer = L0_2
  L0_2 = checkAttackTimer
  if L0_2 < 0.5 then
    L0_2 = 0.5
    checkAttackTimer = L0_2
  end
  L0_2 = checkAttackTimer
  return L0_2
end

CalculateAttackTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ClearTargetPosInPos
  L0_2()
  L0_2 = SetState
  L1_2 = AI_IDLE
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "TimerDistanceScan"
  L2_2 = 0.2
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerCheckAttack"
  L2_2 = 0.2
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerRecentNewMoveOrder"
  L2_2 = 0.2
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
  L0_2 = InitTimer
  L1_2 = "TimerCharmed"
  L2_2 = 0.2
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StopTimer
  L1_2 = "TimerRecentNewMoveOrder"
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
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "ClickCloseToTargetAttackMove"
  L0_2 = L0_2(L1_2)
  ClickCloseToTargetAttackMove = L0_2
  L0_2 = false
  return L0_2
end

OnInit = L0_1
L0_1 = false

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = GetState
  L4_2 = L4_2()
  L5_2 = AI_HALTED
  if L4_2 == L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = AI_TAUNTED
  if L4_2 ~= L5_2 then
    L5_2 = AI_BERSERK
    if L4_2 ~= L5_2 then
      L5_2 = AI_FEARED
      if L4_2 ~= L5_2 then
        L5_2 = AI_FLEEING
        if L4_2 ~= L5_2 then
          L5_2 = AI_CHARMED
          if L4_2 ~= L5_2 then
            goto lbl_25
          end
        end
      end
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_25::
  L5_2 = ORDER_TAUNT
  if A0_2 == L5_2 then
    L5_2 = SetStateAndCloseToTarget
    L6_2 = AI_HARDATTACK
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L5_2 = ClearTargetPosInPos
    L5_2()
    L5_2 = true
    return L5_2
  end
  L5_2 = ORDER_ATTACKTO
  if A0_2 == L5_2 then
    L5_2 = SetStateAndCloseToTarget
    L6_2 = AI_HARDATTACK
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L5_2 = AssignTargetPosInPos
    L5_2()
    L5_2 = TargetInAttackRange
    L5_2 = L5_2()
    if L5_2 == true then
      L5_2 = TurnOnAutoAttack
      L6_2 = GetTarget
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L5_2 = TurnOffAutoAttack
      L6_2 = STOPREASON_MOVING
      L5_2(L6_2)
    end
    L5_2 = true
    return L5_2
  end
  L5_2 = ORDER_ATTACKTERRAIN_SUSTAINED
  if A0_2 ~= L5_2 then
    L5_2 = ORDER_ATTACKTERRAIN_ONCE
    if A0_2 ~= L5_2 then
      goto lbl_103
    end
  end
  L5_2 = ORDER_ATTACKTERRAIN_SUSTAINED
  if A0_2 == L5_2 then
  else
    L5_2 = ORDER_ATTACKTERRAIN_ONCE
    if A0_2 == L5_2 then
    end
  end
  L5_2 = TargetPositionInAttackRange
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = ORDER_ATTACKTERRAIN_ONCE
    L5_2 = A0_2 == L5_2
    L6_2 = TurnOnAutoAttackTerrain
    L7_2 = A2_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  else
    L5_2 = TargetPositionInAttackRange
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = SetStateAndMove
      L6_2 = AI_HARDATTACK
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = AssignTargetPosInPos
      L5_2()
      L5_2 = TurnOffAutoAttack
      L6_2 = STOPREASON_MOVING
      L5_2(L6_2)
    end
  end
  L5_2 = true
  do return L5_2 end
  ::lbl_103::
  L5_2 = ORDER_ATTACKMOVE
  if A0_2 == L5_2 then
    L5_2 = ClickCloseToTargetAttackMove
    if L5_2 then
      L5_2 = IsTargetedAttackMoveEnabled
      L5_2 = L5_2()
      if L5_2 then
        L5_2 = FindTargetNearestPosition
        L6_2 = A2_2
        L7_2 = ATTACKMOVE_CLICK_TARGET_DISTANCE
        L5_2 = L5_2(L6_2, L7_2)
        newTarget = L5_2
        L5_2 = newTarget
        if L5_2 ~= nil then
          L5_2 = GetPos
          L6_2 = newTarget
          L5_2 = L5_2(L6_2)
          L6_2 = GetAttackRange
          L6_2 = L6_2()
          L7_2 = ATTACKMOVE_CLICK_TARGET_RANGE_ADDITION
          L6_2 = L6_2 + L7_2
          L7_2 = DistanceBetweenObjectBounds
          L8_2 = me
          L9_2 = newTarget
          L7_2 = L7_2(L8_2, L9_2)
          if L6_2 < L7_2 then
            L8_2 = IsDistanceBetweenObjectBoundAndPointLessThan
            L9_2 = newTarget
            L10_2 = A2_2
            L11_2 = ATTACKMOVE_CLICK_TARGET_FAR_RANGE_CLICK_TOLERANCE
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            if L8_2 == false then
              L8_2 = nil
              newTarget = L8_2
            end
          end
        end
    end
    else
      L5_2 = nil
      newTarget = L5_2
    end
    L5_2 = newTarget
    if L5_2 ~= nil then
      L5_2 = IsValidEnemy
      L6_2 = newTarget
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_157
      end
    end
    L5_2 = FindTargetInAcR
    L5_2 = L5_2()
    newTarget = L5_2
    ::lbl_157::
    L5_2 = newTarget
    if L5_2 ~= nil then
      L5_2 = SetStateAndCloseToTarget
      L6_2 = AI_SOFTATTACK
      L7_2 = newTarget
      L5_2(L6_2, L7_2)
      L5_2 = true
      return L5_2
    end
    L5_2 = SetStateAndMoveInPos
    L6_2 = AI_ATTACKMOVESTATE
    L5_2(L6_2)
    L5_2 = AssignTargetPosInPos
    L5_2()
    L5_2 = true
    return L5_2
  end
  L5_2 = ORDER_MOVETO
  if A0_2 == L5_2 then
    L5_2 = SetStateAndMoveInPos
    L6_2 = AI_MOVE
    L5_2(L6_2)
    L5_2 = AssignTargetPosInPos
    L5_2()
    if A3_2 then
      L5_2 = true
      L0_1 = L5_2
      L5_2 = ResetAndStartTimer
      L6_2 = "TimerRecentNewMoveOrder"
      L5_2(L6_2)
    end
    L5_2 = true
    return L5_2
  end
  L5_2 = InitTimer
  L6_2 = "TimerCheckAttackOnce"
  L7_2 = 0.001
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = false
  return L5_2
end

OnOrder = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION
  if L3_2 ~= L2_2 then
    L3_2 = LOST_VISIBILITY
    if A0_2 == L3_2 then
      L3_2 = AI_SOFTATTACK
      if L2_2 ~= L3_2 and A1_2 ~= nil then
        L3_2 = SetStateAndCloseToTarget
        L4_2 = AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = TimerCheckAttack
      L3_2()
    end
  end
end

OnTargetLost = L1_1

function L1_1()
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

OnTauntBegin = L1_1

function L1_1()
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
    L2_2 = AI_SOFTATTACK
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_IDLE
    L1_2(L2_2)
    L1_2 = TimerDistanceScan
    L1_2()
    L1_2 = TimerCheckAttack
    L1_2()
  end
end

OnTauntEnd = L1_1

function L1_1()
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
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
end

OnFearBegin = L1_1

function L1_1()
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
  L2_2 = AI_IDLE
  L1_2(L2_2)
  L1_2 = TimerDistanceScan
  L1_2()
  L1_2 = TimerCheckAttack
  L1_2()
end

OnFearEnd = L1_1

function L1_1()
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

TimerFeared = L1_1

function L1_1()
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
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerFlee"
  L1_2(L2_2)
end

OnFleeBegin = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerFlee"
  L1_2(L2_2)
  L1_2 = GetFleeTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_SOFTATTACK
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = NetSetState
    L3_2 = AI_IDLE
    L2_2(L3_2)
    L2_2 = TimerDistanceScan
    L2_2()
    L2_2 = TimerCheckAttack
    L2_2()
  end
end

OnFleeEnd = L1_1

function L1_1()
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

TimerFlee = L1_1

function L1_1()
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

OnCharmBegin = L1_1

function L1_1()
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
    L2_2 = AI_SOFTATTACK
    L3_2 = charmTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_IDLE
    L1_2(L2_2)
    L1_2 = TimerDistanceScan
    L1_2()
    L1_2 = TimerCheckAttack
    L1_2()
  end
end

OnCharmEnd = L1_1

function L1_1()
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

TimerCharmed = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = false
  L0_1 = L0_2
end

TimerRecentNewMoveOrder = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = ClearTargetPosInPos
  L1_2()
end

OnStopMove = L1_1
L1_1 = nil

function L2_1()
  local L0_2, L1_2
  L0_2 = TimerCheckAttack
  L0_2()
end

TimerCheckAttackOnce = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = L1_1
  if L0_2 ~= L1_2 then
    L1_1 = L0_2
  end
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetOrder
  L1_2 = L1_2()
  L2_2 = GetOrderPosition
  L2_2 = L2_2()
  L3_2 = IsLocationAutoAttacker
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = ORDER_ATTACKTERRAIN_ONCE
    if L1_2 ~= L3_2 then
      L3_2 = ORDER_ATTACKTERRAIN_SUSTAINED
      if L1_2 ~= L3_2 then
        goto lbl_61
      end
    end
    L3_2 = ORDER_ATTACKTERRAIN_ONCE
    L3_2 = L1_2 == L3_2
    L4_2 = IsMoving
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = TargetPositionInAttackRange
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = TurnOnAutoAttackTerrain
        L5_2 = L2_2
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        return
    end
    else
      L4_2 = TargetPositionInAttackRange
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = SetStateAndMove
        L5_2 = AI_HARDATTACK
        L6_2 = L2_2
        L4_2(L5_2, L6_2)
        L4_2 = AssignTargetPosInPos
        L4_2()
        L4_2 = TurnOffAutoAttack
        L5_2 = STOPREASON_MOVING
        L4_2(L5_2)
        return
      end
    end
  else
    ::lbl_61::
    L3_2 = AI_SOFTATTACK
    if L0_2 ~= L3_2 then
      L3_2 = AI_HARDATTACK
      if L0_2 ~= L3_2 then
        L3_2 = AI_TAUNTED
        if L0_2 ~= L3_2 then
          L3_2 = AI_BERSERK
          if L0_2 ~= L3_2 then
            goto lbl_146
          end
        end
      end
    end
    L3_2 = IsTargetLost
    L3_2 = L3_2()
    if L3_2 ~= true then
      L3_2 = GetTarget
      L3_2 = L3_2()
      if L3_2 ~= nil then
        goto lbl_129
      end
    end
    L3_2 = LastAutoAttackFinished
    L3_2 = L3_2()
    if L3_2 == false then
      L3_2 = InitTimer
      L4_2 = "TimerCheckAttack"
      L5_2 = 0.1
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      return
    end
    L3_2 = IsAutoAcquireTargetEnabled
    L3_2 = L3_2()
    if L3_2 ~= false then
      L3_2 = L0_1
      if not L3_2 then
        goto lbl_106
      end
      L3_2 = GetCanIMove
      L3_2 = L3_2()
      if L3_2 then
        goto lbl_106
      end
    end
    L3_2 = AI_SOFTATTACK
    if L0_2 ~= L3_2 then
      return
    end
    ::lbl_106::
    L3_2 = FindTargetInAcR
    L3_2 = L3_2()
    newTarget = L3_2
    L3_2 = newTarget
    if L3_2 ~= nil then
      L3_2 = CanSeeMe
      L4_2 = newTarget
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = SetStateAndCloseToTarget
        L4_2 = AI_SOFTATTACK
        L5_2 = newTarget
        L3_2(L4_2, L5_2)
      end
      L3_2 = true
      return L3_2
    else
      L3_2 = NetSetState
      L4_2 = AI_STANDING
      L3_2(L4_2)
      return
    end
    do return end
    ::lbl_129::
    L3_2 = TargetInAttackRange
    L3_2 = L3_2()
    if L3_2 == true then
      L3_2 = TurnOnAutoAttack
      L4_2 = GetTarget
      L4_2, L5_2, L6_2 = L4_2()
      L3_2(L4_2, L5_2, L6_2)
      return
    end
    L3_2 = TargetInCancelAttackRange
    L3_2 = L3_2()
    if L3_2 == false then
      L3_2 = TurnOffAutoAttack
      L4_2 = STOPREASON_MOVING
      L3_2(L4_2)
      goto lbl_152
      ::lbl_146::
      L3_2 = IsMoving
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = false
        return L3_2
      end
    end
  end
  ::lbl_152::
  L3_2 = InitTimer
  L4_2 = "TimerCheckAttack"
  L5_2 = 0.1
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end

TimerCheckAttack = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 ~= L1_2 then
    L1_2 = AI_HARDIDLE
    if L0_2 ~= L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = AI_STANDING
  if L0_2 ~= L1_2 then
    L1_2 = AI_IDLE
    if L0_2 ~= L1_2 then
      goto lbl_42
    end
  end
  L1_2 = IsAutoAcquireTargetEnabled
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L0_1
    if L1_2 then
      L1_2 = GetCanIMove
      L1_2 = L1_2()
      if not L1_2 then
        goto lbl_42
      end
    end
    L1_2 = GetTargetOrFindTargetInAcR
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = CanSeeMe
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetStateAndCloseToTarget
        L3_2 = AI_SOFTATTACK
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = true
        return L2_2
      end
    end
  end
  ::lbl_42::
  L1_2 = AI_MOVE
  if L0_2 == L1_2 then
    L1_2 = IsMovementStopped
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = IsAutoAcquireTargetEnabled
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = L0_1
        if L1_2 then
          L1_2 = GetCanIMove
          L1_2 = L1_2()
          if not L1_2 then
            goto lbl_83
          end
        end
        L1_2 = GetTargetOrFindTargetInAcR
        L1_2 = L1_2()
        if L1_2 ~= nil then
          L2_2 = CanSeeMe
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = SetStateAndCloseToTarget
            L3_2 = AI_SOFTATTACK
            L4_2 = L1_2
            L2_2(L3_2, L4_2)
            L2_2 = TurnOnAutoAttack
            L3_2 = L1_2
            L2_2(L3_2)
            L2_2 = true
            return L2_2
          end
        end
        L2_2 = NetSetState
        L3_2 = AI_IDLE
        L2_2(L3_2)
        L2_2 = false
        return L2_2
      end
    end
  end
  ::lbl_83::
  L1_2 = AI_ATTACKMOVESTATE
  if L0_2 == L1_2 then
    L1_2 = GetTargetOrFindTargetInAcR
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = SetStateAndCloseToTarget
      L3_2 = AI_SOFTATTACK
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = true
      return L2_2
    else
      L2_2 = DistanceBetweenObjectAndTargetPosSq
      L3_2 = me
      L2_2 = L2_2(L3_2)
      if L2_2 <= 100 then
        L2_2 = NetSetState
        L3_2 = AI_STANDING
        L2_2(L3_2)
        L2_2 = ClearTargetPosInPos
        L2_2()
        L2_2 = true
        return L2_2
      end
    end
  end
  L1_2 = AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION
  if L0_2 == L1_2 then
    L1_2 = GetLostTargetIfVisible
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = SetStateAndCloseToTarget
      L3_2 = AI_HARDATTACK
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

TimerDistanceScan = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
end

OnAICommand = L2_1

function L2_1()
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

OnReachedDestinationForGoingToLastLocation = L2_1

function L2_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerDistanceScan"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerCheckAttack"
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

HaltAI = L2_1
