local L0_1, L1_1, L2_1
L0_1 = {}
L0_1.TimerCallbackName = "TimerSkittishMonster"
L0_1.MeleeRange = 350
SkittishMonster = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = SkittishMonster
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "LeashedCallForHelp"
L2_1 = SkittishMonster
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentHalt"
L2_1 = SkittishMonster
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "SkittishResume"
L2_1 = SkittishMonster
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "SkittishPause"
L2_1 = SkittishMonster
L0_1(L1_1, L2_1)
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.timerDuration = 0.5
  L1_2 = InitTimer
  L2_2 = A0_2.TimerCallbackName
  L3_2 = A0_2.timerDuration
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
  L1_2 = {}
  A0_2.Attackers = L1_2
  A0_2.attackDuration = 5
  A0_2.MeleeAttackers = 0
  L1_2 = A0_2.MeleeRange
  L2_2 = A0_2.MeleeRange
  L1_2 = L1_2 * L2_2
  A0_2.MeleeRangeSq = L1_2
  A0_2.Enabled = true
end

L0_1.ComponentInit = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Event
  L2_2 = "WanderPause"
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.Start = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2
  A0_2.Enabled = true
end

L0_1.SkittishResume = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2
  A0_2.Enabled = false
end

L0_1.SkittishPause = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Event
  L2_2 = "WanderResume"
  L1_2(L2_2)
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.Stop = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.MeleeAttackers
  if 0 < L1_2 then
    L1_2 = Event
    L2_2 = "MeleeAttacked"
    L1_2(L2_2)
  else
    L1_2 = Event
    L2_2 = "RangeAttacked"
    L1_2(L2_2)
  end
end

L0_1.SendMeleeState = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.Enabled
  if L3_2 == false then
    return
  end
  L3_2 = true
  L4_2 = GetDistSquared
  L5_2 = GetMyPos
  L5_2 = L5_2()
  L6_2 = GetPos
  L7_2 = A2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2.MeleeRangeSq
  if L4_2 > L5_2 then
    L3_2 = false
  end
  L4_2 = ipairs
  L5_2 = A0_2.Attackers
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.attacker
    if L9_2 == A2_2 then
      L9_2 = A0_2.attackDuration
      L8_2.remainingTime = L9_2
      L9_2 = L8_2.isMelee
      if L3_2 ~= L9_2 then
        if L3_2 == true then
          L9_2 = A0_2.MeleeAttackers
          L9_2 = L9_2 + 1
          A0_2.MeleeAttackers = L9_2
        else
          L9_2 = A0_2.MeleeAttackers
          L9_2 = L9_2 - 1
          A0_2.MeleeAttackers = L9_2
        end
      end
      L8_2.isMelee = L3_2
      L10_2 = A0_2
      L9_2 = A0_2.SendMeleeState
      L9_2(L10_2)
      return
    end
  end
  L4_2 = A0_2.Attackers
  L4_2 = #L4_2
  if L4_2 == 0 then
    L5_2 = A0_2
    L4_2 = A0_2.Start
    L4_2(L5_2)
  end
  L4_2 = A0_2.Attackers
  L5_2 = A0_2.Attackers
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = {}
  L7_2 = GetUnitRef
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L6_2.attacker = L7_2
  L7_2 = A0_2.attackDuration
  L6_2.remainingTime = L7_2
  L6_2.isMelee = L3_2
  L4_2[L5_2] = L6_2
  if L3_2 == true then
    L4_2 = A0_2.MeleeAttackers
    L4_2 = L4_2 + 1
    A0_2.MeleeAttackers = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.SendMeleeState
  L4_2(L5_2)
end

L0_1.LeashedCallForHelp = L1_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.ComponentHalt = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = SkittishMonster
  L1_2 = L0_2
  L0_2 = L0_2.Timer
  L0_2(L1_2)
end

TimerSkittishMonster = L0_1
L0_1 = SkittishMonster

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = AI_HALTED
  if L1_2 ~= L2_2 then
    L2_2 = A0_2.Enabled
    if L2_2 ~= false then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = 1
  while true do
    L3_2 = A0_2.Attackers
    L3_2 = #L3_2
    if not (L2_2 <= L3_2) then
      break
    end
    L3_2 = A0_2.Attackers
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2.remainingTime
    L5_2 = A0_2.timerDuration
    L4_2 = L4_2 - L5_2
    L3_2.remainingTime = L4_2
    L4_2 = L3_2.remainingTime
    if not (L4_2 <= 0) then
      L4_2 = TryGetUnitFromRef
      L5_2 = L3_2.attacker
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_41
      end
    end
    L4_2 = RemoveElement
    L5_2 = A0_2.Attackers
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.Attackers
    L4_2 = #L4_2
    if L4_2 == 0 then
      L5_2 = A0_2
      L4_2 = A0_2.Stop
      L4_2(L5_2)
      do return end
      goto lbl_42
      ::lbl_41::
      L2_2 = L2_2 + 1
    end
    ::lbl_42::
  end
  L3_2 = GetPos
  L4_2 = TryGetUnitFromRef
  L5_2 = A0_2.Attackers
  L5_2 = L5_2[1]
  L5_2 = L5_2.attacker
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = GetMyPos
  L4_2 = L4_2()
  L5_2 = L4_2 - L3_2
  L7_2 = L5_2
  L6_2 = L5_2.length
  L6_2 = L6_2(L7_2)
  if L6_2 < 0.01 then
    L6_2 = GetFacingDirection
    L6_2 = L6_2()
    L5_2 = L6_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.normalize
  L6_2 = L6_2(L7_2)
  offset = L6_2
  L6_2 = offset
  L6_2 = 600 * L6_2
  L6_2 = L4_2 + L6_2
  L7_2 = SetStateAndMove
  L8_2 = AI_MOVE
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end

L0_1.Timer = L1_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 + 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 - 1
    L7_2 = A0_2[L5_2]
    A0_2[L6_2] = L7_2
  end
  L2_2 = #A0_2
  A0_2[L2_2] = nil
end

RemoveElement = L0_1
