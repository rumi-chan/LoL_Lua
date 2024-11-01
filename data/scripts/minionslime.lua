local L0_1, L1_1
L0_1 = 2500
MAX_ENGAGE_DISTANCE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 0.25
DELAY_FIND_ENEMIES = L0_1
L0_1 = 0.1
DELAY_WAIT_FOR_ATTACK = L0_1
L0_1 = 1
CENTER_LANE = L0_1
L0_1 = 70
FIRST_WAVE_TIME = L0_1
L0_1 = 90
ASLEEP_TIME_DEFAULT_LANE = L0_1
L0_1 = ASLEEP_TIME_DEFAULT_LANE
L0_1 = L0_1 - 5
ASLEEP_TIME_CENTER_LANE = L0_1
L0_1 = 15
FIRST_WAVE_GHOST_TIME = L0_1
L0_1 = DoLuaShared
L1_1 = "ObjectTags"
L0_1(L1_1)
L0_1 = DoLuaShared
L1_1 = "Minions"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetMissionTime
  L0_2 = L0_2()
  L1_2 = FIRST_WAVE_TIME
  if L0_2 < L1_2 then
    L0_2 = SetTargetAcquisitionMode
    L1_2 = TARGET_ACQUISITION_MODE_ASLEEP
    L0_2(L1_2)
    L0_2 = SetGhostedForAllies
    L1_2 = true
    L0_2(L1_2)
    L0_2 = InitTimer
    L1_2 = "TimerDisableGhosting"
    L2_2 = FIRST_WAVE_GHOST_TIME
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = ResetAndStartTimer
    L1_2 = "TimerDisableGhosting"
    L0_2(L1_2)
  end
  L0_2 = InitTimer
  L1_2 = "TimerWaitForAttackFinish"
  L2_2 = DELAY_WAIT_FOR_ATTACK
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StopTimer
  L1_2 = "TimerWaitForAttackFinish"
  L0_2(L1_2)
  L0_2 = SetWardsAreValidTargets
  L1_2 = true
  L0_2(L1_2)
end

OnPostInit = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = SetGhostedForAllies
  L1_2 = false
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerDisableGhosting"
  L0_2(L1_2)
end

TimerDisableGhosting = L0_1

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
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetTargetAcquisitionMode
  L1_2 = L1_2()
  L2_2 = TARGET_ACQUISITION_MODE_DEFAULT
  if L1_2 ~= L2_2 then
    L2_2 = TARGET_ACQUISITION_MODE_ASLEEP
    if L1_2 == L2_2 then
      L2_2 = SetTargetAcquisitionMode
      L3_2 = TARGET_ACQUISITION_MODE_DEFAULT
      L2_2(L3_2)
      L2_2 = FindTargetInWakeUpRange
      L2_2 = L2_2()
      L3_2 = SetTargetAcquisitionMode
      L4_2 = TARGET_ACQUISITION_MODE_ASLEEP
      L3_2(L4_2)
      if L2_2 ~= nil then
        L3_2 = SetTargetAcquisitionMode
        L4_2 = TARGET_ACQUISITION_MODE_DISTRIBUTE_FIRE
        L3_2(L4_2)
        L3_2 = FindTargetInFirstAcquisitionRangeWithFilter
        L4_2 = {}
        L5_2 = {}
        L6_2 = UnitTagIndicies
        L6_2 = L6_2.Minion_Lane_Ranged
        L7_2 = UnitTagIndicies
        L7_2 = L7_2.Special_TurretIgnores
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        L3_2 = L3_2(L4_2, L5_2)
        L0_2 = L3_2
      end
    else
      L2_2 = ASLEEP_TIME_DEFAULT_LANE
      L3_2 = GetMinionLane
      L3_2 = L3_2()
      L4_2 = CENTER_LANE
      if L3_2 == L4_2 then
        L2_2 = ASLEEP_TIME_CENTER_LANE
      end
      L3_2 = GetMissionTime
      L3_2 = L3_2()
      if not (L2_2 < L3_2) then
        L3_2 = GetTarget
        L3_2 = L3_2()
        if L3_2 ~= nil then
          goto lbl_59
        end
      end
      L3_2 = SetTargetAcquisitionMode
      L4_2 = TARGET_ACQUISITION_MODE_DEFAULT
      L3_2(L4_2)
      L3_2 = FindTargetInAcRWithFilter
      L4_2 = 0
      L5_2 = {}
      L6_2 = UnitTagIndicies
      L6_2 = L6_2.Special_TurretIgnores
      L5_2[1] = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L0_2 = L3_2
    end
    ::lbl_59::
    if L0_2 ~= nil then
      L2_2 = IsHeroAI
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetTarget
        L3_2 = L0_2
        L2_2(L3_2)
        L2_2 = AddToIgnore
        L3_2 = 0.1
        L2_2(L3_2)
        L2_2 = SetTargetAcquisitionMode
        L3_2 = TARGET_ACQUISITION_MODE_DEFAULT
        L2_2(L3_2)
        L2_2 = FindTargetInAcRWithFilter
        L3_2 = 0
        L4_2 = {}
        L5_2 = UnitTagIndicies
        L5_2 = L5_2.Special_TurretIgnores
        L4_2[1] = L5_2
        L2_2 = L2_2(L3_2, L4_2)
        L0_2 = L2_2
      end
    end
  else
    L2_2 = FindTargetInAcRWithFilter
    L3_2 = 0
    L4_2 = {}
    L5_2 = UnitTagIndicies
    L5_2 = L5_2.Special_TurretIgnores
    L4_2[1] = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L0_2 = L2_2
  end
  if L0_2 ~= nil then
    L2_2 = GetRegionTag
    L3_2 = L0_2
    L4_2 = GameplayArea
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = IsNochaseRegionForMinions
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = SetTarget
      L4_2 = L0_2
      L3_2(L4_2)
      L3_2 = AddToIgnore
      L4_2 = 0.1
      L3_2(L4_2)
      L3_2 = LaneMinionFindTarget
      return L3_2()
    end
    L3_2 = SetTarget
    L4_2 = L0_2
    L3_2(L4_2)
  end
  return L0_2
end

LaneMinionFindTarget = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = AREA_Lane_Top
  if A0_2 ~= L1_2 then
    L1_2 = AREA_Lane_Mid
    if A0_2 ~= L1_2 then
      L1_2 = AREA_Lane_Bot
      if A0_2 ~= L1_2 then
        L1_2 = AREA_Base
        if A0_2 ~= L1_2 then
          L1_2 = AREA_Platform
          if A0_2 ~= L1_2 then
            L1_2 = true
            return L1_2
          end
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end

IsNochaseRegionForMinions = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = LastAutoAttackFinished
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = StopTimer
    L1_2 = "TimerWaitForAttackFinish"
    L0_2(L1_2)
    L0_2 = FindTargetOrMove
    L0_2()
  end
end

TimerWaitForAttackFinish = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetMyRegionTag
  L2_2 = GameplayArea
  L1_2 = L1_2(L2_2)
  L2_2 = IsNochaseRegionForMinions
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetTarget
    L2_2 = L2_2()
    if L2_2 ~= nil then
      L2_2 = AddToIgnore
      L3_2 = 0.6
      L2_2(L3_2)
    end
    L2_2 = FindTargetOrMove
    L2_2()
    return
  end
  L2_2 = AI_ATTACKMOVESTATE
  if L0_2 == L2_2 then
    L2_2 = LaneMinionFindTarget
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
    L2_2 = AI_TAUNTED
    if L0_2 == L2_2 then
      L2_2 = GetTauntTarget
      L2_2 = L2_2()
      if L2_2 ~= nil then
        L2_2 = SetStateAndCloseToTarget
        L3_2 = AI_TAUNTED
        L4_2 = GetTauntTarget
        L4_2, L5_2 = L4_2()
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
  L2_2 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L2_2 then
    L2_2 = AI_TAUNTED
    if L0_2 ~= L2_2 then
      L2_2 = AI_BERSERK
      if L0_2 ~= L2_2 then
        goto lbl_103
      end
    end
  end
  L2_2 = GetTarget
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L2_2 = DistanceBetweenMeAndObject
    L3_2 = GetTarget
    L3_2, L4_2, L5_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = MAX_ENGAGE_DISTANCE
    if not (L2_2 > L3_2) then
      goto lbl_78
    end
  end
  L2_2 = FindTargetOrMove
  L2_2()
  ::lbl_78::
  L2_2 = TargetInAttackRange
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = AI_TAUNTED
    if L0_2 ~= L2_2 then
      L2_2 = AI_BERSERK
      if L0_2 ~= L2_2 then
        L2_2 = ResetAndStartTimer
        L3_2 = "TimerAntiKite"
        L2_2(L3_2)
      end
    end
    L2_2 = TurnOnAutoAttack
    L3_2 = GetTarget
    L3_2, L4_2, L5_2 = L3_2()
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = TargetInCancelAttackRange
    L2_2 = L2_2()
    if L2_2 == false then
      L2_2 = TurnOffAutoAttack
      L3_2 = STOPREASON_MOVING
      L2_2(L3_2)
    end
  end
  ::lbl_103::
end

TimerFindEnemies = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    L1_2 = TurnOffAutoAttack
    L2_2 = STOPREASON_MOVING
    L1_2(L2_2)
    return
  end
  L1_2 = LaneMinionFindTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = LastAutoAttackFinished
    L2_2 = L2_2()
    if L2_2 == false then
      L2_2 = ResetAndStartTimer
      L3_2 = "TimerWaitForAttackFinish"
      L2_2(L3_2)
      L2_2 = ResetAndStartTimer
      L3_2 = "TimerFindEnemies"
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
    L2_2 = TurnOffAutoAttack
    L3_2 = STOPREASON_MOVING
    L2_2(L3_2)
    L2_2 = SetStateAndMoveToForwardNav
    L3_2 = AI_ATTACKMOVESTATE
    L2_2(L3_2)
    L2_2 = StopTimer
    L3_2 = "TimerAntiKite"
    L2_2(L3_2)
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
    end
  end
end

TimerMoveForward = L0_1
