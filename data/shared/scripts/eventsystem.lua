local L0_1, L1_1
L0_1 = {}
EventRecipients = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = EventRecipients
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = EventRecipients
    L3_2 = {}
    L4_2 = A1_2
    L3_2[1] = L4_2
    L2_2[A0_2] = L3_2
    L2_2 = _G
    
    function L3_2(...)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = ipairs
      L2_3 = EventRecipients
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      L1_3, L2_3, L3_3 = L1_3(L2_3)
      for L4_3, L5_3 in L1_3, L2_3, L3_3 do
        L6_3 = A0_2
        L6_3 = L5_3[L6_3]
        L7_3 = L5_3
        L8_3 = ...
        L6_3(L7_3, L8_3)
      end
    end
    
    L2_2[A0_2] = L3_2
  else
    L2_2 = EventRecipients
    L2_2 = L2_2[A0_2]
    L3_2 = false
    L4_2 = ipairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      if L8_2 == A1_2 then
        L3_2 = true
      end
    end
    if not L3_2 then
      L4_2 = #L2_2
      L4_2 = L4_2 + 1
      L2_2[L4_2] = A1_2
    end
  end
end

RegisterForEvent = L0_1

function L0_1(A0_2, ...)
  local L2_2, L3_2, L4_2
  L2_2 = EventRecipients
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = _G
      L3_2 = L3_2[A0_2]
      L4_2 = ...
      L3_2(L4_2)
    end
  end
end

Event = L0_1
