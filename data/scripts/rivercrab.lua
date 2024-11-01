local L0_1, L1_1, L2_1
L0_1 = DoLuaShared
L1_1 = "RiverRegions"
L0_1(L1_1)
L0_1 = DoLuaShared
L1_1 = "AIComponentSystem"
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
L1_1 = "NonAggressiveTauntBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "WanderAndGraze"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "SkittishMonster"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "LockMovementToRiver"
L0_1(L1_1)
L0_1 = {}
RiverCrab = L0_1
L0_1 = RegisterForEvent
L1_1 = "RiverCornered"
L2_1 = RiverCrab
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "MeleeAttacked"
L2_1 = RiverCrab
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "RangeAttacked"
L2_1 = RiverCrab
L0_1(L1_1, L2_1)

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CreateRiverRegions
  L1_2()
  L1_2 = Event
  L2_2 = "ComponentInit"
  L1_2(L2_2)
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
  L1_2 = SpellIncLevel
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = SpellIncLevel
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = Event
  L2_2 = "WanderPause"
  L1_2(L2_2)
  L1_2 = RiverCrab
  L1_2.InMelee = true
end

OnInit = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = Event
  L1_2 = "ComponentHalt"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerRetreat"
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
L0_1 = RiverCrab

function L1_1(A0_2)
  local L1_2
  A0_2.InMelee = true
end

L0_1.MeleeAttacked = L1_1
L0_1 = RiverCrab

function L1_1(A0_2)
  local L1_2
  A0_2.InMelee = false
end

L0_1.RangeAttacked = L1_1
L0_1 = RiverCrab

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = SetStateAndMove
  L2_2 = AI_MOVE
  L3_2 = River
  L3_2 = L3_2.CenterPos
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.InMelee
  if L1_2 == true then
    L1_2 = ServerCastSpellOnPos
    L2_2 = 0
    L3_2 = River
    L3_2 = L3_2.CenterPos
    L1_2(L2_2, L3_2)
  else
    L1_2 = ServerCastSpellOnPos
    L2_2 = 1
    L3_2 = River
    L3_2 = L3_2.CenterPos
    L1_2(L2_2, L3_2)
  end
  L1_2 = GetWaypoint
  L1_2 = L1_2()
  L2_2 = GetMyPos
  L2_2 = L2_2()
  L3_2 = River
  L3_2 = L3_2.CenterPos
  L3_2 = L2_2 - L3_2
  L4_2 = L3_2
  L3_2 = L3_2.normalize
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * 400
  L3_2 = L2_2 + L3_2
  L4_2 = GetDistSquared
  L5_2 = L2_2
  L6_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetDistSquared
  L6_2 = L3_2
  L7_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L4_2 > L5_2 then
    L6_2 = River
    L7_2 = River
    L7_2 = L7_2.Dir
    L7_2 = L7_2 * -1
    L6_2.Dir = L7_2
  end
end

L0_1.RiverCornered = L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = Event
  L1_2 = "WanderPause"
  L0_2(L1_2)
  L0_2 = Event
  L1_2 = "SkittishPause"
  L0_2(L1_2)
  L0_2 = SetStateAndMove
  L1_2 = AI_MOVE
  L2_2 = GetMyPos
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
end

StopAI = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = Event
  L1_2 = "WanderResume"
  L0_2(L1_2)
  L0_2 = Event
  L1_2 = "SkittishResume"
  L0_2(L1_2)
  L0_2 = SetStateAndMove
  L1_2 = AI_MOVE
  L2_2 = GetWaypoint
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
end

StartAI = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopAI
  L0_2()
end

StopLeashing = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StartAI
  L0_2()
end

StartLeashing = L0_1
