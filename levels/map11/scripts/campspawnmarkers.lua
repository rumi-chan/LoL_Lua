local L0_1, L1_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = GetIsGameFeatureEnabled
  L2_2 = "RawLSDeprecationNeutralMinions"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    L1_2 = ipairs
    L2_2 = A0_2
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = SpawnMinion
      L7_2 = "CampRespawn"
      L8_2 = "SRU_CampRespawnMarker"
      L9_2 = "Idle.lua"
      L10_2 = Make3DPoint
      L11_2 = 2000
      L12_2 = 70
      L13_2 = 2000
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = TEAM_NEUTRAL
      L12_2 = false
      L13_2 = true
      L14_2 = true
      L15_2 = true
      L16_2 = true
      L17_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      Marker = L6_2
      L6_2 = ApplyPersistentBuff
      L7_2 = Marker
      L8_2 = "CampRespawnInitial"
      L9_2 = false
      L10_2 = 1
      L11_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end

SpawnCampSpawnMarkers = L0_1
