local L0_1, L1_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = CreateChildTurret
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  turret = L6_2
  L6_2 = SetWorldVar
  L7_2 = A0_2
  L8_2 = turret
  L6_2(L7_2, L8_2)
  L6_2 = turret
  return L6_2
end

SpawnTurret = L0_1
