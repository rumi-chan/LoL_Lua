local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = DoLuaShared
L1_1 = "GlobalLevelScript"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = SetupDefaultDefines
  L0_2()
  L0_2 = OverrideDefaultDefines
  L0_2()
  L0_2 = SetupDefaultMinionInfo
  L0_2()
  L0_2 = OverrideDefaultMinionInfo
  L0_2()
  L0_2 = SetupDefaultTables
  L0_2()
  L0_2 = OverrideDefaultTables
  L0_2()
end

Init = L0_1
L0_1 = 25
EVENT_STAGE_WELCOME_TIME = L0_1
L0_1 = 35
EVENT_STAGE_PREANNOUNCE_TIME = L0_1
L0_1 = 65
EVENT_STAGE_MINIONS_SPAWNED_TIME = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 1.2
  EOG_SCOREBOARD_PHASE_DELAY_TIME = L0_2
  L0_2 = 180
  MAX_MINIONS_EVER = L0_2
  L0_2 = 0
  TEAM_UNKNOWN = L0_2
  L0_2 = 100
  TEAM_ORDER = L0_2
  L0_2 = 200
  TEAM_CHAOS = L0_2
  L0_2 = 300
  TEAM_NEUTRAL = L0_2
  L0_2 = 1
  ORDER_HQ = L0_2
  L0_2 = 2
  CHAOS_HQ = L0_2
  L0_2 = 3
  FRONT_TOWER = L0_2
  L0_2 = 2
  MIDDLE_TOWER = L0_2
  L0_2 = 1
  BACK_TOWER = L0_2
  L0_2 = 4
  HQ_TOWER2 = L0_2
  L0_2 = 5
  HQ_TOWER1 = L0_2
  L0_2 = 0
  RIGHT_LANE = L0_2
  L0_2 = 1
  CENTER_LANE = L0_2
  L0_2 = 2
  LEFT_LANE = L0_2
  L0_2 = EVENT_STAGE_MINIONS_SPAWNED_TIME
  INITIAL_TIME_TO_SPAWN = L0_2
  L0_2 = 3
  CANNON_MINION_SPAWN_FREQUENCY = L0_2
  L0_2 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_2
  L0_2 = 850
  INCREASE_CANNON_RATE_TIMER = L0_2
  L0_2 = 1500
  INCREASE_CANNON_RATE_TIMER2 = L0_2
  L0_2 = 0
  MINION_HEALTH_DENIAL_PERCENT = L0_2
  L0_2 = INITIAL_TIME_TO_SPAWN
  L0_2 = L0_2 + 25
  SMITE_CHARGE_START = L0_2
  L0_2 = 90
  UPGRADE_MINION_TIMER = L0_2
  L0_2 = 6
  UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = L0_2
  L0_2 = 3
  TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = L0_2
  L0_2 = 1400
  EXP_GIVEN_RADIUS = L0_2
  L0_2 = 1250
  GOLD_GIVEN_RADIUS = L0_2
  L0_2 = 300
  DISABLE_MINION_SPAWN_BASE_TIME = L0_2
  L0_2 = 0
  DISABLE_MINION_SPAWN_MAG_TIME = L0_2
  L0_2 = 11.67
  CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_2
  L0_2 = 11
  ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_2
  L0_2 = 600
  MINION_MOVE_SPEED_INCREASE_TIME = L0_2
  L0_2 = 300
  NEXT_MINION_MOVE_SPEED_INCREASE_TIME = L0_2
  L0_2 = 25
  MINION_MOVE_SPEED_INCREASE_AMOUNT = L0_2
  L0_2 = 0
  MINION_MOVE_SPEED_INCREMENT = L0_2
  L0_2 = 4
  MAX_MINION_MOVE_SPEED_INCREMENT = L0_2
  L0_2 = 57
  CANNON_GOLD = L0_2
  L0_2 = 14
  CASTER_GOLD = L0_2
  L0_2 = 21
  MELEE_GOLD = L0_2
  L0_2 = 0
  MELEE_CASTER_GOLD_UPGRADE = L0_2
  L0_2 = 3
  CANNON_GOLD_UPGRADE = L0_2
  L0_2 = 0
  CANNON_SHARE_LASTHIT = L0_2
  L0_2 = 0
  CANNON_SHARE_MISS = L0_2
  L0_2 = 0
  CASTER_SHARE_LASTHIT = L0_2
  L0_2 = 0
  CASTER_SHARE_MISS = L0_2
  L0_2 = 0
  MELEE_SHARE_LASTHIT = L0_2
  L0_2 = 0
  MELEE_SHARE_MISS = L0_2
end

SetupDefaultDefines = L0_1
L0_1 = -1
LAST_WAVE = L0_1
L0_1 = "none"
SPECIAL_MINION_MODE = L0_1
L0_1 = false
HQTurretAttackable = L0_1
L0_1 = 0
UpgradedMinionIterations = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.DefaultNumPerWave = 3
  L0_2.ArmorMax = 16
  L0_2.Armor = 0
  L0_2.ArmorUpgrade = 0
  L0_2.ArmorUpgradeGrowth = 0.085
  L0_2.MagicResistance = 0
  L0_2.MagicResistanceUpgrade = 0.625
  L0_2.HPBonus = 0
  L0_2.MaxBonus = 845
  L0_2.HPUpgrade = 22
  L0_2.HPUpgradeGrowth = 0.3
  L0_2.HPUpgradeLate = 10.25
  L0_2.HPUpgradeGrowthLate = 0
  L0_2.HPInhibitor = 0
  L0_2.DamageMax = 68
  L0_2.DamageBonus = 0
  L0_2.DamageUpgrade = 0
  L0_2.DamageUpgradeLate = 3.41
  L0_2.DamageInhibitor = 0
  L0_2.ExpGiven = 64
  L0_2.ExpBonus = 0
  L0_2.ExpUpgrade = 0
  L0_2.ExpInhibitor = 0
  L1_2 = MELEE_GOLD
  L0_2.GoldGiven = L1_2
  L0_2.GoldBonus = 0
  L1_2 = MELEE_CASTER_GOLD_UPGRADE
  L0_2.GoldUpgrade = L1_2
  L0_2.GoldInhibitor = 0
  L0_2.GoldShared = 0
  L0_2.GoldShareUpgrade = 0
  L0_2.GoldMaximumBonus = 0
  L0_2.LocalGoldGiven = 0
  L1_2 = MELEE_SHARE_LASTHIT
  L0_2.LocalGoldGivenOnLastHit = L1_2
  L1_2 = MELEE_SHARE_MISS
  L0_2.LocalGoldBonus = L1_2
  L0_2.MoveSpeedBaseIncrease = 0
  MeleeDefaultMinionInfo = L0_2
  L0_2 = {}
  L0_2.DefaultNumPerWave = 3
  L0_2.ArmorMax = 0
  L0_2.Armor = 0
  L0_2.ArmorUpgrade = 0
  L0_2.ArmorUpgradeGrowth = 0
  L0_2.MagicResistance = 0
  L0_2.MagicResistanceUpgrade = 1
  L0_2.HPBonus = 0
  L0_2.MaxBonus = 195
  L0_2.HPUpgrade = 6
  L0_2.HPUpgradeGrowth = 0
  L0_2.HPUpgradeLate = 2.25
  L0_2.HPUpgradeGrowthLate = 0
  L0_2.HPInhibitor = 0
  L0_2.DamageMax = 97
  L0_2.DamageBonus = 0
  L0_2.DamageUpgrade = 1.5
  L0_2.DamageUpgradeLate = 3
  L0_2.DamageInhibitor = 0
  L0_2.ExpGiven = 32
  L0_2.ExpBonus = 0
  L0_2.ExpUpgrade = 0
  L0_2.ExpInhibitor = 0
  L1_2 = CASTER_GOLD
  L0_2.GoldGiven = L1_2
  L0_2.GoldBonus = 0
  L1_2 = MELEE_CASTER_GOLD_UPGRADE
  L0_2.GoldUpgrade = L1_2
  L0_2.GoldInhibitor = 0
  L0_2.GoldShared = 0
  L0_2.GoldShareUpgrade = 0
  L0_2.GoldMaximumBonus = 0
  L0_2.LocalGoldGiven = 0
  L1_2 = CASTER_SHARE_LASTHIT
  L0_2.LocalGoldGivenOnLastHit = L1_2
  L1_2 = CASTER_SHARE_MISS
  L0_2.LocalGoldBonus = L1_2
  L0_2.MoveSpeedBaseIncrease = 0
  CasterDefaultMinionInfo = L0_2
  L0_2 = {}
  L0_2.DefaultNumPerWave = 0
  L0_2.ArmorMax = 0
  L0_2.Armor = 0
  L0_2.ArmorUpgrade = 0
  L0_2.ArmorUpgradeGrowth = 0
  L0_2.MagicResistance = 0
  L0_2.MagicResistanceUpgrade = 1.5
  L0_2.HPBonus = 0
  L0_2.MaxBonus = 10000
  L0_2.HPUpgrade = 62
  L0_2.HPUpgradeGrowth = 0
  L0_2.HPUpgradeLate = 25
  L0_2.HPUpgradeGrowthLate = 0
  L0_2.HPInhibitor = 0
  L0_2.DamageMax = 10000
  L0_2.DamageBonus = 0
  L0_2.DamageUpgrade = 1.5
  L0_2.DamageUpgradeLate = 0
  L0_2.DamageInhibitor = 0
  L0_2.ExpGiven = 100
  L0_2.ExpBonus = 0
  L0_2.ExpUpgrade = 0
  L0_2.ExpInhibitor = 0
  L1_2 = CANNON_GOLD
  L0_2.GoldGiven = L1_2
  L0_2.GoldBonus = 0
  L1_2 = CANNON_GOLD_UPGRADE
  L0_2.GoldUpgrade = L1_2
  L0_2.GoldInhibitor = 0
  L0_2.GoldShared = 0
  L0_2.GoldShareUpgrade = 0
  L0_2.GoldMaximumBonus = 33
  L0_2.LocalGoldGiven = 0
  L1_2 = CANNON_SHARE_LASTHIT
  L0_2.LocalGoldGivenOnLastHit = L1_2
  L1_2 = CANNON_SHARE_MISS
  L0_2.LocalGoldBonus = L1_2
  L0_2.MoveSpeedBaseIncrease = 0
  CannonDefaultMinionInfo = L0_2
  L0_2 = {}
  L0_2.DefaultNumPerWave = 0
  L0_2.ArmorMax = 0
  L0_2.Armor = 0
  L0_2.ArmorUpgrade = 0
  L0_2.ArmorUpgradeGrowth = 0
  L0_2.MagicResistance = 0
  L0_2.MagicResistanceUpgrade = 0
  L0_2.HPBonus = 0
  L0_2.MaxBonus = 10000
  L0_2.HPUpgrade = 100
  L0_2.HPUpgradeGrowth = 0
  L0_2.HPUpgradeLate = 0
  L0_2.HPUpgradeGrowthLate = 0
  L0_2.HPInhibitor = 0
  L0_2.DamageMax = 1000
  L0_2.DamageBonus = 0
  L0_2.DamageUpgrade = 5
  L0_2.DamageUpgradeLate = 0
  L0_2.DamageInhibitor = 0
  L0_2.ExpGiven = 100
  L0_2.ExpBonus = 0
  L0_2.ExpUpgrade = 0
  L0_2.ExpInhibitor = 0
  L0_2.GoldGiven = 57
  L0_2.GoldBonus = 0
  L0_2.GoldUpgrade = 3
  L0_2.GoldInhibitor = 0
  L0_2.GoldShared = 0
  L0_2.GoldShareUpgrade = 0
  L0_2.GoldMaximumBonus = 33
  L0_2.LocalGoldGiven = 0
  L0_2.LocalGoldBonus = 0
  L0_2.MoveSpeedBaseIncrease = 0
  SuperDefaultMinionInfo = L0_2
end

SetupDefaultMinionInfo = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L0_2.WaveSpawnRate = 30000
  L0_2.SingleMinionSpawnDelay = 800
  L1_2 = EXP_GIVEN_RADIUS
  L0_2.ExpRadius = L1_2
  L1_2 = GOLD_GIVEN_RADIUS
  L0_2.GoldRadius = L1_2
  SpawnTable = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_OrderMinionMelee"
  L1_2 = MeleeDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  OrderMeleeMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_ChaosMinionMelee"
  L1_2 = MeleeDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  ChaosMeleeMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_OrderMinionRanged"
  L1_2 = CasterDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  OrderCasterMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_ChaosMinionRanged"
  L1_2 = CasterDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  ChaosCasterMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_OrderMinionSiege"
  L1_2 = CannonDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  OrderCannonMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_ChaosMinionSiege"
  L1_2 = CannonDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  ChaosCannonMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_OrderMinionSuper"
  L1_2 = SuperDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  OrderSuperMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "SRU_ChaosMinionSuper"
  L1_2 = SuperDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  ChaosSuperMinionInfo = L0_2
  L0_2 = {}
  L0_2.IsDestroyed = false
  L0_2.NumOfSpawnDisables = 0
  L0_2.WillSpawnSuperMinion = 0
  L1_2 = {}
  L2_2 = "Super"
  L3_2 = "Melee"
  L4_2 = "Cannon"
  L5_2 = "Caster"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2.SpawnOrderMinionNames = L1_2
  DefaultBarrackInfo = L0_2
  L0_2 = {}
  L1_2 = OrderMeleeMinionInfo
  L0_2.Melee = L1_2
  L1_2 = OrderCasterMinionInfo
  L0_2.Caster = L1_2
  L1_2 = OrderCannonMinionInfo
  L0_2.Cannon = L1_2
  L1_2 = OrderSuperMinionInfo
  L0_2.Super = L1_2
  DefaultOrderMinionInfoTable = L0_2
  L0_2 = {}
  L1_2 = ChaosMeleeMinionInfo
  L0_2.Melee = L1_2
  L1_2 = ChaosCasterMinionInfo
  L0_2.Caster = L1_2
  L1_2 = ChaosCannonMinionInfo
  L0_2.Cannon = L1_2
  L1_2 = ChaosSuperMinionInfo
  L0_2.Super = L1_2
  DefaultChaosMinionInfoTable = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultOrderMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  OrderBarrack0 = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultOrderMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  OrderBarrack1 = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultOrderMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  OrderBarrack2 = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultChaosMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  ChaosBarrack0 = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultChaosMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  ChaosBarrack1 = L0_2
  L0_2 = {}
  L1_2 = DefaultBarrackInfo
  L0_2.DefaultInfo = L1_2
  L1_2 = DefaultChaosMinionInfoTable
  L0_2.DefaultMinionInfoTable = L1_2
  ChaosBarrack2 = L0_2
  L0_2 = {}
  OrderOutermostTurrets = L0_2
  L0_2 = {}
  ChaosOutermostTurrets = L0_2
  L0_2 = {}
  L1_2 = InitBarrackInfo
  L2_2 = OrderBarrack0
  L1_2 = L1_2(L2_2)
  L2_2 = InitBarrackInfo
  L3_2 = OrderBarrack1
  L2_2 = L2_2(L3_2)
  L3_2 = InitBarrackInfo
  L4_2 = OrderBarrack2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  OrderBarracksBonuses = L0_2
  L0_2 = {}
  L1_2 = InitBarrackInfo
  L2_2 = ChaosBarrack0
  L1_2 = L1_2(L2_2)
  L2_2 = InitBarrackInfo
  L3_2 = ChaosBarrack1
  L2_2 = L2_2(L3_2)
  L3_2 = InitBarrackInfo
  L4_2 = ChaosBarrack2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  ChaosBarracksBonuses = L0_2
  L0_2 = {}
  L1_2 = CreateLaneBuildingTable
  L1_2 = L1_2()
  L2_2 = CreateLaneBuildingTable
  L2_2 = L2_2()
  L3_2 = CreateLaneBuildingTable
  L3_2 = L3_2()
  L0_2.HQTower2 = true
  L0_2.HQTower1 = true
  L0_2.HQ = true
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  OrderBuildingStatus = L0_2
  L0_2 = {}
  L1_2 = CreateLaneBuildingTable
  L1_2 = L1_2()
  L2_2 = CreateLaneBuildingTable
  L2_2 = L2_2()
  L3_2 = CreateLaneBuildingTable
  L3_2 = L3_2()
  L0_2.HQTower2 = true
  L0_2.HQTower1 = true
  L0_2.HQ = true
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  ChaosBuildingStatus = L0_2
end

SetupDefaultTables = L0_1
L0_1 = DoLuaLevel
L1_1 = "BBLuaConversionLibrary"
L0_1(L1_1)
L0_1 = DoLuaLevel
L1_1 = "CampSpawnMarkers"
L0_1(L1_1)

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A1_2 ~= nil then
    L4_2 = type
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 == "table" then
      L4_2 = nil
      L5_2 = nil
      if A0_2 == nil then
        L6_2 = {}
        A0_2 = L6_2
      end
      L6_2 = pairs
      L7_2 = A1_2
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        if A2_2 == true then
          L11_2 = type
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 == "table" then
            L11_2 = AppendTable
            L12_2 = A0_2[L9_2]
            L13_2 = L10_2
            L14_2 = A3_2
            L15_2 = A3_2
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
            A0_2[L9_2] = L11_2
        end
        else
          A0_2[L9_2] = L10_2
        end
      end
    end
  end
  return A0_2
end

AppendTable = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = AppendTable
  L2_2 = A0_2
  L3_2 = A0_2.DefaultInfo
  L4_2 = true
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2 = L1_2
  L1_2 = AppendTable
  L2_2 = A0_2.MinionInfoTable
  L3_2 = A0_2.DefaultMinionInfoTable
  L4_2 = true
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.MinionInfoTable = L1_2
  L1_2 = A0_2.MinionInfoTable
  if L1_2 ~= nil then
    L1_2 = A0_2.MinionInfoTable
    L2_2 = nil
    L3_2 = nil
    L4_2 = pairs
    L5_2 = L1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L1_2[L7_2]
      L10_2 = L9_2.DefaultInfo
      if L10_2 ~= nil then
        L10_2 = AppendTable
        L11_2 = L9_2
        L12_2 = L9_2.DefaultInfo
        L13_2 = true
        L14_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = L9_2.DefaultNumPerWave
        L9_2.NumPerWave = L10_2
        L10_2 = L9_2.GoldGiven
        L9_2.GoldGivenBase = L10_2
        L10_2 = L9_2.ExpGiven
        L9_2.ExpGivenBase = L10_2
      end
    end
  end
  L1_2 = A0_2.Overrides
  if L1_2 ~= nil then
    L1_2 = nil
    L2_2 = nil
    L3_2 = pairs
    L4_2 = A0_2.Overrides
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = type
      L9_2 = A0_2[L6_2]
      L8_2 = L8_2(L9_2)
      if L8_2 == "table" then
        L8_2 = type
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 == "table" then
          L8_2 = AppendTable
          L9_2 = A0_2[L6_2]
          L10_2 = L7_2
          L11_2 = true
          L12_2 = true
          L8_2(L9_2, L10_2, L11_2, L12_2)
        end
      else
        L8_2 = type
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 ~= "table" then
          A0_2[L6_2] = L7_2
        end
      end
    end
  end
  return A0_2
end

InitBarrackInfo = L0_1
L0_1 = {}
L1_1 = "SRU_Dragon"
L2_1 = "SRU_Krug"
L3_1 = "SRU_KrugMini"
L4_1 = "SRU_Red"
L5_1 = "SRU_Razorbeak"
L6_1 = "SRU_RazorbeakMini"
L7_1 = "SRU_Murkwolf"
L8_1 = "SRU_MurkwolfMini"
L9_1 = "SRU_Blue"
L10_1 = "SRU_Gromp"
L11_1 = "SRU_Baron"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
NeutralMinionNames = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.Turret3 = true
  L0_2.Turret2 = true
  L0_2.Turret1 = true
  L0_2.Barracks = true
  return L0_2
end

CreateLaneBuildingTable = L0_1
L0_1 = 0
TotalNumberOfMinions = L0_1
L0_1 = 3
totalNumberOfChaosBarracks = L0_1
L0_1 = 3
totalNumberOfOrderBarracks = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = pairs
  L4_2 = A0_2.DefaultMinionInfoTable
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.PreloadedCharacter
    if L8_2 == nil then
      L7_2.PreloadedCharacter = 1
      L8_2 = PreloadCharacter
      L9_2 = L7_2.MinionName
      L8_2(L9_2)
    end
  end
end

PreloadBarrackCharacters = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = DefaultBarrackInfo
  L2_2 = L2_2.SpawnOrderMinionNames
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.MinionInfoTable
    L6_2 = L6_2[L5_2]
    L6_2.NumPerWave = 0
  end
end

SuppressMinionSpawnForBarrack = L0_1

function L0_1()
  local L0_2, L1_2
end

SetMutatorGlobals = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationLaneMinions"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = pairs
    L3_2 = OrderBarracksBonuses
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = PreloadBarrackCharacters
      L8_2 = L6_2
      L7_2(L8_2)
    end
    L2_2 = pairs
    L3_2 = ChaosBarracksBonuses
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = PreloadBarrackCharacters
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L2_2 = SetMutatorGlobals
  L2_2()
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationBuildings"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = SetWorldVar
    L3_2 = "OrderOutermostTurrets"
    L4_2 = OrderOutermostTurrets
    L2_2(L3_2, L4_2)
    L2_2 = SetWorldVar
    L3_2 = "ChaosOutermostTurrets"
    L4_2 = ChaosOutermostTurrets
    L2_2(L3_2, L4_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T1_C_01"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T1_C_02"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T1_C_03"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T1_C_04"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T1_C_05"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T2_C_01"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T2_C_02"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T2_C_03"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T2_C_04"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Turret"
    L4_2 = "Turret_T2_C_05"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Inhibitor"
    L4_2 = "Barracks_T2_L1"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Inhibitor"
    L4_2 = "Barracks_T1_R1"
    L5_2 = "skinID"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Nexus"
    L4_2 = "HQ_T1"
    L5_2 = "skinID1"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = PreloadCharacterWithCFGSkin
    L3_2 = "Nexus"
    L4_2 = "HQ_T2"
    L5_2 = "skinID1"
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationLaneMinions"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = PreloadCharacter
    L3_2 = "SRU_OrderMinionMelee"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_OrderMinionRanged"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_OrderMinionSiege"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_OrderMinionSuper"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_ChaosMinionMelee"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_ChaosMinionRanged"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_ChaosMinionSiege"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_ChaosMinionSuper"
    L2_2(L3_2)
  end
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationNeutralMinions"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Blue"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Red"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Murkwolf"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_MurkwolfMini"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Razorbeak"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_RazorbeakMini"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Krug"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_KrugMini"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Gromp"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_Baron"
    L2_2(L3_2)
    L2_2 = PreloadCharacter
    L3_2 = "SRU_BaronSpawn"
    L2_2(L3_2)
  end
  L2_2 = PreloadCharacter
  L3_2 = "SRUAP_MageCrystal"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRUAP_Flag"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Snail"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Dragon_prop"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Bird"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Antlermouse"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Gromp_prop"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Lizard"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_StoreKeeperNorth"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_StoreKeeperSouth"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "PromoController"
  L2_2(L3_2)
  L2_2 = GetMutatorParameterString
  L3_2 = "NeutralMinionSpawnScript"
  L2_2 = L2_2(L3_2)
  L3_2 = LoadLevelScriptIntoScript
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = NeutralMinionInit
  L3_2()
  L3_2 = GetIsGameFeatureEnabled
  L4_2 = "RawLSDeprecationEoGCeremony"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= true then
    L3_2 = LoadLevelScriptIntoScript
    L4_2 = "EndOfGame.lua"
    L3_2(L4_2)
  end
end

OnLevelInit = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationLaneMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = InitTimer
    L1_2 = "UpgradeMinionTimerInitial"
    L2_2 = INITIAL_TIME_TO_SPAWN
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = InitTimer
    L1_2 = "UpgradeMinionMovementSpeedTimer"
    L2_2 = MINION_MOVE_SPEED_INCREASE_TIME
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = InitTimer
    L1_2 = "IncreaseCannonMinionSpawnRate"
    L2_2 = INCREASE_CANNON_RATE_TIMER
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = InitTimer
    L1_2 = "IncreaseCannonMinionSpawnRateAgain"
    L2_2 = INCREASE_CANNON_RATE_TIMER2
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = InitTimer
    L1_2 = "AllowDamageOnBuildings"
    L2_2 = 10
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
  end
end

OnLevelInitServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Log
  L1_2 = "----------------------- Regular LevelScript PostLevelLoad ----------------------------"
  L0_2(L1_2)
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = GetMutatorParameterString
    L1_2 = "LevelPropsScript"
    L0_2 = L0_2(L1_2)
    L1_2 = LoadLevelScriptIntoScript
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = CreateLevelProps
    L1_2()
  end
  L0_2 = SpawnMinion
  L1_2 = "PromotionController"
  L2_2 = "PromoController"
  L3_2 = "Idle.lua"
  L4_2 = Make3DPoint
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = TEAM_NEUTRAL
  L6_2 = false
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L11_2 = true
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  PromoController = L0_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = RIGHT_LANE
    L1_2 = LEFT_LANE
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = GetDampener
      L5_2 = TEAM_ORDER
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = SetDampenerRespawnAnimationDuration
      L6_2 = L4_2
      L7_2 = ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION
      L5_2(L6_2, L7_2)
      L5_2 = GetDampener
      L6_2 = TEAM_CHAOS
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
      L5_2 = SetDampenerRespawnAnimationDuration
      L6_2 = L4_2
      L7_2 = CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION
      L5_2(L6_2, L7_2)
      L5_2 = SetLaneExposed
      L6_2 = TEAM_ORDER
      L7_2 = L3_2
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetLaneExposed
      L6_2 = TEAM_CHAOS
      L7_2 = L3_2
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = 0
      L6_2 = 0
      L7_2 = BACK_TOWER
      L8_2 = FRONT_TOWER
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = GetTurret
        L12_2 = TEAM_ORDER
        L13_2 = L3_2
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        orderTurret = L11_2
        L11_2 = orderTurret
        if L11_2 ~= nil then
          L5_2 = L5_2 + 1
        end
        L11_2 = GetTurret
        L12_2 = TEAM_CHAOS
        L13_2 = L3_2
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        chaosTurret = L11_2
        L11_2 = chaosTurret
        if L11_2 ~= nil then
          L6_2 = L6_2 + 1
        end
      end
      L7_2 = SetLaneTowerCount
      L8_2 = TEAM_ORDER
      L9_2 = L3_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = SetLaneTowerCount
      L8_2 = TEAM_CHAOS
      L9_2 = L3_2
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L0_2 = SetWorldVar
  L1_2 = "SmiteChargeStart"
  L2_2 = SMITE_CHARGE_START
  L0_2(L1_2, L2_2)
end

OnPostLevelLoad = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Log
  L1_2 = "----------------------- Regular LevelScript OnLevelReset ----------------------------"
  L0_2(L1_2)
  L0_2 = NeutralMinionOnLevelReset
  L0_2()
  L0_2 = OnGameStartup
  L0_2()
  L0_2 = OnPostLevelLoad
  L0_2()
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = InitTimer
    L1_2 = "AllowDamageOnBuildings"
    L2_2 = 10
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = ChaosBuildingStatus
  L0_2.HQTower1 = true
  L0_2 = ChaosBuildingStatus
  L0_2.HQTower2 = true
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = RIGHT_LANE
    L1_2 = LEFT_LANE
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = GetDampener
      L5_2 = TEAM_ORDER
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = AddInvulnerable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = AddUntargetable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = GetDampener
      L6_2 = TEAM_CHAOS
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
      L5_2 = AddInvulnerable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = AddUntargetable
      L6_2 = L4_2
      L5_2(L6_2)
    end
    L0_2 = GetHQ
    L1_2 = TEAM_ORDER
    L0_2 = L0_2(L1_2)
    L1_2 = AddInvulnerable
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = AddUntargetable
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = GetHQ
    L2_2 = TEAM_CHAOS
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
    L1_2 = AddInvulnerable
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = AddUntargetable
    L2_2 = L0_2
    L1_2(L2_2)
  end
  L0_2 = ApplyPersistentBuffToAllChampions
  L1_2 = "ResetGame_BotReinitHack"
  L2_2 = false
  L0_2(L1_2, L2_2)
end

OnLevelReset = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationNeutralMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = SpawnCampSpawnMarkers
    L1_2 = CampsWithInitialMinimapUI
    L0_2(L1_2)
  end
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_UNKNOWN
  L2_2 = "ApplySRBuffs"
  L0_2(L1_2, L2_2)
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = 0
    L1_2 = GetKeyLocation
    L2_2 = L0_2
    L3_2 = TEAM_ORDER
    L1_2 = L1_2(L2_2, L3_2)
    OrderHQPos = L1_2
    L1_2 = GetKeyLocation
    L2_2 = L0_2
    L3_2 = TEAM_CHAOS
    L1_2 = L1_2(L2_2, L3_2)
    ChaosHQPos = L1_2
  end
end

OnGameStartup = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = ApplySRBuffs
  L2_2 = A0_2
  L1_2(L2_2)
end

OnGameSwapChampion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ApplyPersistentBuff
  L2_2 = A0_2
  L3_2 = "S6Test_RegionRules"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = A0_2
  L3_2 = "SRChampionBuff"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

ApplySRBuffs = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = TEAM_CHAOS
  if A0_2 == L1_2 then
    L1_2 = TEAM_ORDER
    return L1_2
  else
    L1_2 = TEAM_CHAOS
    return L1_2
  end
end

OppositeTeam = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationLaneMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = UpgradeMinionTimer
    L0_2()
    L0_2 = InitTimer
    L1_2 = "UpgradeMinionTimer"
    L2_2 = UPGRADE_MINION_TIMER
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
end

UpgradeMinionTimerInitial = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationLaneMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = nil
    L1_2 = UpgradedMinionIterations
    L1_2 = L1_2 + 1
    UpgradedMinionIterations = L1_2
    L1_2 = SetWorldVar
    L2_2 = "UpgradedMinionIterations"
    L3_2 = UpgradedMinionIterations
    L1_2(L2_2, L3_2)
    L1_2 = 1
    L2_2 = 2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      if L4_2 == 1 then
        L0_2 = OrderBarracksBonuses
      else
        L0_2 = ChaosBarracksBonuses
      end
      L5_2 = 1
      L6_2 = 3
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = nil
        L10_2 = nil
        L11_2 = L0_2[L8_2]
        L11_2 = L11_2.MinionInfoTable
        L12_2 = pairs
        L13_2 = L11_2
        L12_2, L13_2, L14_2 = L12_2(L13_2)
        for L15_2, L16_2 in L12_2, L13_2, L14_2 do
          L17_2 = L16_2.HPUpgrade
          L18_2 = L16_2.HPUpgradeGrowth
          L19_2 = UpgradedMinionIterations
          L20_2 = UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING
          if L19_2 >= L20_2 then
            L19_2 = L16_2.HPUpgradeLate
            L17_2 = L17_2 + L19_2
            L19_2 = L16_2.HPUpgradeGrowthLate
            L18_2 = L18_2 + L19_2
          end
          L19_2 = L16_2.HPBonus
          L19_2 = L19_2 + L17_2
          L16_2.HPBonus = L19_2
          L19_2 = L16_2.HPUpgrade
          L19_2 = L19_2 + L18_2
          L16_2.HPUpgrade = L19_2
          L19_2 = math
          L19_2 = L19_2.min
          L20_2 = L16_2.HPBonus
          L21_2 = L16_2.MaxBonus
          L19_2 = L19_2(L20_2, L21_2)
          L16_2.HPBonus = L19_2
          L19_2 = L16_2.DamageBonus
          L20_2 = L16_2.DamageUpgrade
          L19_2 = L19_2 + L20_2
          L16_2.DamageBonus = L19_2
          L19_2 = L16_2.GoldBonus
          L20_2 = L16_2.GoldUpgrade
          L19_2 = L19_2 + L20_2
          L16_2.GoldBonus = L19_2
          L19_2 = L16_2.GoldBonus
          L20_2 = L16_2.GoldMaximumBonus
          if L19_2 > L20_2 then
            L19_2 = L16_2.GoldMaximumBonus
            L16_2.GoldBonus = L19_2
          end
          L19_2 = L16_2.LocalGoldBonus
          L20_2 = L16_2.GoldShareUpgrade
          L19_2 = L19_2 + L20_2
          L16_2.LocalGoldBonus = L19_2
          L19_2 = UpgradedMinionIterations
          L20_2 = UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING
          if L19_2 >= L20_2 then
            L19_2 = L16_2.DamageBonus
            L20_2 = L16_2.DamageUpgradeLate
            L19_2 = L19_2 + L20_2
            L16_2.DamageBonus = L19_2
            L19_2 = math
            L19_2 = L19_2.min
            L20_2 = L16_2.DamageBonus
            L21_2 = L16_2.DamageMax
            L19_2 = L19_2(L20_2, L21_2)
            L16_2.DamageBonus = L19_2
            L19_2 = L16_2.Armor
            L20_2 = L16_2.ArmorUpgrade
            L19_2 = L19_2 + L20_2
            L16_2.Armor = L19_2
            L19_2 = L16_2.ArmorUpgrade
            L20_2 = L16_2.ArmorUpgradeGrowth
            L19_2 = L19_2 + L20_2
            L16_2.ArmorUpgrade = L19_2
            L19_2 = math
            L19_2 = L19_2.min
            L20_2 = L16_2.Armor
            L21_2 = L16_2.ArmorMax
            L19_2 = L19_2(L20_2, L21_2)
            L16_2.Armor = L19_2
          end
          L19_2 = L16_2.MagicResistance
          L16_2.MagicResistance = L19_2
          L19_2 = L16_2.ExpBonus
          L20_2 = L16_2.ExpUpgrade
          L19_2 = L19_2 + L20_2
          L16_2.ExpBonus = L19_2
          L19_2 = L16_2.GoldBonus
          L20_2 = L16_2.GoldGivenBase
          L19_2 = L19_2 + L20_2
          L16_2.GoldGiven = L19_2
          L19_2 = L16_2.LocalGoldBonus
          L20_2 = L16_2.GoldShared
          L19_2 = L19_2 + L20_2
          L16_2.LocalGoldGiven = L19_2
          L19_2 = L16_2.ExpBonus
          L20_2 = L16_2.ExpGivenBase
          L19_2 = L19_2 + L20_2
          L16_2.ExpGiven = L19_2
        end
      end
    end
  end
end

UpgradeMinionTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationLaneMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = MINION_MOVE_SPEED_INCREMENT
    L0_2 = L0_2 + 1
    MINION_MOVE_SPEED_INCREMENT = L0_2
    L0_2 = InitTimer
    L1_2 = "UpgradeMinionMovementSpeedTimerRepeated"
    L2_2 = NEXT_MINION_MOVE_SPEED_INCREASE_TIME
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
  end
end

UpgradeMinionMovementSpeedTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationLaneMinions"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = MINION_MOVE_SPEED_INCREMENT
    L0_2 = L0_2 + 1
    MINION_MOVE_SPEED_INCREMENT = L0_2
    L0_2 = MINION_MOVE_SPEED_INCREMENT
    L1_2 = MAX_MINION_MOVE_SPEED_INCREMENT
    if L0_2 < L1_2 then
      L0_2 = InitTimer
      L1_2 = "UpgradeMinionMovementSpeedTimerRepeated"
      L2_2 = NEXT_MINION_MOVE_SPEED_INCREASE_TIME
      L3_2 = false
      L0_2(L1_2, L2_2, L3_2)
    end
  end
end

UpgradeMinionMovementSpeedTimerRepeated = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = GetIsGameFeatureEnabled
  L1_2 = "RawLSDeprecationBuildings"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= true then
    L0_2 = RIGHT_LANE
    L1_2 = LEFT_LANE
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = -1
      L5_2 = -1
      L6_2 = FRONT_TOWER
      L7_2 = BACK_TOWER
      L8_2 = -1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = GetTurret
        L11_2 = TEAM_ORDER
        L12_2 = L3_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        orderTurret = L10_2
        L10_2 = orderTurret
        if L10_2 ~= nil and L4_2 == -1 then
          L4_2 = L9_2
        end
        L10_2 = GetTurret
        L11_2 = TEAM_CHAOS
        L12_2 = L3_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        chaosTurret = L10_2
        L10_2 = chaosTurret
        if L10_2 ~= nil and L5_2 == -1 then
          L5_2 = L9_2
        end
      end
      L6_2 = BACK_TOWER
      L7_2 = HQ_TOWER1
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = GetTurret
        L11_2 = TEAM_ORDER
        L12_2 = L3_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        orderTurret = L10_2
        L10_2 = orderTurret
        if L10_2 ~= nil then
          if L9_2 == L4_2 then
            L10_2 = RemoveInvulnerable
            L11_2 = orderTurret
            L10_2(L11_2)
            L10_2 = RemoveUntargetable
            L11_2 = orderTurret
            L10_2(L11_2)
            L10_2 = SetExposedTower
            L11_2 = TEAM_ORDER
            L12_2 = orderTurret
            L13_2 = L3_2
            L10_2(L11_2, L12_2, L13_2)
          else
            L10_2 = AddInvulnerable
            L11_2 = orderTurret
            L10_2(L11_2)
            L10_2 = SetNotTargetableToTeam
            L11_2 = orderTurret
            L12_2 = true
            L13_2 = TEAM_CHAOS
            L10_2(L11_2, L12_2, L13_2)
          end
        end
        L10_2 = GetTurret
        L11_2 = TEAM_CHAOS
        L12_2 = L3_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        chaosTurret = L10_2
        L10_2 = chaosTurret
        if L10_2 ~= nil then
          if L9_2 == L5_2 then
            L10_2 = RemoveInvulnerable
            L11_2 = chaosTurret
            L10_2(L11_2)
            L10_2 = RemoveUntargetable
            L11_2 = chaosTurret
            L10_2(L11_2)
            L10_2 = SetExposedTower
            L11_2 = TEAM_CHAOS
            L12_2 = chaosTurret
            L13_2 = L3_2
            L10_2(L11_2, L12_2, L13_2)
          else
            L10_2 = AddInvulnerable
            L11_2 = chaosTurret
            L10_2(L11_2)
            L10_2 = SetNotTargetableToTeam
            L11_2 = chaosTurret
            L12_2 = true
            L13_2 = TEAM_ORDER
            L10_2(L11_2, L12_2, L13_2)
          end
        end
      end
    end
  end
end

AllowDamageOnBuildings = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetIsGameFeatureEnabled
  L4_2 = "RawLSDeprecationBuildings"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= true then
    L3_2 = TEAM_ORDER
    if A0_2 == L3_2 then
      L3_2 = OrderOutermostTurrets
      L4_2 = GetUnitRef
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_2[A2_2] = L4_2
    end
    L3_2 = TEAM_CHAOS
    if A0_2 == L3_2 then
      L3_2 = ChaosOutermostTurrets
      L4_2 = GetUnitRef
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_2[A2_2] = L4_2
    end
  end
end

SetExposedTower = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetIsGameFeatureEnabled
  L2_2 = "RawLSDeprecationLaneMinions"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    L1_2 = nil
    L2_2 = nil
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.DefaultNumPerWave
      L7_2.NumPerWave = L8_2
    end
  end
end

ResetToDefaultWaveCounts = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetIsGameFeatureEnabled
  L2_2 = "RawLSDeprecationLaneMinions"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    L1_2 = nil
    L2_2 = nil
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L7_2.NumPerWave = 0
    end
  end
end

ClearCurrentWaveCounts = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationLaneMinions"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = 0
    L3_2 = TEAM_ORDER
    if A1_2 == L3_2 then
      L3_2 = OrderBarracksBonuses
      L4_2 = A0_2 + 1
      L2_2 = L3_2[L4_2]
    else
      L3_2 = ChaosBarracksBonuses
      L4_2 = A0_2 + 1
      L2_2 = L3_2[L4_2]
    end
    L3_2 = {}
    L4_2 = SpawnTable
    L4_2 = L4_2.WaveSpawnRate
    L3_2.WaveSpawnRate = L4_2
    L4_2 = SpawnTable
    L4_2 = L4_2.SingleMinionSpawnDelay
    L3_2.SingleMinionSpawnDelay = L4_2
    L4_2 = L2_2.IsDestroyed
    L3_2.IsDestroyed = L4_2
    L4_2 = L2_2.MinionInfoTable
    L3_2.MinionInfoTable = L4_2
    ReturnTable = L3_2
    L3_2 = ReturnTable
    return L3_2
  else
    L2_2 = {}
    return L2_2
  end
end

GetInitSpawnInfo = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = GetIsGameFeatureEnabled
  L6_2 = "RawLSDeprecationLaneMinions"
  L5_2 = L5_2(L6_2)
  if L5_2 ~= true then
    L5_2 = 0
    L6_2 = TEAM_ORDER
    if A3_2 == L6_2 then
      L6_2 = OrderBarracksBonuses
      L7_2 = A0_2 + 1
      L5_2 = L6_2[L7_2]
    else
      L6_2 = ChaosBarracksBonuses
      L7_2 = A0_2 + 1
      L5_2 = L6_2[L7_2]
    end
    L6_2 = L5_2.MinionInfoTable
    L6_2 = L6_2.Super
    L7_2 = L5_2.MinionInfoTable
    L7_2 = L7_2.Cannon
    L8_2 = L5_2.MinionInfoTable
    L8_2 = L8_2.Melee
    L9_2 = L5_2.MinionInfoTable
    L9_2 = L9_2.Caster
    L10_2 = L5_2.MinionInfoTable
    L10_2 = L10_2.Captain
    L11_2 = L5_2.MinionInfoTable
    L11_2 = L11_2.Ranger
    L12_2 = L5_2.MinionInfoTable
    L12_2 = L12_2.Artillery
    L13_2 = ResetToDefaultWaveCounts
    L14_2 = L5_2.MinionInfoTable
    L13_2(L14_2)
    L13_2 = CANNON_MINION_SPAWN_FREQUENCY
    L13_2 = A1_2 % L13_2
    L14_2 = CANNON_MINION_SPAWN_DECIDER
    if L13_2 == L14_2 then
      L13_2 = L7_2.NumPerWave
      L13_2 = L13_2 + 1
      L7_2.NumPerWave = L13_2
    end
    L13_2 = LAST_WAVE
    if A4_2 ~= L13_2 then
      L13_2 = 6
      BARRACKSCOUNT = L13_2
      L13_2 = MAX_MINIONS_EVER
      L14_2 = GetTotalTeamMinionsSpawned
      L14_2 = L14_2()
      L13_2 = L13_2 - L14_2
      totalMinionsRemaining = L13_2
      L13_2 = totalMinionsRemaining
      L14_2 = BARRACKSCOUNT
      L14_2 = L14_2 * 7
      if L13_2 <= L14_2 then
        L13_2 = totalMinionsRemaining
        if L13_2 <= 0 then
          L13_2 = "None"
          SPECIAL_MINION_MODE = L13_2
        else
          L13_2 = totalMinionsRemaining
          L14_2 = BARRACKSCOUNT
          if L13_2 >= L14_2 then
            L13_2 = "2MeleeMinions"
            SPECIAL_MINION_MODE = L13_2
          else
            L13_2 = "None"
            SPECIAL_MINION_MODE = L13_2
          end
        end
      else
        L13_2 = ""
        SPECIAL_MINION_MODE = L13_2
      end
      LAST_WAVE = A4_2
    end
    L13_2 = L5_2.WillSpawnSuperMinion
    if L13_2 == 1 then
      L13_2 = TEAM_ORDER
      if A3_2 == L13_2 then
        L13_2 = totalNumberOfChaosBarracks
        if L13_2 == 0 then
          goto lbl_91
        end
      end
      L13_2 = TEAM_CHAOS
      if A3_2 == L13_2 then
        L13_2 = totalNumberOfOrderBarracks
        if L13_2 == 0 then
          ::lbl_91::
          L6_2.NumPerWave = 2
      end
      else
        L6_2.NumPerWave = 1
      end
      L7_2.NumPerWave = 0
    end
    L13_2 = 0
    L14_2 = MINION_MOVE_SPEED_INCREASE_AMOUNT
    L15_2 = MINION_MOVE_SPEED_INCREMENT
    L13_2 = L14_2 * L15_2
    L6_2.MoveSpeedBaseIncrease = L13_2
    L7_2.MoveSpeedBaseIncrease = L13_2
    L8_2.MoveSpeedBaseIncrease = L13_2
    L9_2.MoveSpeedBaseIncrease = L13_2
    L14_2 = SPECIAL_MINION_MODE
    if L14_2 == "2MeleeMinions" then
      L14_2 = L5_2.MinionInfoTable
      L14_2 = L14_2.Super
      L14_2 = L14_2.NumPerWave
      L15_2 = ClearCurrentWaveCounts
      L16_2 = L5_2.MinionInfoTable
      L15_2(L16_2)
      L6_2.NumPerWave = L14_2
      L15_2 = L5_2.MinionInfoTable
      L15_2 = L15_2.Melee
      L16_2 = math
      L16_2 = L16_2.max
      L17_2 = 2 - L14_2
      L18_2 = 0
      L16_2 = L16_2(L17_2, L18_2)
      L15_2.NumPerWave = L16_2
    else
      L14_2 = SPECIAL_MINION_MODE
      if L14_2 == "None" then
        L14_2 = ClearCurrentWaveCounts
        L15_2 = L5_2.MinionInfoTable
        L14_2(L15_2)
        L14_2 = OnSpecialMinionSpawnInfo
        L15_2 = A3_2
        L16_2 = totalNumberOfOrderBarracks
        L17_2 = totalNumberOfChaosBarracks
        L14_2(L15_2, L16_2, L17_2)
      end
    end
    L14_2 = GetMutatorParameterBool
    L15_2 = "SuppressMinionSpawn"
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = SuppressMinionSpawnForBarrack
      L15_2 = L5_2
      L14_2(L15_2)
    end
    L14_2 = {}
    L14_2.NewFormat = true
    L15_2 = L5_2.SpawnOrderMinionNames
    L14_2.SpawnOrderMinionNames = L15_2
    L15_2 = L5_2.IsDestroyed
    L14_2.IsDestroyed = L15_2
    L15_2 = SpawnTable
    L15_2 = L15_2.ExpRadius
    L14_2.ExperienceRadius = L15_2
    L15_2 = SpawnTable
    L15_2 = L15_2.GoldRadius
    L14_2.GoldRadius = L15_2
    L15_2 = L5_2.MinionInfoTable
    L14_2.MinionInfoTable = L15_2
    ReturnTable = L14_2
    L14_2 = ReturnTable
    return L14_2
  else
    L5_2 = {}
    return L5_2
  end
end

GetMinionSpawnInfo = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetIsGameFeatureEnabled
  L4_2 = "RawLSDeprecationBuildings"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= true then
    L3_2 = nil
    L4_2 = TEAM_ORDER
    if A0_2 == L4_2 then
      L3_2 = OrderBuildingStatus
    else
      L3_2 = ChaosBuildingStatus
    end
    L4_2 = FRONT_TOWER
    if A2_2 == L4_2 then
      L4_2 = A1_2 + 1
      L4_2 = L3_2[L4_2]
      L4_2.Turret3 = false
      L4_2 = GetTurret
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = MIDDLE_TOWER
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = RemoveInvulnerable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = RemoveUntargetable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = SetExposedTower
      L6_2 = A0_2
      L7_2 = L4_2
      L8_2 = A1_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetLaneTowerCount
      L6_2 = A0_2
      L7_2 = A1_2
      L8_2 = 2
      L5_2(L6_2, L7_2, L8_2)
    else
      L4_2 = MIDDLE_TOWER
      if A2_2 == L4_2 then
        L4_2 = A1_2 + 1
        L4_2 = L3_2[L4_2]
        L4_2.Turret2 = false
        L4_2 = GetTurret
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = BACK_TOWER
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = RemoveInvulnerable
        L6_2 = L4_2
        L5_2(L6_2)
        L5_2 = RemoveUntargetable
        L6_2 = L4_2
        L5_2(L6_2)
        L5_2 = SetExposedTower
        L6_2 = A0_2
        L7_2 = L4_2
        L8_2 = A1_2
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = SetLaneTowerCount
        L6_2 = A0_2
        L7_2 = A1_2
        L8_2 = 1
        L5_2(L6_2, L7_2, L8_2)
      else
        L4_2 = BACK_TOWER
        if A2_2 == L4_2 then
          L4_2 = A1_2 + 1
          L4_2 = L3_2[L4_2]
          L4_2.Turret1 = false
          L4_2 = GetDampener
          L5_2 = A0_2
          L6_2 = A1_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = RemoveInvulnerable
          L6_2 = L4_2
          L5_2(L6_2)
          L5_2 = RemoveUntargetable
          L6_2 = L4_2
          L5_2(L6_2)
          L5_2 = SetExposedTower
          L6_2 = A0_2
          L7_2 = nil
          L8_2 = A1_2
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = SetLaneTowerCount
          L6_2 = A0_2
          L7_2 = A1_2
          L8_2 = 0
          L5_2(L6_2, L7_2, L8_2)
        else
          L4_2 = HQ_TOWER2
          if A2_2 == L4_2 then
            L3_2.HQTower2 = false
            L4_2 = L3_2.HQTower1
            if L4_2 == false then
              L4_2 = GetHQ
              L5_2 = A0_2
              L4_2 = L4_2(L5_2)
              L5_2 = RemoveInvulnerable
              L6_2 = L4_2
              L5_2(L6_2)
              L5_2 = RemoveUntargetable
              L6_2 = L4_2
              L5_2(L6_2)
            end
          else
            L4_2 = HQ_TOWER1
            if A2_2 == L4_2 then
              L3_2.HQTower1 = false
              L4_2 = L3_2.HQTower2
              if L4_2 == false then
                L4_2 = GetHQ
                L5_2 = A0_2
                L4_2 = L4_2(L5_2)
                L5_2 = RemoveInvulnerable
                L6_2 = L4_2
                L5_2(L6_2)
                L5_2 = RemoveUntargetable
                L6_2 = L4_2
                L5_2(L6_2)
              end
            end
          end
        end
      end
    end
  end
end

DeactivateCorrectStructure = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = TEAM_ORDER
  if A0_2 == L3_2 then
    L3_2 = OrderBarracksBonuses
    L4_2 = A1_2 + 1
    L2_2 = L3_2[L4_2]
  else
    L3_2 = ChaosBarracksBonuses
    L4_2 = A1_2 + 1
    L2_2 = L3_2[L4_2]
  end
  return L2_2
end

GetLuaBarracks = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetLuaBarracks
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  barrack = L2_2
  L2_2 = DISABLE_MINION_SPAWN_BASE_TIME
  L3_2 = DISABLE_MINION_SPAWN_MAG_TIME
  L4_2 = barrack
  L4_2 = L4_2.NumOfSpawnDisables
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end

GetDisableMinionSpawnTime = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationLaneMinions"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = GetBarracks
    L3_2 = A1_2
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    cLangBarracks = L2_2
    L2_2 = GetLuaBarracks
    L3_2 = A1_2
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    luaBarrack = L2_2
    L2_2 = SetDisableMinionSpawn
    L3_2 = cLangBarracks
    L4_2 = GetDisableMinionSpawnTime
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = luaBarrack
    L3_2 = luaBarrack
    L3_2 = L3_2.NumOfSpawnDisables
    L3_2 = L3_2 + 1
    L2_2.NumOfSpawnDisables = L3_2
  end
end

DisableBarracksSpawn = L0_1
L0_1 = 0
BonusesCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationBuildings"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = BonusesCounter
    L2_2 = L2_2 + 1
    BonusesCounter = L2_2
    L2_2 = 1
    L3_2 = 3
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = nil
      L7_2 = nil
      L8_2 = TEAM_ORDER
      if A0_2 == L8_2 then
        L7_2 = TEAM_CHAOS
        L6_2 = OrderBarracksBonuses
        L8_2 = ChaosBarracksBonuses
        EnemyBarracks = L8_2
      else
        L7_2 = TEAM_ORDER
        L6_2 = ChaosBarracksBonuses
        L8_2 = OrderBarracksBonuses
        EnemyBarracks = L8_2
      end
      L8_2 = nil
      L9_2 = nil
      L10_2 = L6_2[L5_2]
      L10_2 = L10_2.MinionInfoTable
      L11_2 = pairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        L16_2 = L15_2.HPBonus
        L17_2 = L15_2.HPInhibitor
        L16_2 = L16_2 + L17_2
        L15_2.HPBonus = L16_2
        L16_2 = L15_2.DamageBonus
        L17_2 = L15_2.DamageInhibitor
        L16_2 = L16_2 + L17_2
        L15_2.DamageBonus = L16_2
        L16_2 = L15_2.ExpGiven
        L17_2 = L15_2.ExpInhibitor
        L16_2 = L16_2 - L17_2
        L15_2.ExpGiven = L16_2
        L16_2 = L15_2.GoldGiven
        L17_2 = L15_2.GoldInhibitor
        L16_2 = L16_2 - L17_2
        L15_2.GoldGiven = L16_2
      end
      L11_2 = A1_2 + 1
      if L5_2 == L11_2 then
        L11_2 = L6_2[L5_2]
        L11_2.WillSpawnSuperMinion = 1
        L11_2 = TEAM_ORDER
        if A0_2 == L11_2 then
          L11_2 = totalNumberOfChaosBarracks
          L11_2 = L11_2 - 1
          totalNumberOfChaosBarracks = L11_2
        else
          L11_2 = totalNumberOfOrderBarracks
          L11_2 = L11_2 - 1
          totalNumberOfOrderBarracks = L11_2
        end
      end
    end
  end
end

ApplyBarracksDestructionBonuses = L0_1
L0_1 = 0
ReductionCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationBuildings"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = ReductionCounter
    L2_2 = L2_2 + 1
    ReductionCounter = L2_2
    L2_2 = 1
    L3_2 = 3
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = nil
      L7_2 = nil
      L8_2 = nil
      L9_2 = TEAM_ORDER
      if A0_2 == L9_2 then
        L8_2 = TEAM_CHAOS
        L6_2 = OrderBarracksBonuses
        L7_2 = ChaosBarracksBonuses
      else
        L8_2 = TEAM_ORDER
        L6_2 = ChaosBarracksBonuses
        L7_2 = OrderBarracksBonuses
      end
      L9_2 = nil
      L10_2 = nil
      L11_2 = L6_2[L5_2]
      L11_2 = L11_2.MinionInfoTable
      L12_2 = pairs
      L13_2 = L11_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = L16_2.HPBonus
        L18_2 = L16_2.HPInhibitor
        L17_2 = L17_2 - L18_2
        L16_2.HPBonus = L17_2
        L17_2 = L16_2.DamageBonus
        L18_2 = L16_2.DamageInhibitor
        L17_2 = L17_2 - L18_2
        L16_2.DamageBonus = L17_2
        L17_2 = L16_2.ExpGiven
        L18_2 = L16_2.ExpInhibitor
        L17_2 = L17_2 + L18_2
        L16_2.ExpGiven = L17_2
        L17_2 = L16_2.GoldGiven
        L18_2 = L16_2.GoldInhibitor
        L17_2 = L17_2 + L18_2
        L16_2.GoldGiven = L17_2
      end
      L12_2 = nil
      L13_2 = A1_2 + 1
      if L5_2 == L13_2 then
        L13_2 = TEAM_ORDER
        if A0_2 == L13_2 then
          L13_2 = totalNumberOfChaosBarracks
          L13_2 = L13_2 + 1
          totalNumberOfChaosBarracks = L13_2
          L12_2 = totalNumberOfChaosBarracks
        else
          L13_2 = totalNumberOfOrderBarracks
          L13_2 = L13_2 + 1
          totalNumberOfOrderBarracks = L13_2
          L12_2 = totalNumberOfOrderBarracks
        end
        L13_2 = L6_2[L5_2]
        L13_2.WillSpawnSuperMinion = 0
        L13_2 = SetLaneExposed
        L14_2 = A0_2
        L15_2 = L5_2
        L16_2 = false
        L13_2(L14_2, L15_2, L16_2)
      end
      if L12_2 == 3 then
        L13_2 = GetHQ
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        HQ = L13_2
        L13_2 = AddInvulnerable
        L14_2 = HQ
        L13_2(L14_2)
        L13_2 = AddUntargetable
        L14_2 = HQ
        L13_2(L14_2)
        L13_2 = RIGHT_LANE
        L14_2 = LEFT_LANE
        L15_2 = 1
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = GetTurret
          L18_2 = L8_2
          L19_2 = L16_2
          L20_2 = HQ_TOWER1
          L17_2 = L17_2(L18_2, L19_2, L20_2)
          L18_2 = GetTurret
          L19_2 = L8_2
          L20_2 = L16_2
          L21_2 = HQ_TOWER2
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L19_2 = Nil
          if L17_2 ~= L19_2 then
            L19_2 = AddInvulnerable
            L20_2 = L17_2
            L19_2(L20_2)
            L19_2 = SetNotTargetableToTeam
            L20_2 = L17_2
            L21_2 = true
            L22_2 = A0_2
            L19_2(L20_2, L21_2, L22_2)
          end
          L19_2 = Nil
          if L18_2 ~= L19_2 then
            L19_2 = AddInvulnerable
            L20_2 = L18_2
            L19_2(L20_2)
            L19_2 = SetNotTargetableToTeam
            L20_2 = L18_2
            L21_2 = true
            L22_2 = A0_2
            L19_2(L20_2, L21_2, L22_2)
          end
        end
      end
    end
  end
end

ApplyBarracksRespawnReductions = L0_1
L0_1 = 0
ReactiveCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationBuildings"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = nil
    L3_2 = ReactiveCounter
    L3_2 = L3_2 + 1
    ReactiveCounter = L3_2
    L3_2 = OppositeTeam
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = GetDampener
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    dampener = L3_2
    L3_2 = RemoveInvulnerable
    L4_2 = dampener
    L3_2(L4_2)
    L3_2 = RemoveUntargetable
    L4_2 = dampener
    L3_2(L4_2)
    L3_2 = ApplyBarracksRespawnReductions
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

BarrackReactiveEvent = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationBuildings"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = nil
    L3_2 = nil
    L4_2 = OppositeTeam
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = TEAM_ORDER
    if A0_2 == L5_2 then
      L5_2 = OrderBarracksBonuses
      L6_2 = A1_2 + 1
      L2_2 = L5_2[L6_2]
      L5_2 = ChaosBarracksBonuses
      L6_2 = A1_2 + 1
      L3_2 = L5_2[L6_2]
    else
      L5_2 = TEAM_CHAOS
      if A0_2 == L5_2 then
        L5_2 = ChaosBarracksBonuses
        L6_2 = A1_2 + 1
        L2_2 = L5_2[L6_2]
        L5_2 = OrderBarracksBonuses
        L6_2 = A1_2 + 1
        L3_2 = L5_2[L6_2]
      end
    end
    if L3_2 then
      L3_2.WillSpawnSuperMinion = 0
    end
  end
end

DisableSuperMinions = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetTurret
  L2_2 = TEAM_ORDER
  L3_2 = 1
  L4_2 = HQ_TOWER1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if A0_2 == 0 then
    L2_2 = ApplyPersistentBuff
    L3_2 = L1_2
    L4_2 = "DebugMidGameBuff"
    L5_2 = false
    L6_2 = 1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = ApplyPersistentBuff
    L3_2 = L1_2
    L4_2 = "DebugLateGameBuff"
    L5_2 = false
    L6_2 = 1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end

OnJumpToMidGameCheat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetTurret
  L1_2 = TEAM_ORDER
  L2_2 = 1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = L0_2
  L3_2 = "DebugEqualizeDragons"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

EqualizeDragonsCheat = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetTurret
  L1_2 = TEAM_ORDER
  L2_2 = 1
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = ApplyPersistentBuff
  L2_2 = L0_2
  L3_2 = "DebugResetPlay"
  L4_2 = false
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

EqualizeResetPlay = L0_1

function L0_1(A0_2)
  local L1_2
  if A0_2 == 0 then
  end
end

OnBarracksToggled = L0_1
L0_1 = 0
DisactivatedCounter = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetIsGameFeatureEnabled
  L2_2 = "RawLSDeprecationBuildings"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    L1_2 = GetHQType
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    HQType = L1_2
    L1_2 = HQType
    L2_2 = ORDER_HQ
    if L1_2 ~= L2_2 then
      L1_2 = HQType
      L2_2 = CHAOS_HQ
      if L1_2 ~= L2_2 then
        goto lbl_56
      end
    end
    L1_2 = SetWorldVar
    L2_2 = "EndOfGame_GameHasEnded"
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = HQType
    L2_2 = CHAOS_HQ
    if L1_2 == L2_2 then
      L1_2 = SetWorldVar
      L2_2 = "EndOfGame_LosingTeam"
      L3_2 = TEAM_CHAOS
      L1_2(L2_2, L3_2)
      L1_2 = EndOfGameCeremony
      L2_2 = TEAM_ORDER
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    else
      L1_2 = SetWorldVar
      L2_2 = "EndOfGame_LosingTeam"
      L3_2 = TEAM_ORDER
      L1_2(L2_2, L3_2)
      L1_2 = EndOfGameCeremony
      L2_2 = TEAM_CHAOS
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
    L1_2 = GetTurret
    L2_2 = TEAM_ORDER
    L3_2 = 1
    L4_2 = 0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = ApplyPersistentBuff
    L3_2 = L1_2
    L4_2 = "EndOfGameTriggers"
    L5_2 = false
    L6_2 = 1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    do return end
    ::lbl_56::
    L1_2 = IsDampener
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetLinkedBarrack
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      barrack = L1_2
      L1_2 = GetTeamID
      L2_2 = barrack
      L1_2 = L1_2(L2_2)
      barrackTeam = L1_2
      L1_2 = GetLane
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      barrackLane = L1_2
      L1_2 = SetLaneExposed
      L2_2 = barrackTeam
      L3_2 = barrackLane
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DisableBarracksSpawn
      L2_2 = barrackLane
      L3_2 = barrackTeam
      L1_2(L2_2, L3_2)
      L1_2 = SetDampenerState
      L2_2 = A0_2
      L3_2 = DampenerRegenerationState
      L1_2(L2_2, L3_2)
      L1_2 = AddInvulnerable
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = AddUntargetable
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = DisactivatedCounter
      L1_2 = L1_2 + 1
      DisactivatedCounter = L1_2
      L1_2 = GetTurret
      L2_2 = barrackTeam
      L3_2 = 1
      L4_2 = HQ_TOWER1
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = GetTurret
      L3_2 = barrackTeam
      L4_2 = 1
      L5_2 = HQ_TOWER2
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = Nil
      if L1_2 ~= L3_2 then
        L3_2 = RemoveInvulnerable
        L4_2 = L1_2
        L3_2(L4_2)
        L3_2 = RemoveUntargetable
        L4_2 = L1_2
        L3_2(L4_2)
      end
      L3_2 = Nil
      if L2_2 ~= L3_2 then
        L3_2 = RemoveInvulnerable
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = RemoveUntargetable
        L4_2 = L2_2
        L3_2(L4_2)
      end
      L3_2 = Nil
      if L1_2 == L3_2 then
        L3_2 = Nil
        if L2_2 == L3_2 then
          L3_2 = GetHQ
          L4_2 = barrackTeam
          L3_2 = L3_2(L4_2)
          L4_2 = RemoveInvulnerable
          L5_2 = L3_2
          L4_2(L5_2)
          L4_2 = RemoveUntargetable
          L5_2 = L3_2
          L4_2(L5_2)
        end
      end
      L3_2 = nil
      L4_2 = barrackTeam
      L5_2 = TEAM_CHAOS
      if L4_2 == L5_2 then
        L3_2 = TEAM_ORDER
      else
        L3_2 = TEAM_CHAOS
      end
      L4_2 = ApplyBarracksDestructionBonuses
      L5_2 = L3_2
      L6_2 = barrackLane
      L4_2(L5_2, L6_2)
    end
    L1_2 = IsTurretAI
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetTeamID
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L2_2 = GetObjectLaneId
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetTurretPosition
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = DeactivateCorrectStructure
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
    L1_2 = GetDampenerType
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if -1 < L1_2 then
      L2_2 = 0
      L3_2 = TEAM_ORDER
      L4_2 = TEAM_CHAOS
      L5_2 = TEAM_CHAOS
      L5_2 = L1_2 % L5_2
      L6_2 = RIGHT_LANE
      if L5_2 >= L6_2 then
        L6_2 = LEFT_LANE
        if L5_2 <= L6_2 then
          L6_2 = ChaosBarracksBonuses
          L7_2 = L5_2 + 1
          L2_2 = L6_2[L7_2]
          L6_2 = ChaosBuildingStatus
          L7_2 = L5_2 + 1
          L6_2 = L6_2[L7_2]
          L6_2.Barracks = false
      end
      else
        L6_2 = TEAM_ORDER
        L5_2 = L5_2 - L6_2
        L3_2 = TEAM_CHAOS
        L4_2 = TEAM_ORDER
        L6_2 = OrderBarracksBonuses
        L7_2 = L5_2 + 1
        L2_2 = L6_2[L7_2]
        L6_2 = OrderBuildingStatus
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L6_2.Barracks = false
      end
    else
      L2_2 = Log
      L3_2 = "Could not find Linking barracks!"
      L2_2(L3_2)
    end
  end
  L1_2 = true
  return L1_2
end

HandleDestroyedObject = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetIsGameFeatureEnabled
  L4_2 = "RawLSDeprecationBuildings"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= true then
    L3_2 = TEAM_ORDER
    if A0_2 == L3_2 then
      L3_2 = LEFT_LANE
      if A1_2 == L3_2 then
        L3_2 = SetWorldVar
        L4_2 = "OrderTopLaneExposed"
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = RIGHT_LANE
        if A1_2 == L3_2 then
          L3_2 = SetWorldVar
          L4_2 = "OrderBotLaneExposed"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = SetWorldVar
          L4_2 = "OrderMidLaneExposed"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    else
      L3_2 = LEFT_LANE
      if A1_2 == L3_2 then
        L3_2 = SetWorldVar
        L4_2 = "ChaosTopLaneExposed"
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = RIGHT_LANE
        if A1_2 == L3_2 then
          L3_2 = SetWorldVar
          L4_2 = "ChaosBotLaneExposed"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = SetWorldVar
          L4_2 = "ChaosMidLaneExposed"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end

SetLaneExposed = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetIsGameFeatureEnabled
  L4_2 = "RawLSDeprecationBuildings"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= true then
    L3_2 = TEAM_ORDER
    if A0_2 == L3_2 then
      L3_2 = LEFT_LANE
      if A1_2 == L3_2 then
        L3_2 = SetWorldVar
        L4_2 = "OrderTopLaneTowerCount"
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = RIGHT_LANE
        if A1_2 == L3_2 then
          L3_2 = SetWorldVar
          L4_2 = "OrderBotLaneTowerCount"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = SetWorldVar
          L4_2 = "OrderMidLaneTowerCount"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    else
      L3_2 = LEFT_LANE
      if A1_2 == L3_2 then
        L3_2 = SetWorldVar
        L4_2 = "ChaosTopLaneTowerCount"
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = RIGHT_LANE
        if A1_2 == L3_2 then
          L3_2 = SetWorldVar
          L4_2 = "ChaosBotLaneTowerCount"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = SetWorldVar
          L4_2 = "ChaosMidLaneTowerCount"
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end

SetLaneTowerCount = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_2
  L0_2 = 1
  CANNON_MINION_SPAWN_DECIDER = L0_2
end

IncreaseCannonMinionSpawnRate = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_2
  L0_2 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_2
end

IncreaseCannonMinionSpawnRateAgain = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = {}
  POST_GAME_EVENTS = L1_2
end

PostGameSetup = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetIsGameFeatureEnabled
  L3_2 = "RawLSDeprecationEoGCeremony"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= true then
    L2_2 = nil
    L3_2 = nil
    L4_2 = pairs
    L5_2 = POST_GAME_EVENTS
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.delay
      if A0_2 > L9_2 then
        L9_2 = ClientSide_CameraMoveCameraFromCurrentPositionToPoint
        L10_2 = L8_2.cameraLocation
        L11_2 = L8_2.travelTime
        L9_2(L10_2, L11_2)
        L9_2 = L8_2.soundFile
        if L9_2 then
          L9_2 = ClientSide_PlaySoundFile
          L10_2 = L8_2.soundFile
          L9_2(L10_2)
        end
        L9_2 = table
        L9_2 = L9_2.remove
        L10_2 = POST_GAME_EVENTS
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
        break
      end
    end
  end
end

PostGameUpdate = L0_1
