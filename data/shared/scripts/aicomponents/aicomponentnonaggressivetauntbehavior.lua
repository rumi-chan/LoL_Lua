local L0_1, L1_1, L2_1
L0_1 = {}
NonAggressiveTauntBehavior = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = NonAggressiveTauntBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnTauntBegin"
L2_1 = NonAggressiveTauntBehavior
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "OnTauntEnd"
L2_1 = NonAggressiveTauntBehavior
L0_1(L1_1, L2_1)
L0_1 = NonAggressiveTauntBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = InitTimer
  L2_2 = "TimerTaunt"
  L3_2 = 0.25
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = StopTimer
  L2_2 = "TimerTaunt"
  L1_2(L2_2)
end

L0_1.ComponentInit = L1_1
L0_1 = NonAggressiveTauntBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TimerTaunt
  L1_2()
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerTaunt"
  L1_2(L2_2)
  L1_2 = Event
  L2_2 = "WanderPause"
  L1_2(L2_2)
  L1_2 = Event
  L2_2 = "SkittishPause"
  L1_2(L2_2)
  L1_2 = SetStateAndMove
  L2_2 = AI_MOVE
  L3_2 = GetMyPos
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end

L0_1.OnTauntBegin = L1_1
L0_1 = NonAggressiveTauntBehavior

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 == L2_2 then
    return
  end
  L2_2 = StopTimer
  L3_2 = "TimerTaunt"
  L2_2(L3_2)
  L2_2 = Event
  L3_2 = "WanderResume"
  L2_2(L3_2)
  L2_2 = Event
  L3_2 = "SkittishResume"
  L2_2(L3_2)
  L2_2 = SetStateAndMove
  L3_2 = AI_MOVE
  L4_2 = GetWaypoint
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
end

L0_1.OnTauntEnd = L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = Event
  L2_2 = "WanderPause"
  L1_2(L2_2)
  L1_2 = ClearTarget
  L1_2()
  L1_2 = StopMove
  L1_2()
end

TimerTaunt = L0_1
L0_1 = NonAggressiveTauntBehavior
return L0_1
