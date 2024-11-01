local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = activeTask
  if L0_2 ~= nil then
    L0_2 = getmetatable
    L1_2 = activeTask
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2.OnTargetLost
    if L1_2 then
      L1_2 = L0_2.OnTargetLost
      L2_2 = activeTask
      L1_2(L2_2)
    end
  end
end

OnLostTarget = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = LoadScript
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2.__index = L1_2
  return L1_2
end

LoadTask = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = UpgradeSpellsInOrder
  L1_2 = 4
  L2_2 = 2
  L3_2 = 3
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

OnLevelUp = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = InitTimer
  L1_2 = "TimerHackDelayedInit"
  L2_2 = 1
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end

OnInit = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerUpdate"
  L0_2(L1_2)
end

Disable = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ResetAndStartTimer
  L1_2 = "TimerUpdate"
  L0_2(L1_2)
end

Enable = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = LoadTask
  L1_2 = "TaskPushLane.lua"
  L0_2 = L0_2(L1_2)
  L1_2 = LoadTask
  L2_2 = "TaskRetreat.lua"
  L1_2 = L1_2(L2_2)
  L2_2 = LoadTask
  L3_2 = "TaskDefendStructure.lua"
  L2_2 = L2_2(L3_2)
  L3_2 = LoadTask
  L4_2 = "TaskBuyItem.lua"
  L3_2 = L3_2(L4_2)
  L4_2 = LoadTask
  L5_2 = "TaskKillHero.lua"
  L4_2 = L4_2(L5_2)
  L5_2 = LoadTask
  L6_2 = "TaskCastSpell.lua"
  L5_2 = L5_2(L6_2)
  L6_2 = LoadTask
  L7_2 = "TaskKillMinion.lua"
  L6_2 = L6_2(L7_2)
  L7_2 = LoadTask
  L8_2 = "TaskKillTower.lua"
  L7_2 = L7_2(L8_2)
  L8_2 = {}
  tasks = L8_2
  L8_2 = {}
  L9_2 = setmetatable
  L10_2 = L8_2
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
  L8_2.Name = "CastSpell"
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = tasks
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L8_2 = {}
  L9_2 = setmetatable
  L10_2 = L8_2
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L8_2.Name = "Retreat"
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = tasks
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L8_2 = {}
  L9_2 = setmetatable
  L10_2 = L8_2
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L8_2.Name = "KillLowHPMinion"
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = tasks
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L8_2 = {}
  L9_2 = setmetatable
  L10_2 = L8_2
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
  L8_2.Name = "KillNearbyStruct"
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = tasks
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L8_2 = 0
  L9_2 = 2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = {}
    L12_2.LaneID = L11_2
    L13_2 = "Push Lane "
    L14_2 = L11_2
    L13_2 = L13_2 .. L14_2
    L12_2.Name = L13_2
    L13_2 = setmetatable
    L14_2 = L12_2
    L15_2 = L0_2
    L13_2(L14_2, L15_2)
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = tasks
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
  end
  L8_2 = GetStructures
  L9_2 = GetTeam
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = 1
  L10_2 = #L8_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = {}
    L14_2 = L8_2[L12_2]
    L13_2.StructureID = L14_2
    L14_2 = "Defend "
    L15_2 = objGetName
    L16_2 = GetObject
    L17_2 = L8_2[L12_2]
    L16_2, L17_2 = L16_2(L17_2)
    L15_2 = L15_2(L16_2, L17_2)
    L14_2 = L14_2 .. L15_2
    L13_2.Name = L14_2
    L14_2 = setmetatable
    L15_2 = L13_2
    L16_2 = L2_2
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = tasks
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
  end
  L9_2 = {}
  L10_2 = setmetatable
  L11_2 = L9_2
  L12_2 = L3_2
  L10_2(L11_2, L12_2)
  L9_2.Name = "Buy Item"
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = tasks
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L9_2 = GetHeroes
  L10_2 = GetOtherTeam
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2 = 1
  L11_2 = #L9_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = {}
    L14_2.HeroIDIndex = L13_2
    L15_2 = "Kill Hero "
    L16_2 = objGetName
    L17_2 = L9_2[L13_2]
    L16_2 = L16_2(L17_2)
    L15_2 = L15_2 .. L16_2
    L14_2.Name = L15_2
    L15_2 = setmetatable
    L16_2 = L14_2
    L17_2 = L4_2
    L15_2(L16_2, L17_2)
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = tasks
    L17_2 = L14_2
    L15_2(L16_2, L17_2)
  end
  L10_2 = InitTimer
  L11_2 = "TimerUpdate"
  L12_2 = 0.25
  L13_2 = true
  L10_2(L11_2, L12_2, L13_2)
end

TimerHackDelayedInit = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = activeTask
  L0_2 = L0_2.HeroID
  if L0_2 then
    L0_2 = getmetatable
    L1_2 = activeTask
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2.AntiKiteTimer
    if L1_2 then
      L1_2 = L0_2.AntiKiteTimer
      L2_2 = activeTask
      L1_2(L2_2)
    end
  end
end

AntiKiteTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = tasks
  L1_2 = tasks
  L1_2 = #L1_2
  L0_2 = L0_2[L1_2]
  L1_2 = tasks
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = tasks
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.UpdatePriority
    L5_2(L6_2)
    L5_2 = tasks
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Done
    if L5_2 then
      L5_2 = activeTask
      L6_2 = tasks
      L6_2 = L6_2[L4_2]
      if L5_2 == L6_2 then
        L5_2 = nil
        activeTask = L5_2
      end
      L5_2 = SetDebugSlotText
      L6_2 = tasks
      L6_2 = #L6_2
      L7_2 = ""
      L8_2 = 0
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = tasks
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = tasks
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Priority
      L6_2 = L0_2.Priority
      if L5_2 > L6_2 then
        L5_2 = tasks
        L0_2 = L5_2[L4_2]
      end
    end
  end
  L1_2 = 1
  L2_2 = tasks
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = tasks
    L5_2 = L5_2[L4_2]
    if L0_2 == L5_2 then
      L5_2 = 1
      colorIndex = L5_2
    else
      L5_2 = 0
      colorIndex = L5_2
    end
    L5_2 = SetDebugSlotText
    L6_2 = L4_2
    L7_2 = tasks
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.Name
    L8_2 = " : "
    L9_2 = tasks
    L9_2 = L9_2[L4_2]
    L9_2 = L9_2.Priority
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = colorIndex
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = activeTask
  if L0_2 ~= L1_2 then
    L1_2 = activeTask
    if L1_2 ~= nil then
      L1_2 = L0_2.Priority
      L2_2 = activeTask
      L2_2 = L2_2.Priority
      if not (L1_2 > L2_2) then
        goto lbl_89
      end
    end
    activeTask = L0_2
    L1_2 = activeTask
    L2_2 = L1_2
    L1_2 = L1_2.BeginTask
    L1_2(L2_2)
  end
  ::lbl_89::
  L1_2 = activeTask
  L2_2 = L1_2
  L1_2 = L1_2.Tick
  L1_2(L2_2)
end

TimerUpdate = L0_1
