local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Make3DPoint
  L1_2 = 10500
  L2_2 = 0
  L3_2 = 5000
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = Make3DPoint
  L2_2 = 4200
  L3_2 = 0
  L4_2 = 9800
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = GetMyPos
  L2_2 = L2_2()
  L2_2 = L2_2 - L0_2
  L3_2 = L2_2
  L2_2 = L2_2.lengthSq
  L2_2 = L2_2(L3_2)
  L3_2 = GetMyPos
  L3_2 = L3_2()
  L3_2 = L3_2 - L1_2
  L4_2 = L3_2
  L3_2 = L3_2.lengthSq
  L3_2 = L3_2(L4_2)
  if L2_2 > L3_2 then
    L2_2 = {}
    L3_2 = Make3DPoint
    L4_2 = 3150
    L5_2 = 0
    L6_2 = 11500
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.StartPos = L3_2
    L3_2 = Make3DPoint
    L4_2 = 6400
    L5_2 = 0
    L6_2 = 8400
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.EndPos = L3_2
    L2_2.Dest = 4
    L2_2.Dir = -1
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 3720
    L6_2 = 0
    L7_2 = 9920
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 4030
    L7_2 = 0
    L8_2 = 9460
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 4710
    L8_2 = 0
    L9_2 = 9190
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 5240
    L9_2 = 0
    L10_2 = 8950
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 5890
    L10_2 = 0
    L11_2 = 8810
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.Path = L3_2
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 2840
    L6_2 = 0
    L7_2 = 11270
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 3100
    L7_2 = 0
    L8_2 = 11500
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 3800
    L8_2 = 0
    L9_2 = 11000
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 4500
    L9_2 = 0
    L10_2 = 9900
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 6750
    L10_2 = 0
    L11_2 = 8650
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.TopBorder = L3_2
    L2_2.CenterPos = L1_2
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 2840
    L6_2 = 0
    L7_2 = 11270
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 3600
    L7_2 = 0
    L8_2 = 9700
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 4700
    L8_2 = 0
    L9_2 = 8900
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 6115
    L9_2 = 0
    L10_2 = 8100
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 6800
    L10_2 = 0
    L11_2 = 8600
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.BottomBorder = L3_2
    River = L2_2
  else
    L2_2 = {}
    L3_2 = Make3DPoint
    L4_2 = 11500
    L5_2 = 0
    L6_2 = 4000
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.StartPos = L3_2
    L3_2 = Make3DPoint
    L4_2 = 8500
    L5_2 = 0
    L6_2 = 6300
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.EndPos = L3_2
    L2_2.Dest = 4
    L2_2.Dir = -1
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 11190
    L6_2 = 0
    L7_2 = 4660
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 11020
    L7_2 = 0
    L8_2 = 5130
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 10440
    L8_2 = 0
    L9_2 = 5520
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 9830
    L9_2 = 0
    L10_2 = 5780
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 9190
    L10_2 = 0
    L11_2 = 6030
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.Path = L3_2
    L2_2.CenterPos = L0_2
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 8150
    L6_2 = 0
    L7_2 = 6100
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 8850
    L7_2 = 0
    L8_2 = 6650
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 9500
    L8_2 = 0
    L9_2 = 6200
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 10800
    L9_2 = 0
    L10_2 = 5500
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 11300
    L10_2 = 0
    L11_2 = 4900
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = Make3DPoint
    L10_2 = 11900
    L11_2 = 0
    L12_2 = 4000
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.TopBorder = L3_2
    L3_2 = {}
    L4_2 = Make3DPoint
    L5_2 = 8150
    L6_2 = 0
    L7_2 = 6100
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Make3DPoint
    L6_2 = 9500
    L7_2 = 0
    L8_2 = 5300
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Make3DPoint
    L7_2 = 10200
    L8_2 = 0
    L9_2 = 4800
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Make3DPoint
    L8_2 = 11000
    L9_2 = 0
    L10_2 = 4100
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = Make3DPoint
    L9_2 = 11300
    L10_2 = 0
    L11_2 = 3900
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = Make3DPoint
    L10_2 = 11900
    L11_2 = 0
    L12_2 = 4000
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L3_2[7] = L10_2
    L3_2[8] = L11_2
    L3_2[9] = L12_2
    L2_2.BottomBorder = L3_2
    River = L2_2
  end
end

CreateRiverRegions = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = River
  L0_2 = L0_2.Path
  L1_2 = River
  L1_2 = L1_2.Dest
  L0_2 = L0_2[L1_2]
  return L0_2
end

GetWaypoint = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = River
  L0_2 = L0_2.Dir
  if L0_2 == 1 then
    L0_2 = River
    L0_2 = L0_2.Dest
    L1_2 = River
    L1_2 = L1_2.Path
    L1_2 = #L1_2
    if L0_2 == L1_2 then
      L0_2 = River
      L0_2.Dir = -1
    end
  else
    L0_2 = River
    L0_2 = L0_2.Dest
    if L0_2 == 1 then
      L0_2 = River
      L0_2.Dir = 1
    end
  end
  L0_2 = River
  L1_2 = River
  L1_2 = L1_2.Dest
  L2_2 = River
  L2_2 = L2_2.Dir
  L1_2 = L1_2 + L2_2
  L0_2.Dest = L1_2
end

IncrementWaypoint = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetMyPos
  L0_2 = L0_2()
  L1_2 = GetDistSquared
  L2_2 = L0_2
  L3_2 = River
  L3_2 = L3_2.Path
  L3_2 = L3_2[1]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = 2
  while true do
    L4_2 = River
    L4_2 = L4_2.Path
    L4_2 = #L4_2
    if not (L3_2 <= L4_2) then
      break
    end
    L4_2 = GetDistSquared
    L5_2 = L0_2
    L6_2 = River
    L6_2 = L6_2.Path
    L6_2 = L6_2[L3_2]
    L4_2 = L4_2(L5_2, L6_2)
    if L1_2 > L4_2 then
      L2_2 = L3_2
      L1_2 = L4_2
    end
    L3_2 = L3_2 + 1
  end
end

SeekWaypoint = L0_1
