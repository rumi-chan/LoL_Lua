local L0_1, L1_1, L2_1
L0_1 = {}
LockMovementToRiver = L0_1
L0_1 = RegisterForEvent
L1_1 = "ComponentInit"
L2_1 = LockMovementToRiver
L0_1(L1_1, L2_1)
L0_1 = 0
numberOfClamps = L0_1
L0_1 = LockMovementToRiver

function L1_1(A0_2)
  local L1_2
  L1_2 = SetStateAndMove
  OriginalSetStateAndMove = L1_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = 0
    numberOfClamps = L2_3
    L2_3 = A1_3.x
    L3_3 = River
    L3_3 = L3_3.TopBorder
    L3_3 = L3_3[1]
    L3_3 = L3_3.x
    if L2_3 < L3_3 then
      L2_3 = River
      L2_3 = L2_3.TopBorder
      L2_3 = L2_3[1]
      L2_3 = L2_3.x
      A1_3.x = L2_3
      L2_3 = numberOfClamps
      L2_3 = L2_3 + 1
      numberOfClamps = L2_3
    else
      L2_3 = A1_3.x
      L3_3 = River
      L3_3 = L3_3.TopBorder
      L4_3 = River
      L4_3 = L4_3.TopBorder
      L4_3 = #L4_3
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.x
      if L2_3 > L3_3 then
        L2_3 = River
        L2_3 = L2_3.TopBorder
        L3_3 = River
        L3_3 = L3_3.TopBorder
        L3_3 = #L3_3
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.x
        A1_3.x = L2_3
        L2_3 = numberOfClamps
        L2_3 = L2_3 + 1
        numberOfClamps = L2_3
      end
    end
    L2_3 = ClampToBorder
    L3_3 = A1_3
    L4_3 = River
    L4_3 = L4_3.TopBorder
    L5_3 = true
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    A1_3 = L2_3
    L2_3 = ClampToBorder
    L3_3 = A1_3
    L4_3 = River
    L4_3 = L4_3.BottomBorder
    L5_3 = false
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    A1_3 = L2_3
    L2_3 = numberOfClamps
    if 1 < L2_3 then
      L2_3 = Event
      L3_3 = "RiverCornered"
      L2_3(L3_3)
    end
    L2_3 = OriginalSetStateAndMove
    L3_3 = A0_3
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  
  SetStateAndMove = L1_2
end

L0_1.ComponentInit = L1_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 1
  L4_2 = #A1_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.x
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.x
    if L7_2 >= L8_2 then
      L7_2 = A0_2.x
      L8_2 = L6_2 + 1
      L8_2 = A1_2[L8_2]
      L8_2 = L8_2.x
      if L7_2 <= L8_2 then
        L7_2 = A0_2.x
        L8_2 = A1_2[L6_2]
        L8_2 = L8_2.x
        L7_2 = L7_2 - L8_2
        L8_2 = L6_2 + 1
        L8_2 = A1_2[L8_2]
        L8_2 = L8_2.x
        L9_2 = A1_2[L6_2]
        L9_2 = L9_2.x
        L8_2 = L8_2 - L9_2
        L7_2 = L7_2 / L8_2
        L8_2 = A1_2[L6_2]
        L8_2 = L8_2.z
        L9_2 = L6_2 + 1
        L9_2 = A1_2[L9_2]
        L9_2 = L9_2.z
        L10_2 = A1_2[L6_2]
        L10_2 = L10_2.z
        L9_2 = L9_2 - L10_2
        L9_2 = L7_2 * L9_2
        L8_2 = L8_2 + L9_2
        if A2_2 then
          L9_2 = A0_2.z
          if L8_2 < L9_2 then
            A0_2.z = L8_2
            L9_2 = numberOfClamps
            L9_2 = L9_2 + 1
            numberOfClamps = L9_2
          end
          break
        end
        L9_2 = A0_2.z
        if L8_2 > L9_2 then
          A0_2.z = L8_2
          L9_2 = numberOfClamps
          L9_2 = L9_2 + 1
          numberOfClamps = L9_2
        end
        break
      end
    end
  end
  return A0_2
end

ClampToBorder = L0_1
