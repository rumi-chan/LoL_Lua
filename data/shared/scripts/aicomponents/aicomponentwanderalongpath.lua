local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.TimerCallbackName = "TimerWander"
WanderAlongPath = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = WanderAlongPath
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentStart"
L2_1 = WanderAlongPath
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "WanderPause"
L2_1 = WanderAlongPath
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "WanderResume"
L2_1 = WanderAlongPath
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentHalt"
L2_1 = WanderAlongPath
L0_1(L1_1, L2_1)
L0_1 = WanderAlongPath

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = InitTimer
  L2_2 = A0_2.TimerCallbackName
  L3_2 = 0.25
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = WanderAlongPath
  L2_2 = L1_2
  L1_2 = L1_2.ComponentStart
  L1_2(L2_2)
end

L0_1.ComponentInit = L1_1
L0_1 = WanderAlongPath

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ResetAndStartTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentStart = L1_1
L0_1 = WanderAlongPath

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.WanderPause = L1_1
L0_1 = WanderAlongPath

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ResetAndStartTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
end

L0_1.WanderResume = L1_1
L0_1 = WanderAlongPath

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentHalt = L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = SetStateAndMove
  L2_2 = AI_MOVE
  L3_2 = GetWaypoint
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = GetDist
  L2_2 = GetMyPos
  L2_2 = L2_2()
  L3_2 = GetWaypoint
  L3_2 = L3_2()
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 < 300 then
    L1_2 = IncrementWaypoint
    L1_2()
  end
end

TimerWander = L0_1
