local L0_1, L1_1, L2_1
L0_1 = 1
HOSTILE = L0_1
L0_1 = 0
INACTIVE = L0_1
L0_1 = {}
L0_1.TimerCallbackName = "TimerFlee"
DefaultFleeBehavior = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = DefaultFleeBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnFleeBegin"
L2_1 = DefaultFleeBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnFleeEnd"
L2_1 = DefaultFleeBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentHalt"
L2_1 = DefaultFleeBehavior
L0_1(L1_1, L2_1)
L0_1 = DefaultFleeBehavior

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
L0_1 = DefaultFleeBehavior

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentHalt = L1_1
L0_1 = DefaultFleeBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = Event
  L3_2 = "FleeBegin"
  L2_2(L3_2)
  L2_2 = TurnOffAutoAttack
  L3_2 = STOPREASON_IMMEDIATELY
  L2_2(L3_2)
  L2_2 = ResetAndStartTimer
  L3_2 = A0_2.TimerCallbackName
  L2_2(L3_2)
end

L0_1.OnFleeBegin = L1_1
L0_1 = DefaultFleeBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
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
  if L2_2 ~= nil then
    L2_2 = TimerRetreat
    L2_2()
  end
  L2_2 = TimerAttack
  if L2_2 ~= nil then
    L2_2 = TimerAttack
    L2_2()
  end
  L2_2 = Event
  L3_2 = "FleeEnd"
  L2_2(L3_2)
end

L0_1.OnFleeEnd = L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = Event
  L2_2 = "FleeTimer"
  L1_2(L2_2)
end

TimerFlee = L0_1
L0_1 = DefaultFleeBehavior
return L0_1
