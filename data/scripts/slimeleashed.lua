local L0_1, L1_1, L2_1, L3_1
L0_1 = 2
RUN_IN_FEAR = L0_1
L0_1 = 1
HOSTILE = L0_1
L0_1 = 0
INACTIVE = L0_1
L0_1 = 6
LEASH_COUNTER_THRESHOLD = L0_1
L0_1 = 0.05
DEFAULT_FRUSTRATION_SEARCH_TIME = L0_1
L0_1 = 0.6
DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME = L0_1
L0_1 = 400
AGGRESSION_FIRST_SWEEP_RANGE = L0_1
L0_1 = 100
LEASH_PROTECTION_BARRIER = L0_1
L0_1 = 700
INNER_RANGE_BEFORE_CAMP_RELEASES = L0_1
L0_1 = 250
OUTER_RANGE_BOUND = L0_1
L0_1 = 1150
ATTACKER_RANGE_BEFORE_RELEASH = L0_1
L0_1 = 25
CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = DoLuaShared
L1_1 = "AIComponentSystem"
L0_1(L1_1)
L0_1 = DoLuaShared
L1_1 = "ObjectTags"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "OutOfCombatRegen"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultCharmBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFearBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFleeBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultTauntBehavior"
L0_1(L1_1)
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Minion
L2_1 = UnitTagIndicies
L2_1 = L2_1.Monster
L3_1 = UnitTagIndicies
L3_1 = L3_1.Champion
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_ANY_INCLUDED_TAG = L0_1
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Structure
L2_1 = UnitTagIndicies
L2_1 = L2_1.Minion_Lane
L3_1 = UnitTagIndicies
L3_1 = L3_1.Special_EpicMonsterIgnores
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_EPIC_EXCLUDED_TAG = L0_1
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Structure
L2_1 = UnitTagIndicies
L2_1 = L2_1.Minion_Lane
L3_1 = UnitTagIndicies
L3_1 = L3_1.Special_MonsterIgnores
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_NONEPIC_EXCLUDED_TAG = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugPrintToChat
  L2_2 = "OnInit"
  L1_2(L2_2)
  L1_2 = Event
  L2_2 = "ComponentInit"
  L1_2(L2_2)
  L1_2 = SetState
  L2_2 = AI_ATTACK
  L1_2(L2_2)
  L1_2 = SetCharVar
  L2_2 = "WillBeFrustrated"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetCharVar
  L2_2 = "StartBoostRegen"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetCharVar
  L2_2 = "inStasis"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetCharVar
  L2_2 = "MaxFrustration"
  L3_2 = LEASH_COUNTER_THRESHOLD
  L1_2(L2_2, L3_2)
  L1_2 = OutOfCombatRegen
  L2_2 = L1_2
  L1_2 = L1_2.Start
  L1_2(L2_2)
  L1_2 = SetMyLeashedPos
  L1_2()
  L1_2 = SetMyLeashedOrientation
  L1_2()
  L1_2 = InitTimer
  L2_2 = "TimerFrustrationSearch"
  L3_2 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerAttack"
  L3_2 = 0.25
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = InitTimer
  L2_2 = "TimerReturningHome"
  L3_2 = 0.05
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = StopTimer
  L2_2 = "TimerFrustrationSearch"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = "TimerReturningHome"
  L1_2(L2_2)
end

OnInit = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrintToChat
  L3_2 = "OnOrder: "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = ORDER_ATTACKTO
  if A0_2 == L3_2 then
    L3_2 = AttackTarget
    L4_2 = A1_2
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

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = DebugPrintToChat
  L3_2 = "LeashedCallForHelp"
  L2_2(L3_2)
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = GetCharVar
  L4_2 = "MaxFrustration"
  L3_2 = L3_2(L4_2)
  L4_2 = DebugPrintToChat
  L5_2 = "aiState: "
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = AI_HALTED
  if L2_2 == L4_2 then
    return
  end
  L4_2 = GetTarget
  L4_2 = L4_2()
  L5_2 = RespondToAggression
  L6_2 = A1_2
  L5_2(L6_2)
  L5_2 = GetState
  L5_2 = L5_2()
  L6_2 = AI_RETREAT
  if L5_2 == L6_2 then
    L5_2 = GetLeashCounter
    L5_2 = L5_2()
    if L3_2 > L5_2 then
      L5_2 = GetMaxHP
      L5_2 = L5_2()
      L6_2 = GetHP
      L6_2 = L6_2()
      L7_2 = GetCampLeashPos
      L7_2 = L7_2()
      L8_2 = WalkDistanceBetweenObjectCenterAndPoint
      L9_2 = A1_2
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = GetWalkDistToLeashedPos
      L9_2 = L9_2()
      L10_2 = GetCampLeashRadius
      L10_2 = L10_2()
      if L8_2 <= L10_2 then
        L10_2 = AttackTarget
        L11_2 = A1_2
        L10_2(L11_2)
      else
        L10_2 = INNER_RANGE_BEFORE_CAMP_RELEASES
        if L9_2 <= L10_2 then
          L10_2 = ATTACKER_RANGE_BEFORE_RELEASH
          if L8_2 <= L10_2 then
            L10_2 = AttackTarget
            L11_2 = A1_2
            L10_2(L11_2)
          end
        end
      end
    end
  end
end

LeashedCallForHelp = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugPrintToChat
  L3_2 = "OnTargetLost"
  L2_2(L3_2)
  L2_2 = TurnOffAutoAttack
  L3_2 = STOPREASON_MOVING
  L2_2(L3_2)
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 ~= L3_2 then
    L3_2 = AI_RETREAT
    if L2_2 ~= L3_2 then
      goto lbl_17
    end
  end
  L3_2 = true
  do return L3_2 end
  ::lbl_17::
  L3_2 = GetCharVar
  L4_2 = "inStasis"
  L3_2 = L3_2(L4_2)
  if 1 < L3_2 then
    L3_2 = false
    return L3_2
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
    L4_2 = AttackTarget
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L4_2 = FindNewTarget
    L4_2()
  end
  L4_2 = true
  return L4_2
end

OnTargetLost = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetLeashCounter
  L0_2 = L0_2()
  L1_2 = GetCharVar
  L2_2 = "MaxFrustration"
  L1_2 = L1_2(L2_2)
  if L0_2 < L1_2 then
    L2_2 = SetTimerDelay
    L3_2 = "TimerFrustrationSearch"
    L4_2 = DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME
    L2_2(L3_2, L4_2)
    L2_2 = ResetAndStartTimer
    L3_2 = "TimerFrustrationSearch"
    L2_2(L3_2)
  end
end

TimerRetreat = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetLeashCounter
  L1_2 = L1_2()
  if 0 < L1_2 then
    L2_2 = SetTimerDelay
    L3_2 = "TimerFrustrationSearch"
    L4_2 = DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME
    L2_2(L3_2, L4_2)
    L2_2 = StartTimer
    L3_2 = "TimerFrustrationSearch"
    L2_2(L3_2)
    L2_2 = StartTimer
    L3_2 = "TimerAttack"
    L2_2(L3_2)
  else
    L2_2 = SetTimerDelay
    L3_2 = "TimerFrustrationSearch"
    L4_2 = DEFAULT_FRUSTRATION_SEARCH_TIME
    L2_2(L3_2, L4_2)
    L2_2 = ResetAndStartTimer
    L3_2 = "TimerFrustrationSearch"
    L2_2(L3_2)
    L2_2 = StartTimer
    L3_2 = "TimerAttack"
    L2_2(L3_2)
  end
  if A0_2 ~= nil then
    L2_2 = OutOfCombatRegen
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_ATTACK
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = SetRoamState
    L3_2 = HOSTILE
    L2_2(L3_2)
  end
end

AttackTarget = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerFrustrationSearch"
  L0_2(L1_2)
  L0_2 = StartTimer
  L1_2 = "TimerReturningHome"
  L0_2(L1_2)
  L0_2 = SetGhosted
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SetStateAndMoveToLeashedPos
  L1_2 = AI_RETREAT
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_MOVING
  L0_2(L1_2)
  L0_2 = OutOfCombatRegen
  L1_2 = L0_2
  L0_2 = L0_2.Start
  L0_2(L1_2)
end

Retreat = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetLeashCounter
  L1_2 = L1_2()
  L1_2 = L1_2 + A0_2
  L2_2 = SetLeashCounter
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = GetCharVar
  L3_2 = "MaxFrustration"
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  while A0_2 > L3_2 do
    L4_2 = AIScriptSpellBuffStackingAdd
    L5_2 = GetThis
    L5_2 = L5_2()
    L6_2 = GetThis
    L6_2 = L6_2()
    L7_2 = "JungleFrustration"
    L8_2 = 1
    L9_2 = L2_2 + 1
    L10_2 = 25000
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L3_2 + 1
  end
  if L1_2 > L2_2 then
    L4_2 = AIScriptSpellBuffStackingAdd
    L5_2 = GetThis
    L5_2 = L5_2()
    L6_2 = GetThis
    L6_2 = L6_2()
    L7_2 = "JungleFrustration"
    L8_2 = 1
    L9_2 = L2_2 + 1
    L10_2 = 25000
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = AIScriptSpellBuffStackingAdd
    L5_2 = GetThis
    L5_2 = L5_2()
    L6_2 = GetThis
    L6_2 = L6_2()
    L7_2 = "JungleFrustrationReturn"
    L8_2 = 1
    L9_2 = L2_2 + 1
    L10_2 = 25000
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = AIScriptSpellBuffRemove
    L5_2 = GetThis
    L5_2 = L5_2()
    L6_2 = "JungleFrustration"
    L4_2(L5_2, L6_2)
    L4_2 = SetCharVar
    L5_2 = "StartBoostRegen"
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = Retreat
    L4_2()
  else
    L4_2 = SetTimerDelay
    L5_2 = "TimerFrustrationSearch"
    L6_2 = DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME
    L4_2(L5_2, L6_2)
    L4_2 = ResetTimer
    L5_2 = "TimerFrustrationSearch"
    L4_2(L5_2)
  end
end

IncreaseFrustration = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetCampLeashPos
  L2_2 = L2_2()
  L3_2 = WalkDistanceBetweenObjectCenterAndPoint
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if A0_2 == nil then
    L4_2 = false
    return L4_2
  end
  if A1_2 < L3_2 then
    L4_2 = false
    return L4_2
  else
    L4_2 = true
    return L4_2
  end
end

TargetWithinWalkBounds = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = MONSTER_ANY_INCLUDED_TAG
  L3_2 = MONSTER_NONEPIC_EXCLUDED_TAG
  L4_2 = HasUnitTag
  L5_2 = GetThis
  L5_2 = L5_2()
  L6_2 = {}
  L7_2 = UnitTagIndicies
  L7_2 = L7_2.Monster_Epic
  L6_2[1] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L3_2 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L4_2 = GetCampLeashRadius
  L4_2 = L4_2()
  L4_2 = L4_2 * 1.25
  L5_2 = FindTargetWithFilter
  L6_2 = AGGRESSION_FIRST_SWEEP_RANGE
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 ~= nil then
    L6_2 = TargetWithinWalkBounds
    L7_2 = L5_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_39
    end
  end
  L6_2 = FindTargetWithFilter
  L7_2 = GetCampLeashRadius
  L7_2 = L7_2()
  L8_2 = OUTER_RANGE_BOUND
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2
  L9_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  ::lbl_39::
  if L5_2 ~= nil then
    L6_2 = TargetWithinWalkBounds
    L7_2 = L5_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_64
    end
  end
  L6_2 = FindTargetNearPositionWithFilter
  L7_2 = A0_2
  L8_2 = GetCampLeashRadius
  L8_2 = L8_2()
  L9_2 = L2_2
  L10_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2 = L6_2
  if L5_2 ~= nil then
    L6_2 = TargetWithinWalkBounds
    L7_2 = L5_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_64
    end
  end
  L5_2 = A1_2
  ::lbl_64::
  if L5_2 ~= nil then
    L6_2 = TargetWithinWalkBounds
    L7_2 = L5_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_84
    end
  end
  L5_2 = nil
  L6_2 = FindTargetWithFilter
  L7_2 = GetCampLeashRadius
  L7_2 = L7_2()
  L8_2 = OUTER_RANGE_BOUND
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2
  L9_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  do return L5_2 end
  goto lbl_85
  ::lbl_84::
  do return L5_2 end
  ::lbl_85::
end

FindNearestAggressor = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugPrintToChat
  L2_2 = "OnAttacked"
  L1_2(L2_2)
end

OnAttacked = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugPrintToChat
  L2_2 = "OnTakeDamage"
  L1_2(L2_2)
  L1_2 = GetState
  L1_2 = L1_2()
end

OnTakeDamage = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = DebugPrintToChat
  L2_2 = "RespondToAggression"
  L1_2(L2_2)
  L1_2 = IsDead
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = MONSTER_ANY_INCLUDED_TAG
  L2_2 = MONSTER_NONEPIC_EXCLUDED_TAG
  L3_2 = HasUnitTag
  L4_2 = GetThis
  L4_2 = L4_2()
  L5_2 = {}
  L6_2 = UnitTagIndicies
  L6_2 = L6_2.Monster_Epic
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L3_2 = GetMyPos
  L3_2 = L3_2()
  L4_2 = GetState
  L4_2 = L4_2()
  L5_2 = GetCharVar
  L6_2 = "MaxFrustration"
  L5_2 = L5_2(L6_2)
  L6_2 = GetRoamState
  L6_2 = L6_2()
  L7_2 = INACTIVE
  if L6_2 == L7_2 then
    L6_2 = AI_RETREAT
    if L4_2 ~= L6_2 then
      L6_2 = AI_TAUNTED
      if L4_2 ~= L6_2 then
        L6_2 = AI_BERSERK
        if L4_2 ~= L6_2 then
          L6_2 = AI_FEARED
          if L4_2 ~= L6_2 then
            L6_2 = AI_FLEEING
            if L4_2 ~= L6_2 then
              L6_2 = GetMaxHP
              L6_2 = L6_2()
              L7_2 = GetHP
              L7_2 = L7_2()
              L8_2 = GetLeashCounter
              L8_2 = L8_2()
              L9_2 = HasUnitTag
              L10_2 = A0_2
              L11_2 = L1_2
              L9_2 = L9_2(L10_2, L11_2)
              if L9_2 == true then
                L9_2 = HasUnitTag
                L10_2 = A0_2
                L11_2 = L2_2
                L9_2 = L9_2(L10_2, L11_2)
                if L9_2 == false and L5_2 > L8_2 then
                  L9_2 = AttackTarget
                  L10_2 = A0_2
                  L9_2(L10_2)
              end
              else
                L9_2 = OutOfCombatRegen
                L10_2 = L9_2
                L9_2 = L9_2.Start
                L9_2(L10_2)
              end
          end
        end
      end
    end
  end
  else
    L6_2 = GetRoamState
    L6_2 = L6_2()
    L7_2 = HOSTILE
    if L6_2 == L7_2 then
      L6_2 = AI_ATTACK
      if L4_2 == L6_2 then
        L6_2 = IsValidEnemyWithFilter
        L7_2 = A0_2
        L8_2 = L1_2
        L9_2 = L2_2
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if L6_2 then
          L6_2 = GetTarget
          L6_2 = L6_2()
          target = L6_2
          L6_2 = target
          if L6_2 ~= nil then
            L6_2 = target
            if L6_2 ~= A0_2 then
              L6_2 = GetMyPos
              L6_2 = L6_2()
              L7_2 = OutOfCombatRegen
              L8_2 = L7_2
              L7_2 = L7_2.Stop
              L7_2(L8_2)
              L7_2 = DistanceBetweenObjectCenterAndPoint
              L8_2 = target
              L9_2 = L6_2
              L7_2 = L7_2(L8_2, L9_2)
              L8_2 = GetCampLeashPos
              L8_2 = L8_2()
              L9_2 = WalkDistanceBetweenObjectCenterAndPoint
              L10_2 = target
              L11_2 = L8_2
              L9_2 = L9_2(L10_2, L11_2)
              L10_2 = GetCampLeashRadius
              L10_2 = L10_2()
              L11_2 = DistanceBetweenObjectCenterAndPoint
              L12_2 = A0_2
              L13_2 = L6_2
              L11_2 = L11_2(L12_2, L13_2)
              L12_2 = WalkDistanceBetweenObjectCenterAndPoint
              L13_2 = A0_2
              L14_2 = L8_2
              L12_2 = L12_2(L13_2, L14_2)
              L13_2 = GetCampLeashRadius
              L13_2 = L13_2()
              L13_2 = L13_2 * 1.25
              L14_2 = CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE
              L14_2 = L11_2 + L14_2
              if L7_2 > L14_2 then
                L14_2 = TargetWithinWalkBounds
                L15_2 = A0_2
                L16_2 = L13_2
                L14_2 = L14_2(L15_2, L16_2)
                if L14_2 then
                  L14_2 = AttackTarget
                  L15_2 = A0_2
                  L14_2(L15_2)
                  L14_2 = SetCharVar
                  L15_2 = "WillBeFrustrated"
                  L16_2 = 2
                  L14_2(L15_2, L16_2)
                end
              else
                L14_2 = TargetWithinWalkBounds
                L15_2 = target
                L16_2 = L13_2
                L14_2 = L14_2(L15_2, L16_2)
                if not L14_2 then
                  L14_2 = AttackTarget
                  L15_2 = A0_2
                  L14_2(L15_2)
                  L14_2 = SetCharVar
                  L15_2 = "WillBeFrustrated"
                  L16_2 = 2
                  L14_2(L15_2, L16_2)
                end
              end
          end
          else
            L6_2 = target
            if L6_2 ~= nil then
              L6_2 = AI_ATTACK
              if L4_2 == L6_2 then
                L6_2 = IsValidEnemyWithFilter
                L7_2 = A0_2
                L8_2 = L1_2
                L9_2 = L2_2
                L6_2 = L6_2(L7_2, L8_2, L9_2)
                if L6_2 then
                  L6_2 = AttackTarget
                  L7_2 = A0_2
                  L6_2(L7_2)
              end
            end
            else
              L6_2 = IsValidEnemyWithFilter
              L7_2 = A0_2
              L8_2 = L1_2
              L9_2 = L2_2
              L6_2 = L6_2(L7_2, L8_2, L9_2)
              if L6_2 then
                L6_2 = AttackTarget
                L7_2 = A0_2
                L6_2(L7_2)
              end
            end
          end
        end
      end
    end
  end
end

RespondToAggression = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = GetRoamState
  L1_2 = L1_2()
  L2_2 = GetCharVar
  L3_2 = "WillBeFrustrated"
  L2_2 = L2_2(L3_2)
  L3_2 = DebugPrintToChat
  L4_2 = "\troamState:"
  L5_2 = L1_2
  L6_2 = " aiState: "
  L7_2 = L0_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = INACTIVE
  if L1_2 ~= L3_2 then
    L3_2 = RUN_IN_FEAR
    if L1_2 ~= L3_2 then
      L3_2 = AI_HALTED
      if L0_2 ~= L3_2 then
        L3_2 = GetCharVar
        L4_2 = "inStasis"
        L3_2 = L3_2(L4_2)
        if not (1 < L3_2) then
          goto lbl_30
        end
      end
    end
  end
  do return end
  ::lbl_30::
  L3_2 = SetTimerDelay
  L4_2 = "TimerFrustrationSearch"
  L5_2 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L3_2(L4_2, L5_2)
  L3_2 = GetLeashCounter
  L3_2 = L3_2()
  L4_2 = false
  if 1 <= L2_2 then
    L4_2 = true
    L5_2 = SetCharVar
    L6_2 = "WillBeFrustrated"
    L7_2 = 0
    L5_2(L6_2, L7_2)
  end
  L5_2 = GetTarget
  L5_2 = L5_2()
  L6_2 = GetCampLeashRadius
  L6_2 = L6_2()
  L7_2 = GetMyLeashedPos
  L7_2 = L7_2()
  L8_2 = GetCampLeashPos
  L8_2 = L8_2()
  L9_2 = GetDistToLeashedPos
  L9_2 = L9_2()
  L10_2 = L6_2 + 1
  if L5_2 ~= nil then
    L11_2 = WalkDistanceBetweenObjectCenterAndPoint
    L12_2 = L5_2
    L13_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L11_2
  else
    L11_2 = FindNewTarget
    L11_2()
    L11_2 = GetTarget
    L11_2 = L11_2()
    L5_2 = L11_2
    if L5_2 == nil then
      L4_2 = true
    end
  end
  L11_2 = GetLeashCounter
  L11_2 = L11_2()
  L12_2 = GetCharVar
  L13_2 = "MaxFrustration"
  L12_2 = L12_2(L13_2)
  L13_2 = LEASH_PROTECTION_BARRIER
  L13_2 = L6_2 - L13_2
  if L9_2 > L13_2 and L6_2 > L9_2 and L6_2 < L10_2 then
    L13_2 = AI_RETREAT
    if L0_2 ~= L13_2 and L11_2 < L12_2 then
      L13_2 = L5_2
      L14_2 = FindNewTarget
      L14_2()
      L14_2 = GetTarget
      L14_2 = L14_2()
      L5_2 = L14_2
      if L5_2 ~= nil and L5_2 ~= L13_2 then
        L4_2 = true
      end
    end
  end
  L13_2 = OUTER_RANGE_BOUND
  L13_2 = L6_2 + L13_2
  if L10_2 > L13_2 then
    L13_2 = AI_RETREAT
    if L0_2 ~= L13_2 then
      L4_2 = true
    end
  end
  L13_2 = DebugPrintToChat
  L14_2 = "===============distToLeash: "
  L15_2 = L9_2
  L16_2 = " leashRadius: "
  L17_2 = L6_2
  L18_2 = " OUTER_RANGE_BOUND: "
  L19_2 = OUTER_RANGE_BOUND
  L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
  L13_2(L14_2)
  L13_2 = OUTER_RANGE_BOUND
  L13_2 = L6_2 + L13_2
  if L9_2 > L13_2 then
    L4_2 = true
  end
  if L4_2 == true then
    L13_2 = IncreaseFrustration
    L14_2 = 1
    L13_2(L14_2)
  end
end

TimerFrustrationSearch = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = GetRoamState
  L1_2 = L1_2()
  L2_2 = INACTIVE
  if L1_2 ~= L2_2 then
    L2_2 = RUN_IN_FEAR
    if L1_2 ~= L2_2 then
      L2_2 = AI_HALTED
      if L0_2 ~= L2_2 then
        L2_2 = GetCharVar
        L3_2 = "inStasis"
        L2_2 = L2_2(L3_2)
        if not (1 < L2_2) then
          goto lbl_20
        end
      end
    end
  end
  do return end
  ::lbl_20::
  L2_2 = GetMaxHP
  L2_2 = L2_2()
  L3_2 = GetHP
  L3_2 = L3_2()
  L4_2 = GetDistToRetreat
  L4_2 = L4_2()
  L5_2 = SetCharVar
  L6_2 = "DistanceToHome"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = SetGhosted
  L6_2 = true
  L5_2(L6_2)
  L5_2 = AI_RETREAT
  if L0_2 == L5_2 then
    L5_2 = IsMovementStopped
    L5_2 = L5_2()
    if L5_2 == true and L4_2 < 25 then
      L5_2 = StopTimer
      L6_2 = "TimerReturningHome"
      L5_2(L6_2)
      L5_2 = SetLeashOrientation
      L5_2()
      L5_2 = AIScriptSpellBuffRemove
      L6_2 = GetThis
      L6_2 = L6_2()
      L7_2 = "JungleFrustration"
      L5_2(L6_2, L7_2)
      L5_2 = AIScriptSpellBuffRemove
      L6_2 = GetThis
      L6_2 = L6_2()
      L7_2 = "JungleFrustrationReturn"
      L5_2(L6_2, L7_2)
      L5_2 = SetLeashCounter
      L6_2 = 0
      L5_2(L6_2)
      L5_2 = AIScriptSpellBuffStackingAdd
      L6_2 = GetThis
      L6_2 = L6_2()
      L7_2 = GetThis
      L7_2 = L7_2()
      L8_2 = "JungleFrustrationReset"
      L9_2 = 0
      L10_2 = 1
      L11_2 = 25000
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = SetGhosted
      L6_2 = false
      L5_2(L6_2)
      L5_2 = SetState
      L6_2 = AI_ATTACK
      L5_2(L6_2)
      L5_2 = SetRoamState
      L6_2 = GetOriginalState
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = SetTimerDelay
      L6_2 = "TimerFrustrationSearch"
      L7_2 = DEFAULT_FRUSTRATION_SEARCH_TIME
      L5_2(L6_2, L7_2)
  end
  elseif 25 <= L4_2 then
    L5_2 = SetStateAndMoveToLeashedPos
    L6_2 = AI_RETREAT
    L5_2(L6_2)
  end
end

TimerReturningHome = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharVar
  L2_2 = "inStasis"
  L1_2 = L1_2(L2_2)
  if 1 < L1_2 then
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
        goto lbl_27
      end
    end
  end
  do return end
  ::lbl_27::
  L1_2 = AI_ATTACK
  if L0_2 ~= L1_2 then
    L1_2 = AI_TAUNTED
    if L0_2 ~= L1_2 then
      L1_2 = AI_BERSERK
      if L0_2 ~= L1_2 then
        goto lbl_74
      end
    end
  end
  L1_2 = StartTimer
  L2_2 = "TimerFrustrationSearch"
  L1_2(L2_2)
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
    L2_2 = IsMovementStopped
    L2_2 = L2_2()
    if L2_2 == true then
      L2_2 = AttackTarget
      L3_2 = L1_2
      L2_2(L3_2)
    end
  else
    L2_2 = AI_ATTACK
    if L0_2 == L2_2 then
      L2_2 = FindNewTarget
      L2_2()
      L2_2 = GetTarget
      L2_2 = L2_2()
      L1_2 = L2_2
    end
  end
  ::lbl_74::
end

TimerAttack = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugPrintToChat
  L1_2 = "AggressionSweep"
  L0_2(L1_2)
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_RETREAT
  if L1_2 == L2_2 then
    L1_2 = TurnOffAutoAttack
    L2_2 = STOPREASON_MOVING
    L1_2(L2_2)
    return
  end
  L1_2 = 650
  L2_2 = GetMyLeashedPos
  L2_2 = L2_2()
  L3_2 = GetTarget
  L3_2 = L3_2()
  L4_2 = nil
  if L3_2 ~= nil then
    L5_2 = FindNearestAggressor
    L6_2 = L2_2
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  else
    L5_2 = FindNearestAggressor
    L6_2 = L2_2
    L7_2 = nil
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  if L4_2 ~= nil then
    L5_2 = AttackTarget
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

AggressionSweep = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
        goto lbl_26
      end
    end
  end
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
  do return end
  ::lbl_26::
  L1_2 = GetCampLeashRadius
  L1_2 = L1_2()
  L2_2 = GetCampLeashPos
  L2_2 = L2_2()
  L3_2 = GetTarget
  L3_2 = L3_2()
  L4_2 = nil
  if L3_2 ~= nil then
    L5_2 = FindNearestAggressor
    L6_2 = L2_2
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  else
    L5_2 = FindNearestAggressor
    L6_2 = L2_2
    L7_2 = nil
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  if L4_2 ~= nil then
    L5_2 = AttackTarget
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

FindNewTarget = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = Event
  L1_2 = "ComponentHalt"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFrustrationSearch"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerAttack"
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
  local L0_2, L1_2
  L0_2 = DebugPrintToChat
  L1_2 = "StopLeashing"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFrustrationSearch"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerAttack"
  L0_2(L1_2)
end

StopLeashing = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugPrintToChat
  L1_2 = "StartLeashing"
  L0_2(L1_2)
  L0_2 = GetCharVar
  L1_2 = "MaxFrustration"
  L0_2 = L0_2(L1_2)
  L1_2 = GetLeashCounter
  L1_2 = L1_2()
  if L0_2 > L1_2 then
    L1_2 = ResetAndStartTimer
    L2_2 = "TimerFrustrationSearch"
    L1_2(L2_2)
    L1_2 = StartTimer
    L2_2 = "TimerAttack"
    L1_2(L2_2)
    L1_2 = ClearTarget
    L1_2()
  end
end

StartLeashing = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = OutOfCombatRegen
  L1_2 = L0_2
  L0_2 = L0_2.Stop
  L0_2(L1_2)
end

TurnOffRegeneration = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = OutOfCombatRegen
  L1_2 = L0_2
  L0_2 = L0_2.Start
  L0_2(L1_2)
end

TurnOnRegeneration = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetCharVar
  L1_2 = "inStasis"
  L2_2 = 1.01
  L0_2(L1_2, L2_2)
end

EnterStasis = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetCharVar
  L1_2 = "inStasis"
  L2_2 = 0
  L0_2(L1_2, L2_2)
end

ExitStasis = L0_1
