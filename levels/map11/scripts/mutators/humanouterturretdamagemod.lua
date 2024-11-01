local L0_1, L1_1
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 3
FRONT_TOWER = L0_1
L0_1 = 0
RIGHT_LANE = L0_1
L0_1 = 1
CENTER_LANE = L0_1
L0_1 = 2
LEFT_LANE = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.floor
  L3_2 = A0_2
  L2_2 = A0_2.GetFloat
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * 100
  L1_2 = L1_2(L2_2)
  modifier = L1_2
  L1_2 = SetBuffOnTeamTurrets
  L2_2 = TEAM_ORDER
  L3_2 = modifier
  L1_2(L2_2, L3_2)
  L1_2 = SetBuffOnTeamTurrets
  L2_2 = TEAM_CHAOS
  L3_2 = modifier
  L1_2(L2_2, L3_2)
end

HumanOuterTurretDamageModOnInit = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = RIGHT_LANE
  L3_2 = LEFT_LANE
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetTurret
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = FRONT_TOWER
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    innerTurret = L6_2
    L6_2 = ApplyPersistentBuff
    L7_2 = innerTurret
    L8_2 = "ModTurretDamageToHumans"
    L9_2 = false
    L10_2 = 1
    L11_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = AddBuffCounter
    L7_2 = innerTurret
    L8_2 = "ModTurretDamageToHumans"
    L9_2 = A1_2
    L10_2 = 100
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end

SetBuffOnTeamTurrets = L0_1
