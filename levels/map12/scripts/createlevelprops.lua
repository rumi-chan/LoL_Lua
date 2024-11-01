local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T1_C_08"
  L2_2 = "Turret"
  L3_2 = "HA_Outer"
  L4_2 = TEAM_ORDER
  L5_2 = 3
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T1_C_07"
  L2_2 = "Turret"
  L3_2 = "HA_Inhibitor"
  L4_2 = TEAM_ORDER
  L5_2 = 1
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T1_C_09"
  L2_2 = "Turret"
  L3_2 = "HA_Nexus"
  L4_2 = TEAM_ORDER
  L5_2 = 4
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T1_C_010"
  L2_2 = "Turret"
  L3_2 = "HA_Nexus"
  L4_2 = TEAM_ORDER
  L5_2 = 5
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T2_L_01"
  L2_2 = "Turret"
  L3_2 = "HA_Outer"
  L4_2 = TEAM_CHAOS
  L5_2 = 3
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T2_L_02"
  L2_2 = "Turret"
  L3_2 = "HA_Inhibitor"
  L4_2 = TEAM_CHAOS
  L5_2 = 1
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T2_L_03"
  L2_2 = "Turret"
  L3_2 = "HA_Nexus"
  L4_2 = TEAM_CHAOS
  L5_2 = 4
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_T2_L_04"
  L2_2 = "Turret"
  L3_2 = "HA_Nexus"
  L4_2 = TEAM_CHAOS
  L5_2 = 5
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_OrderTurretShrine"
  L2_2 = "HA_AP_OrderShrineTurret"
  L3_2 = ""
  L4_2 = TEAM_ORDER
  L5_2 = 0
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_ChaosTurretShrine"
  L2_2 = "HA_AP_ChaosTurretShrine"
  L3_2 = ""
  L4_2 = TEAM_CHAOS
  L5_2 = 0
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end

CreateLevelProps = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = CreateChildTurret
  L1_2 = "Turret"
  L2_2 = "HA_Tutorial"
  L3_2 = ""
  L4_2 = TEAM_ORDER
  L5_2 = 4
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret"
  L2_2 = "HA_Tutorial"
  L3_2 = ""
  L4_2 = TEAM_ORDER
  L5_2 = 3
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret"
  L2_2 = "HA_Tutorial"
  L3_2 = ""
  L4_2 = TEAM_CHAOS
  L5_2 = 4
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = CreateChildTurret
  L1_2 = "Turret_OrderTurretShrine"
  L2_2 = "HA_AP_OrderShrineTurret"
  L3_2 = ""
  L4_2 = TEAM_ORDER
  L5_2 = 0
  L6_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end

CreateLevelPropsTutorial = L0_1
