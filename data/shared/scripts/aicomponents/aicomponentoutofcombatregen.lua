local L0_1, L1_1, L2_1
L0_1 = REGEN_PERCENT_PER_SECOND
if L0_1 == nil then
  L0_1 = 0.035
  REGEN_PERCENT_PER_SECOND = L0_1
end
L0_1 = 0.25
INITIAL_REGEN_BOOST = L0_1
L0_1 = {}
L0_1.TimerCallbackName = "TimerRegen"
OutOfCombatRegen = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = OutOfCombatRegen
L0_1(L1_1, L2_1)
L0_1 = RegisterForEvent
L1_1 = "ComponentHalt"
L2_1 = OutOfCombatRegen
L0_1(L1_1, L2_1)
L0_1 = OutOfCombatRegen

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = InitTimer
  L5_2 = A0_2.TimerCallbackName
  L6_2 = 0.25
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = OutOfCombatRegen
  L5_2 = L4_2
  L4_2 = L4_2.Stop
  L4_2(L5_2)
end

L0_1.ComponentInit = L1_1
L0_1 = OutOfCombatRegen

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = OutOfCombatRegen
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
end

L0_1.ComponentHalt = L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharVar
  L2_2 = "StartBoostRegen"
  L1_2 = L1_2(L2_2)
  L2_2 = GetMaxHP
  L2_2 = L2_2()
  L3_2 = REGEN_PERCENT_PER_SECOND
  L3_2 = L2_2 * L3_2
  if 0 < L1_2 then
    L4_2 = L1_2 * 3
    L4_2 = 1 + L4_2
    L3_2 = L3_2 * L4_2
    L1_2 = L1_2 - 0.2
    L4_2 = SetCharVar
    L5_2 = "StartBoostRegen"
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = GetHP
  L4_2 = L4_2()
  if 0 < L4_2 then
    L5_2 = L4_2 + L3_2
    L6_2 = SetHP
    L7_2 = L5_2
    L6_2(L7_2)
  end
end

TimerRegen = L0_1
L0_1 = OutOfCombatRegen

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ResetAndStartTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.Start = L1_1
L0_1 = OutOfCombatRegen

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = StopTimer
  L2_2 = A0_2.TimerCallbackName
  L1_2(L2_2)
end

L0_1.Stop = L1_1
