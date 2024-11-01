local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.x = 0
L0_1.y = 0
L0_1.z = 0
L1_1 = 0
L2_1 = 0
AI_MOVE = L2_1
L2_1 = 1
AI_STOP = L2_1

function L2_1(A0_2)
  local L1_2
  A0_2.Priority = 0.001
end

UpdatePriority = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_TARGET_LOST
  L1_2(L2_2)
end

BeginTask = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = GetTime
  L2_2 = L2_2()
  if L1_2 < L2_2 then
    L1_2 = GetTime
    L1_2 = L1_2()
    L2_2 = GetRandomIntInRangeLua
    L3_2 = 2
    L4_2 = 4
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2 + L2_2
    L1_1 = L1_2
    L1_2 = MakeWanderPoint
    L2_2 = GetPos
    L2_2 = L2_2()
    L3_2 = 250
    L1_2 = L1_2(L2_2, L3_2)
    L0_1 = L1_2
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_MOVE
  if L1_2 == L2_2 then
    L1_2 = GetDist
    L2_2 = L0_1
    L3_2 = GetPos
    L3_2, L4_2 = L3_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 < 80 then
      L1_2 = StopMove
      L1_2()
      L1_2 = SetState
      L2_2 = AI_STOP
      L1_2(L2_2)
    end
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_STOP
  if L1_2 == L2_2 then
    L1_2 = GetDist
    L2_2 = L0_1
    L3_2 = GetPos
    L3_2, L4_2 = L3_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if 80 <= L1_2 then
      L1_2 = SetStateAndMove
      L2_2 = AI_MOVE
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
    end
  end
end

Tick = L2_1

function L2_1(A0_2)
  local L1_2
end

OnTargetLost = L2_1
