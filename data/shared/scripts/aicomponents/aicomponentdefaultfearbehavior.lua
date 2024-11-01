local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.TimerCallbackName = "TimerFeared"
DefaultFearBehavior = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = DefaultFearBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnFearBegin"
L2_1 = DefaultFearBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnFearEnd"
L2_1 = DefaultFearBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentHalt"
L2_1 = DefaultFearBehavior
L0_1(L1_1, L2_1)
L0_1 = DefaultFearBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = InitTimer
  L2_2 = A0_2.TimerCallbackName
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentInit = L1_1
L0_1 = DefaultFearBehavior

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentHalt = L1_1
L0_1 = DefaultFearBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = MakeWanderPoint
  L3_2 = GetFearLeashPoint
  L3_2 = L3_2()
  L4_2 = FEAR_WANDER_DISTANCE
  L2_2 = L2_2(L3_2, L4_2)
  wanderPoint = L2_2
  L2_2 = SetStateAndMove
  L3_2 = AI_FEARED
  L4_2 = wanderPoint
  L2_2(L3_2, L4_2)
  L2_2 = SetRoamState
  L3_2 = RUN_IN_FEAR
  L2_2(L3_2)
  L2_2 = TurnOffAutoAttack
  L3_2 = STOPREASON_IMMEDIATELY
  L2_2(L3_2)
  L2_2 = ResetAndStartTimer
  L3_2 = A0_2.TimerCallbackName
  L2_2(L3_2)
end

L0_1.OnFearBegin = L1_1
L0_1 = DefaultFearBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = GetThis
  L2_2 = L2_2()
  if L2_2 == nil then
    return
  end
  L2_2 = StopTimer
  L3_2 = A0_2.TimerCallbackName
  L2_2(L3_2)
  L2_2 = SetRoamState
  L3_2 = HOSTILE
  L2_2(L3_2)
  L2_2 = NetSetState
  L3_2 = AI_ATTACK
  L2_2(L3_2)
  L2_2 = TimerRetreat
  L2_2()
  L2_2 = TimerAttack
  L2_2()
end

L0_1.OnFearEnd = L1_1

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
