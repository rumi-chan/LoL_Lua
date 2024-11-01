local L0_1, L1_1, L2_1
L0_1 = {}
Components = L0_1
L0_1 = DoLuaShared
L1_1 = "EventSystem"
L0_1(L1_1)
L0_1 = {}
L1_1 = "AIComponentSystem.lua"
L2_1 = "EventSystem.lua"
L0_1[1] = L1_1
L0_1[2] = L2_1
IncludedFiles = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "AIComponent"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  L2_2 = DoLuaShared
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = IncludedFiles
  L3_2 = IncludedFiles
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = L1_2
  L5_2 = ".lua"
  L4_2 = L4_2 .. L5_2
  L2_2[L3_2] = L4_2
  L2_2 = Components
  L3_2 = Components
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = _G
  L4_2 = L4_2[A0_2]
  L2_2[L3_2] = L4_2
end

AddComponent = L0_1
