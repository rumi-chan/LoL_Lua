local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = DoLuaLevel
L1_1 = "GlobalLevelScript"
L0_1(L1_1)
L0_1 = 15
EVENT_STAGE_WELCOME_TIME = L0_1
L0_1 = 30
EVENT_STAGE_PREANNOUNCE_TIME = L0_1
L0_1 = 120
EVENT_STAGE_MINIONS_SPAWNED_TIME = L0_1
L0_1 = 180
MAX_MINIONS_EVER = L0_1
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 1
ORDER_HQ = L0_1
L0_1 = 2
CHAOS_HQ = L0_1
L0_1 = 3
FRONT_TOWER = L0_1
L0_1 = 1
MID_TOWER = L0_1
L0_1 = 4
BACK_TOWER = L0_1
L0_1 = 5
BACK_TOWER2 = L0_1
L0_1 = 1
CENTER_LANE = L0_1
L0_1 = 45
INITIAL_TIME_TO_SPAWN = L0_1
L0_1 = 2
CANNON_MINION_SPAWN_FREQUENCY = L0_1
L0_1 = 0
MINION_HEALTH_DENIAL_PERCENT = L0_1
L0_1 = 49.99
UPGRADE_MINION_TIMER = L0_1
L0_1 = 6
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = L0_1
L0_1 = 3
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = L0_1
L0_1 = 1400
EXP_GIVEN_RADIUS = L0_1
L0_1 = 1250
GOLD_GIVEN_RADIUS = L0_1
L0_1 = 250
DISABLE_MINION_SPAWN_BASE_TIME = L0_1
L0_1 = 0
DISABLE_MINION_SPAWN_MAG_TIME = L0_1
L0_1 = 11.67
CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_1
L0_1 = 11
ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_1
L0_1 = -1
LAST_WAVE = L0_1
L0_1 = false
HQTurretAttackable = L0_1
L0_1 = 0
UpgradedMinionIterations = L0_1
L0_1 = 1080
MINION_SPAWN_TIME_SCALE_START = L0_1
L0_1 = 1800
MINION_SPAWN_TIME_SCALE_END = L0_1
L0_1 = 25000
TIME_BETWEEN_MINION_WAVES_BASE = L0_1
L0_1 = 13000
TIME_BETWEEN_MINION_WAVES_FINAL = L0_1
L0_1 = 1080
MINION_MOVE_SPEED_INCREASE_START_TIME = L0_1
L0_1 = 60
MINION_MOVE_SPEED_INCREASE_CYCLE_TIME = L0_1
L0_1 = 10
MINION_MOVE_SPEED_INCREASE_AMOUNT = L0_1
L0_1 = 0
MINION_MOVE_SPEED_INCREASE_CURRENT_CYCLE = L0_1
L0_1 = 12
MINION_MOVE_SPEED_INCREASE_MAX_CYCLES = L0_1
L0_1 = {}
L1_1 = TIME_BETWEEN_MINION_WAVES_BASE
L0_1.WaveSpawnRate = L1_1
L0_1.SingleMinionSpawnDelay = 800
L1_1 = EXP_GIVEN_RADIUS
L0_1.ExpRadius = L1_1
L1_1 = GOLD_GIVEN_RADIUS
L0_1.GoldRadius = L1_1
SpawnTable = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 3
L0_1.Armor = 0
L0_1.ArmorUpgrade = 1
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 0.625
L0_1.HPBonus = 0
L0_1.HPUpgrade = 18
L0_1.HPUpgradeGrowth = 0.3
L1_1 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
L1_1 = L1_1 * 2.25
L0_1.HPUpgradeLate = L1_1
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 1
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 64
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 5
L0_1.ExpInhibitor = 0
L0_1.GoldGiven = 19.875
L0_1.GoldBonus = 0
L0_1.GoldUpgrade = 0.125
L0_1.GoldInhibitor = 0
L0_1.GoldShared = 0
L0_1.GoldShareUpgrade = 0
L0_1.GoldMaximumBonus = 12
L0_1.LocalGoldGiven = 0
L0_1.LocalGoldBonus = 0
L0_1.MoveSpeedBaseIncrease = 0
MeleeDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 3
L0_1.Armor = 0
L0_1.ArmorUpgrade = 0.625
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 1
L0_1.HPBonus = 0
L0_1.HPUpgrade = 6
L0_1.HPUpgradeGrowth = 0
L1_1 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
L1_1 = L1_1 * 0.75
L0_1.HPUpgradeLate = L1_1
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 2
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 32
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 3
L0_1.ExpInhibitor = 0
L0_1.GoldGiven = 16.875
L0_1.GoldBonus = 0
L0_1.GoldUpgrade = 0
L0_1.GoldInhibitor = 0
L0_1.GoldShared = 0
L0_1.GoldShareUpgrade = 0
L0_1.GoldMaximumBonus = 8
L0_1.LocalGoldGiven = 0
L0_1.LocalGoldBonus = 0
L0_1.MoveSpeedBaseIncrease = 0
CasterDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 0
L0_1.Armor = 0
L0_1.ArmorUpgrade = 1.5
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 1.5
L0_1.HPBonus = 0
L0_1.HPUpgrade = 23
L0_1.HPUpgradeGrowth = 0.3
L1_1 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
L1_1 = L1_1 * 3
L0_1.HPUpgradeLate = L1_1
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 1.5
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 100
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 0
L0_1.ExpInhibitor = 0
L0_1.GoldGiven = 44.65
L0_1.GoldBonus = 0
L0_1.GoldUpgrade = 0.35
L0_1.GoldInhibitor = 0
L0_1.GoldShared = 0
L0_1.GoldShareUpgrade = 0
L0_1.GoldMaximumBonus = 30
L0_1.LocalGoldGiven = 0
L0_1.LocalGoldBonus = 0
L0_1.MoveSpeedBaseIncrease = 0
CannonDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 0
L0_1.Armor = 0
L0_1.ArmorUpgrade = 0
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 0
L0_1.HPBonus = 0
L0_1.HPUpgrade = 100
L0_1.HPUpgradeGrowth = 0
L0_1.HPUpgradeLate = 0
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 5
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 100
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 0
L0_1.ExpInhibitor = 0
L0_1.GoldGiven = 44.65
L0_1.GoldBonus = 0
L0_1.GoldUpgrade = 0.35
L0_1.GoldInhibitor = 0
L0_1.GoldShared = 0
L0_1.GoldShareUpgrade = 0
L0_1.GoldMaximumBonus = 30
L0_1.LocalGoldGiven = 0
L0_1.LocalGoldBonus = 0
L0_1.MoveSpeedBaseIncrease = 0
SuperDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_OrderMinionMelee"
L1_1 = MeleeDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderMeleeMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_ChaosMinionMelee"
L1_1 = MeleeDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosMeleeMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_OrderMinionRanged"
L1_1 = CasterDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderCasterMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_ChaosMinionRanged"
L1_1 = CasterDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosCasterMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_OrderMinionSiege"
L1_1 = CannonDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderCannonMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_ChaosMinionSiege"
L1_1 = CannonDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosCannonMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_OrderMinionSuper"
L1_1 = SuperDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderSuperMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "HA_ChaosMinionSuper"
L1_1 = SuperDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosSuperMinionInfo = L0_1
L0_1 = {}
L0_1.IsDestroyed = false
L0_1.NumOfSpawnDisables = 0
L0_1.WillSpawnSuperMinion = 0
L1_1 = {}
L2_1 = "Super"
L3_1 = "Melee"
L4_1 = "Cannon"
L5_1 = "Caster"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.SpawnOrderMinionNames = L1_1
DefaultBarrackInfo = L0_1
L0_1 = {}
L1_1 = OrderMeleeMinionInfo
L0_1.Melee = L1_1
L1_1 = OrderCasterMinionInfo
L0_1.Caster = L1_1
L1_1 = OrderCannonMinionInfo
L0_1.Cannon = L1_1
L1_1 = OrderSuperMinionInfo
L0_1.Super = L1_1
DefaultOrderMinionInfoTable = L0_1
L0_1 = {}
L1_1 = ChaosMeleeMinionInfo
L0_1.Melee = L1_1
L1_1 = ChaosCasterMinionInfo
L0_1.Caster = L1_1
L1_1 = ChaosCannonMinionInfo
L0_1.Cannon = L1_1
L1_1 = ChaosSuperMinionInfo
L0_1.Super = L1_1
DefaultChaosMinionInfoTable = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultOrderMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
OrderBarrack0 = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultOrderMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
OrderBarrack1 = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultOrderMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
OrderBarrack2 = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultChaosMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
ChaosBarrack0 = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultChaosMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
ChaosBarrack1 = L0_1
L0_1 = {}
L1_1 = DefaultBarrackInfo
L0_1.DefaultInfo = L1_1
L1_1 = DefaultChaosMinionInfoTable
L0_1.DefaultMinionInfoTable = L1_1
ChaosBarrack2 = L0_1

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
L1_1 = InitBarrackInfo
L2_1 = OrderBarrack0
L1_1 = L1_1(L2_1)
L2_1 = InitBarrackInfo
L3_1 = OrderBarrack1
L2_1 = L2_1(L3_1)
L3_1 = InitBarrackInfo
L4_1 = OrderBarrack2
L3_1, L4_1, L5_1 = L3_1(L4_1)
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
OrderBarracksBonuses = L0_1
L0_1 = {}
L1_1 = InitBarrackInfo
L2_1 = ChaosBarrack0
L1_1 = L1_1(L2_1)
L2_1 = InitBarrackInfo
L3_1 = ChaosBarrack1
L2_1 = L2_1(L3_1)
L3_1 = InitBarrackInfo
L4_1 = ChaosBarrack2
L3_1, L4_1, L5_1 = L3_1(L4_1)
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
ChaosBarracksBonuses = L0_1
L0_1 = {}
L0_1.Turret4 = true
L0_1.Turret3 = true
L0_1.Turret2 = true
L0_1.Turret1 = true
L0_1.Barracks = true
L0_1.HQ = true
OrderBuildingStatus = L0_1
L0_1 = {}
L0_1.Turret4 = true
L0_1.Turret3 = true
L0_1.Turret2 = true
L0_1.Turret1 = true
L0_1.Barracks = true
L0_1.HQ = true
ChaosBuildingStatus = L0_1
L0_1 = 0
TotalNumberOfMinions = L0_1

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

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = PreloadSpell
  L4_2 = "ExpirationTimer"
  L3_2(L4_2)
  L3_2 = PreloadSpell
  L4_2 = "SpellShieldMarker"
  L3_2(L4_2)
  L3_2 = PreloadCharacter
  L4_2 = "TestCubeRender"
  L3_2(L4_2)
  L3_2 = pairs
  L4_2 = OrderBarracksBonuses
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = PreloadBarrackCharacters
    L9_2 = L7_2
    L8_2(L9_2)
  end
  L3_2 = pairs
  L4_2 = ChaosBarracksBonuses
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = PreloadBarrackCharacters
    L9_2 = L7_2
    L8_2(L9_2)
  end
  L3_2 = SpawnTable
  L4_2 = TIME_BETWEEN_MINION_WAVES_BASE
  L3_2.WaveSpawnRate = L4_2
  L3_2 = SpawnTable
  L3_2.SingleMinionSpawnDelay = 800
  L3_2 = GetGameMode
  L3_2 = L3_2()
  if L3_2 == "FIRSTBLOOD" then
    L4_2 = {}
    L4_2.ExpGiven = 64
    L4_2.GoldGiven = 19.75
    L4_2.GoldUpgrade = 0.25
    L4_2.HPUpgrade = 10
    L4_2.DamageUpgrade = 0.5
    L4_2.ExpUpgrade = 2
    L4_2.ArmorUpgrade = 1
    L4_2.MagicResistanceUpgrade = 0.625
    L4_2.GoldMaximumBonus = 12
    L5_2 = {}
    L5_2.ExpGiven = 32
    L5_2.GoldGiven = 14.75
    L5_2.GoldUpgrade = 0.25
    L5_2.HPUpgrade = 7.5
    L5_2.DamageUpgrade = 1
    L5_2.ExpUpgrade = 1.2
    L5_2.ArmorUpgrade = 0.625
    L5_2.MagicResistanceUpgrade = 1
    L5_2.GoldMaximumBonus = 8
    L6_2 = {}
    L6_2.ExpGiven = 100
    L6_2.GoldGiven = 39.5
    L6_2.GoldUpgrade = 0.5
    L6_2.HPUpgrade = 10
    L6_2.DamageUpgrade = 1.5
    L6_2.ExpUpgrade = 3
    L6_2.ArmorUpgrade = 1.5
    L6_2.MagicResistanceUpgrade = 1.5
    L6_2.GoldMaximumBonus = 30
    L7_2 = {}
    L7_2.ExpGiven = 100
    L7_2.GoldGiven = 27
    L7_2.GoldUpgrade = 0
    L7_2.HPUpgrade = 100
    L7_2.DamageUpgrade = 5
    L7_2.ExpUpgrade = 0
    L7_2.ArmorUpgrade = 0
    L7_2.MagicResistanceUpgrade = 0
    L7_2.GoldMaximumBonus = 30
    L8_2 = {}
    L8_2.Melee = L4_2
    L8_2.Caster = L5_2
    L8_2.Cannon = L6_2
    L8_2.Super = L7_2
    L9_2 = pairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = OrderBarracksBonuses
      L14_2 = L14_2[1]
      L14_2 = L14_2.MinionInfoTable
      L14_2 = L14_2[L12_2]
      L15_2 = ChaosBarracksBonuses
      L15_2 = L15_2[1]
      L15_2 = L15_2.MinionInfoTable
      L15_2 = L15_2[L12_2]
      L16_2 = nil
      L17_2 = nil
      L18_2 = pairs
      L19_2 = L13_2
      L18_2, L19_2, L20_2 = L18_2(L19_2)
      for L21_2, L22_2 in L18_2, L19_2, L20_2 do
        L14_2[L21_2] = L22_2
        L15_2[L21_2] = L22_2
      end
    end
    L9_2 = 45
    INITIAL_TIME_TO_SPAWN = L9_2
    L9_2 = 90
    UPGRADE_MINION_TIMER = L9_2
  end
  if L3_2 == "TUTORIAL" then
    L4_2 = PreloadCharacter
    L5_2 = "OrderTurretTutorial"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "ChaosTurretTutorial"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "Tutorial_Red_Minion_Wizard"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "Dragon"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Poro"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_PoroSpawner"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "Waypoint"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "DisableHPRegen"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "Flee"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAcceleration"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAction"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroCooldown"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAnimation1"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialPhase2"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialPhase3"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialPhase4"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialMinionBuff"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialNearSight"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialPlayerBuff"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialPlayerBuff2"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialShoppingTime"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "TutorialShoppingTime2"
    L4_2(L5_2)
    L4_2 = -90000000
    INITIAL_TIME_TO_SPAWN = L4_2
    L4_2 = SpawnTable
    L4_2.NumOfMeleeMinionsPerWave = 0
    L4_2 = SpawnTable
    L4_2.NumOfCasterMinionsPerWave = 0
  else
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_BannerMidBridge"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_BridgeLaneStatue"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Chains"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Chains_Long"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_ChaosTurret"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_ChaosTurret2"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_ChaosTurret3"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_ChaosTurretShrine"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Cutaway"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Hermit"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_HeroTower"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_OrderTurret"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_OrderTurret2"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_OrderTurret3"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Poro"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_PoroSpawner"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_ShpSouth"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "HA_AP_Viking"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssAura"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssDamageTracker"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssDamageTrackerB"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAcceleration"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAction"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroAnimation1"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssPoroCooldown"
    L4_2(L5_2)
    L4_2 = PreloadSpell
    L5_2 = "HowlingAbyssTurretHighWind"
    L4_2(L5_2)
    if L3_2 == "FIRSTBLOOD" then
      L4_2 = PreloadCharacter
      L5_2 = "HA_FB_HealthRelic"
      L4_2(L5_2)
      L4_2 = PreloadSpell
      L5_2 = "HowlingAbyssRelicAuraFB"
      L4_2(L5_2)
      L4_2 = PreloadSpell
      L5_2 = "HowlingAbyssFBHeal"
      L4_2(L5_2)
      L4_2 = PreloadSpell
      L5_2 = "HowlingAbyssFBDefeat"
      L4_2(L5_2)
      L4_2 = PreloadSpell
      L5_2 = "HowlingAbyssFBVictory"
      L4_2(L5_2)
    end
    L4_2 = PreloadCharacter
    L5_2 = "SpellBook1"
    L4_2(L5_2)
    L4_2 = PreloadCharacter
    L5_2 = "TestCube"
    L4_2(L5_2)
    L4_2 = SpawnTable
    L4_2.NumOfMeleeMinionsPerWave = 3
    L4_2 = SpawnTable
    L4_2.NumOfCasterMinionsPerWave = 3
    L4_2 = GetMutatorParameterString
    L5_2 = "NeutralMinionSpawnScript"
    L4_2 = L4_2(L5_2)
    L5_2 = LoadLevelScriptIntoScript
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = NeutralMinionInit
    L5_2()
  end
  L4_2 = PreloadSpell
  L5_2 = "RespawnClassic"
  L4_2(L5_2)
end

OnLevelInit = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetGameMode
  L0_2 = L0_2()
  if L0_2 == "TUTORIAL" then
    L1_2 = InitTimer
    L2_2 = "PlaceTutorialSpawnRunes"
    L3_2 = 1
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = InitTimer
    L2_2 = "UpgradeMinionTimer"
    L3_2 = UPGRADE_MINION_TIMER
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = InitTimer
    L2_2 = "UpgradeMinionMovementSpeedTimer"
    L3_2 = MINION_MOVE_SPEED_INCREASE_START_TIME
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = InitTimer
    L2_2 = "AllowDamageOnBuildings"
    L3_2 = 10
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end

OnLevelInitServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = LoadLevelScriptIntoScript
  L1_2 = "CreateLevelProps.lua"
  L0_2(L1_2)
  L0_2 = GetGameMode
  L0_2 = L0_2()
  if L0_2 == "TUTORIAL" then
    L1_2 = CreateLevelPropsTutorial
    L1_2()
  else
    L1_2 = CreateLevelProps
    L1_2()
    L1_2 = RIGHT_LANE
    L2_2 = LEFT_LANE
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = GetDampener
      L6_2 = TEAM_ORDER
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = SetDampenerRespawnAnimationDuration
      L7_2 = L5_2
      L8_2 = ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION
      L6_2(L7_2, L8_2)
      L6_2 = GetDampener
      L7_2 = TEAM_CHAOS
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
      L6_2 = SetDampenerRespawnAnimationDuration
      L7_2 = L5_2
      L8_2 = CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION
      L6_2(L7_2, L8_2)
      L6_2 = SetLaneExposed
      L7_2 = TEAM_ORDER
      L8_2 = L4_2
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetLaneExposed
      L7_2 = TEAM_CHAOS
      L8_2 = L4_2
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetLaneTowerCount
      L7_2 = TEAM_ORDER
      L8_2 = L4_2
      L9_2 = 3
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetLaneTowerCount
      L7_2 = TEAM_CHAOS
      L8_2 = L4_2
      L9_2 = 3
      L6_2(L7_2, L8_2, L9_2)
    end
    L1_2 = SetShieldBuffsOnSecondaryTurrets
    L2_2 = TEAM_ORDER
    L1_2(L2_2)
    L1_2 = SetShieldBuffsOnSecondaryTurrets
    L2_2 = TEAM_CHAOS
    L1_2(L2_2)
    L1_2 = SetWorldVar
    L2_2 = "UpgradedMinionIterations"
    L3_2 = UpgradedMinionIterations
    L1_2(L2_2, L3_2)
    L1_2 = SetWorldVar
    L2_2 = "UpgradeMinionIterationsForLateScaling"
    L3_2 = UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING
    L1_2(L2_2, L3_2)
    L1_2 = SetWorldVar
    L2_2 = "TowerDamagePerUpgradeMinionIteration"
    L3_2 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
    L1_2(L2_2, L3_2)
  end
end

OnPostLevelLoad = L0_1

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
  L0_2 = MINION_MOVE_SPEED_INCREASE_CURRENT_CYCLE
  L1_2 = MINION_MOVE_SPEED_INCREASE_MAX_CYCLES
  if L0_2 < L1_2 then
    L0_2 = MINION_MOVE_SPEED_INCREASE_CURRENT_CYCLE
    L0_2 = L0_2 + 1
    MINION_MOVE_SPEED_INCREASE_CURRENT_CYCLE = L0_2
    L0_2 = InitTimer
    L1_2 = "UpgradeMinionMovementSpeedTimer"
    L2_2 = MINION_MOVE_SPEED_INCREASE_CYCLE_TIME
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
  end
end

UpgradeMinionMovementSpeedTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = CENTER_LANE
  L1_2 = FRONT_TOWER
  L2_2 = BACK_TOWER2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = GetTurret
    L6_2 = TEAM_ORDER
    L7_2 = L0_2
    L8_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 ~= nil then
      L6_2 = FRONT_TOWER
      if L4_2 == L6_2 then
        L6_2 = RemoveInvulnerable
        L7_2 = L5_2
        L6_2(L7_2)
        L6_2 = RemoveUntargetable
        L7_2 = L5_2
        L6_2(L7_2)
      else
        L6_2 = AddInvulnerable
        L7_2 = L5_2
        L6_2(L7_2)
        L6_2 = SetNotTargetableToTeam
        L7_2 = L5_2
        L8_2 = true
        L9_2 = TEAM_CHAOS
        L6_2(L7_2, L8_2, L9_2)
      end
    else
    end
    L6_2 = GetTurret
    L7_2 = TEAM_CHAOS
    L8_2 = L0_2
    L9_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 ~= nil then
      L7_2 = FRONT_TOWER
      if L4_2 == L7_2 then
        L7_2 = RemoveInvulnerable
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = RemoveUntargetable
        L8_2 = L6_2
        L7_2(L8_2)
      else
        L7_2 = AddInvulnerable
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = SetNotTargetableToTeam
        L8_2 = L6_2
        L9_2 = true
        L10_2 = TEAM_ORDER
        L7_2(L8_2, L9_2, L10_2)
      end
    else
    end
  end
end

AllowDamageOnBuildings = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.DefaultNumPerWave
    L7_2.NumPerWave = L8_2
  end
end

ResetToDefaultWaveCounts = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L7_2.NumPerWave = 0
  end
end

ClearCurrentWaveCounts = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
end

GetInitSpawnInfo = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = TEAM_ORDER
  if A3_2 == L7_2 then
    L7_2 = OrderBarracksBonuses
    L5_2 = L7_2[1]
    L6_2 = 1
  else
    L7_2 = ChaosBarracksBonuses
    L5_2 = L7_2[1]
    L6_2 = 0
  end
  L7_2 = L5_2.MinionInfoTable
  L7_2 = L7_2.Melee
  L8_2 = L5_2.MinionInfoTable
  L8_2 = L8_2.Caster
  L9_2 = L5_2.MinionInfoTable
  L9_2 = L9_2.Super
  L10_2 = L5_2.MinionInfoTable
  L10_2 = L10_2.Cannon
  L11_2 = ResetToDefaultWaveCounts
  L12_2 = L5_2.MinionInfoTable
  L11_2(L12_2)
  L11_2 = A1_2 + 1
  L11_2 = L11_2 + L6_2
  L12_2 = CANNON_MINION_SPAWN_FREQUENCY
  L11_2 = L11_2 % L12_2
  if L11_2 == 0 and A1_2 ~= 1 then
    L11_2 = L10_2.NumPerWave
    L11_2 = L11_2 + 1
    L10_2.NumPerWave = L11_2
  end
  L11_2 = LAST_WAVE
  if A4_2 ~= L11_2 then
    L11_2 = 6
    BARRACKSCOUNT = L11_2
    L11_2 = MAX_MINIONS_EVER
    L12_2 = GetTotalTeamMinionsSpawned
    L12_2 = L12_2()
    L11_2 = L11_2 - L12_2
    totalMinionsRemaining = L11_2
    LAST_WAVE = A4_2
  end
  L11_2 = L5_2.WillSpawnSuperMinion
  if L11_2 == 1 then
    L9_2.NumPerWave = 1
    L10_2.NumPerWave = 0
  end
  L11_2 = GetGameTime
  L11_2 = L11_2()
  L12_2 = TIME_BETWEEN_MINION_WAVES_BASE
  L13_2 = MINION_SPAWN_TIME_SCALE_END
  if L11_2 >= L13_2 then
    L12_2 = TIME_BETWEEN_MINION_WAVES_FINAL
  else
    L13_2 = MINION_SPAWN_TIME_SCALE_START
    if L11_2 >= L13_2 then
      L13_2 = MINION_SPAWN_TIME_SCALE_START
      L13_2 = L11_2 - L13_2
      L14_2 = MINION_SPAWN_TIME_SCALE_END
      L15_2 = MINION_SPAWN_TIME_SCALE_START
      L14_2 = L14_2 - L15_2
      L13_2 = L13_2 / L14_2
      L14_2 = TIME_BETWEEN_MINION_WAVES_FINAL
      L15_2 = TIME_BETWEEN_MINION_WAVES_BASE
      L14_2 = L14_2 - L15_2
      L14_2 = L14_2 * L13_2
      L15_2 = TIME_BETWEEN_MINION_WAVES_BASE
      L12_2 = L14_2 + L15_2
    end
  end
  L13_2 = SpawnTable
  L13_2.WaveSpawnRateOverride = L12_2
  L13_2 = MINION_MOVE_SPEED_INCREASE_AMOUNT
  L14_2 = MINION_MOVE_SPEED_INCREASE_CURRENT_CYCLE
  L13_2 = L13_2 * L14_2
  L7_2.MoveSpeedBaseIncrease = L13_2
  L8_2.MoveSpeedBaseIncrease = L13_2
  L10_2.MoveSpeedBaseIncrease = L13_2
  L9_2.MoveSpeedBaseIncrease = L13_2
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
  L15_2 = SpawnTable
  L15_2 = L15_2.WaveSpawnRateOverride
  L14_2.WaveSpawnRateOverride = L15_2
  L15_2 = L5_2.MinionInfoTable
  L14_2.MinionInfoTable = L15_2
  ReturnTable = L14_2
  L14_2 = ReturnTable
  return L14_2
end

GetMinionSpawnInfo = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
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
        L19_2 = L16_2.Armor
        L16_2.Armor = L19_2
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

UpgradeMinionTimer = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = GetGameMode
  L4_2 = L4_2()
  if L4_2 ~= "TUTORIAL" then
    L4_2 = TEAM_ORDER
    if A0_2 == L4_2 then
      L3_2 = OrderBuildingStatus
    else
      L3_2 = ChaosBuildingStatus
    end
    L4_2 = FRONT_TOWER
    if A2_2 == L4_2 then
      L3_2.Turret4 = false
      L4_2 = GetTurret
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = MID_TOWER
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = RemoveInvulnerable
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = RemoveUntargetable
      L6_2 = L4_2
      L5_2(L6_2)
    else
      L4_2 = MID_TOWER
      if A2_2 == L4_2 then
        L3_2.Turret3 = false
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
      else
        L4_2 = BACK_TOWER
        if A2_2 ~= L4_2 then
          L4_2 = BACK_TOWER2
          if A2_2 ~= L4_2 then
            goto lbl_69
          end
        end
        L4_2 = BACK_TOWER
        if A2_2 == L4_2 then
          L3_2.Turret2 = false
        else
          L3_2.Turret1 = false
        end
        L4_2 = L3_2.Turret1
        if L4_2 == false then
          L4_2 = L3_2.Turret2
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
  ::lbl_69::
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
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetLuaBarracks
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  barrack = L2_2
  L2_2 = nil
  L3_2 = DISABLE_MINION_SPAWN_BASE_TIME
  L4_2 = DISABLE_MINION_SPAWN_MAG_TIME
  L5_2 = barrack
  L5_2 = L5_2.NumOfSpawnDisables
  L4_2 = L4_2 * L5_2
  L2_2 = L3_2 + L4_2
  return L2_2
end

GetDisableMinionSpawnTime = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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

DisableBarracksSpawn = L0_1
L0_1 = 0
BonusesCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = BonusesCounter
  L2_2 = L2_2 + 1
  BonusesCounter = L2_2
  L2_2 = 1
  L3_2 = nil
  L4_2 = TEAM_ORDER
  if A0_2 == L4_2 then
    L3_2 = OrderBarracksBonuses
  else
    L3_2 = ChaosBarracksBonuses
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = L3_2[L2_2]
  L6_2 = L6_2.MinionInfoTable
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.HPBonus
    L13_2 = L11_2.HPInhibitor
    L12_2 = L12_2 + L13_2
    L11_2.HPBonus = L12_2
    L12_2 = L11_2.DamageBonus
    L13_2 = L11_2.DamageInhibitor
    L12_2 = L12_2 + L13_2
    L11_2.DamageBonus = L12_2
    L12_2 = L11_2.ExpGiven
    L13_2 = L11_2.ExpInhibitor
    L12_2 = L12_2 - L13_2
    L11_2.ExpGiven = L12_2
    L12_2 = L11_2.GoldGiven
    L13_2 = L11_2.GoldInhibitor
    L12_2 = L12_2 - L13_2
    L11_2.GoldGiven = L12_2
  end
  L7_2 = L3_2[L2_2]
  L7_2.WillSpawnSuperMinion = 1
end

ApplyBarracksDestructionBonuses = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Log
  L3_2 = "Inhibitor respawn, barrack ID is: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = CENTER_LANE
  L3_2 = nil
  L4_2 = TEAM_ORDER
  if A0_2 == L4_2 then
    L3_2 = OrderBarracksBonuses
  else
    L3_2 = ChaosBarracksBonuses
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = L3_2[L2_2]
  L6_2 = L6_2.MinionInfoTable
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.HPBonus
    L13_2 = L11_2.HPInhibitor
    L12_2 = L12_2 - L13_2
    L11_2.HPBonus = L12_2
    L12_2 = L11_2.DamageBonus
    L13_2 = L11_2.DamageInhibitor
    L12_2 = L12_2 - L13_2
    L11_2.DamageBonus = L12_2
    L12_2 = L11_2.ExpGiven
    L13_2 = L11_2.ExpInhibitor
    L12_2 = L12_2 + L13_2
    L11_2.ExpGiven = L12_2
    L12_2 = L11_2.GoldGiven
    L13_2 = L11_2.GoldInhibitor
    L12_2 = L12_2 + L13_2
    L11_2.GoldGiven = L12_2
  end
  L7_2 = L3_2[L2_2]
  L7_2.WillSpawnSuperMinion = 0
  L7_2 = TEAM_ORDER
  if A0_2 == L7_2 then
    L7_2 = GetHQ
    L8_2 = TEAM_CHAOS
    L7_2 = L7_2(L8_2)
    L8_2 = AddInvulnerable
    L9_2 = L7_2
    L8_2(L9_2)
    L8_2 = AddUntargetable
    L9_2 = L7_2
    L8_2(L9_2)
    L8_2 = GetTurret
    L9_2 = TEAM_CHAOS
    L10_2 = L2_2
    L11_2 = BACK_TOWER
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = GetTurret
    L10_2 = TEAM_CHAOS
    L11_2 = L2_2
    L12_2 = BACK_TOWER2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = Nil
    if L8_2 ~= L10_2 then
      L10_2 = AddInvulnerable
      L11_2 = L8_2
      L10_2(L11_2)
      L10_2 = SetNotTargetableToTeam
      L11_2 = L8_2
      L12_2 = true
      L13_2 = A0_2
      L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = Nil
    if L9_2 ~= L10_2 then
      L10_2 = AddInvulnerable
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = SetNotTargetableToTeam
      L11_2 = L9_2
      L12_2 = true
      L13_2 = A0_2
      L10_2(L11_2, L12_2, L13_2)
    end
  else
    L7_2 = TEAM_CHAOS
    if A0_2 == L7_2 then
      L7_2 = GetHQ
      L8_2 = TEAM_ORDER
      L7_2 = L7_2(L8_2)
      L8_2 = AddInvulnerable
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = AddUntargetable
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = GetTurret
      L9_2 = TEAM_ORDER
      L10_2 = L2_2
      L11_2 = BACK_TOWER
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = GetTurret
      L10_2 = TEAM_ORDER
      L11_2 = L2_2
      L12_2 = BACK_TOWER2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = Nil
      if L8_2 ~= L10_2 then
        L10_2 = AddInvulnerable
        L11_2 = L8_2
        L10_2(L11_2)
        L10_2 = SetNotTargetableToTeam
        L11_2 = L8_2
        L12_2 = true
        L13_2 = A0_2
        L10_2(L11_2, L12_2, L13_2)
      end
      L10_2 = Nil
      if L9_2 ~= L10_2 then
        L10_2 = AddInvulnerable
        L11_2 = L9_2
        L10_2(L11_2)
        L10_2 = SetNotTargetableToTeam
        L11_2 = L9_2
        L12_2 = true
        L13_2 = A0_2
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end

ApplyBarracksRespawnReductions = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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

BarrackReactiveEvent = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
      goto lbl_27
    end
  end
  L1_2 = HQType
  L2_2 = CHAOS_HQ
  if L1_2 == L2_2 then
    L1_2 = EndOfGameCeremony
    L2_2 = TEAM_ORDER
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = EndOfGameCeremony
    L2_2 = TEAM_CHAOS
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
  do return end
  ::lbl_27::
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
    L1_2 = GetGameMode
    L1_2 = L1_2()
    if L1_2 == "TUTORIAL" then
      L1_2 = GetHQ
      L2_2 = Team
      L1_2 = L1_2(L2_2)
      L2_2 = RemoveInvulnerable
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = RemoveUntargetable
      L3_2 = L1_2
      L2_2(L3_2)
    else
      L1_2 = GetTurret
      L2_2 = barrackTeam
      L3_2 = barrackLane
      L4_2 = BACK_TOWER
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = GetTurret
      L3_2 = barrackTeam
      L4_2 = barrackLane
      L5_2 = BACK_TOWER2
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
    end
    L1_2 = nil
    L2_2 = barrackTeam
    L3_2 = TEAM_CHAOS
    if L2_2 == L3_2 then
      L1_2 = TEAM_ORDER
    else
      L1_2 = TEAM_CHAOS
    end
    L2_2 = ApplyBarracksDestructionBonuses
    L3_2 = L1_2
    L4_2 = barrackLane
    L2_2(L3_2, L4_2)
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
    L6_2 = CENTER_LANE
    if L5_2 == L6_2 then
      L6_2 = ChaosBarracksBonuses
      L7_2 = L5_2 + 1
      L2_2 = L6_2[L7_2]
      L6_2 = ChaosBuildingStatus
      L6_2.Barracks = false
    else
      L6_2 = TEAM_ORDER
      L5_2 = L5_2 - L6_2
      L3_2 = TEAM_CHAOS
      L4_2 = TEAM_ORDER
      L6_2 = OrderBarracksBonuses
      L7_2 = L5_2 + 1
      L2_2 = L6_2[L7_2]
      L6_2 = OrderBuildingStatus
      L6_2.Barracks = false
    end
  else
    L2_2 = Log
    L3_2 = "Could not find Linking barracks!"
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end

HandleDestroyedObject = L0_1
L0_1 = 0
TEAM_UNKNOWN = L0_1
L0_1 = 3
EOG_PAN_TO_NEXUS_TIME = L0_1
L0_1 = EOG_PAN_TO_NEXUS_TIME
L0_1 = L0_1 + 0.5
EOG_NEXUS_EXPLOSION_TIME = L0_1
L0_1 = 1.2
EOG_SCOREBOARD_PHASE_DELAY_TIME = L0_1
L0_1 = 10
EOG_NEXUS_REVIVE_TIME = L0_1
L0_1 = 0
EOG_ALIVE_NEXUS_SKIN = L0_1
L0_1 = 1
EOG_DESTROYED_NEXUS_SKIN = L0_1
L0_1 = 0
EOG_MINION_FADE_AMOUNT = L0_1
L0_1 = 2
EOG_MINION_FADE_TIME = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetHQ
  L3_2 = TEAM_ORDER
  L2_2 = L2_2(L3_2)
  orderHQ = L2_2
  L2_2 = AddInvulnerable
  L3_2 = orderHQ
  L2_2(L3_2)
  L2_2 = AddUntargetable
  L3_2 = orderHQ
  L2_2(L3_2)
  L2_2 = SetBuildingHealthRegenEnabled
  L3_2 = orderHQ
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = GetHQ
  L3_2 = TEAM_CHAOS
  L2_2 = L2_2(L3_2)
  chaosHQ = L2_2
  L2_2 = AddInvulnerable
  L3_2 = chaosHQ
  L2_2(L3_2)
  L2_2 = AddUntargetable
  L3_2 = chaosHQ
  L2_2(L3_2)
  L2_2 = SetBuildingHealthRegenEnabled
  L3_2 = chaosHQ
  L4_2 = false
  L2_2(L3_2, L4_2)
  winningTeam = A0_2
  L2_2 = winningTeam
  L3_2 = TEAM_ORDER
  if L2_2 == L3_2 then
    L2_2 = TEAM_CHAOS
    losingTeam = L2_2
    L2_2 = GetPosition
    L3_2 = chaosHQ
    L2_2 = L2_2(L3_2)
    losingHQPosition = L2_2
    L2_2 = GetPosition
    L3_2 = orderHQ
    L2_2 = L2_2(L3_2)
    winningHQPosition = L2_2
  else
    L2_2 = TEAM_ORDER
    losingTeam = L2_2
    L2_2 = GetPosition
    L3_2 = orderHQ
    L2_2 = L2_2(L3_2)
    losingHQPosition = L2_2
    L2_2 = GetPosition
    L3_2 = chaosHQ
    L2_2 = L2_2(L3_2)
    winningHQPosition = L2_2
  end
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_CAMERA_LOCKING
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_CAMERA_MOVEMENT
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_ABILITIES
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_SUMMONER_SPELLS
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_MOVEMENT
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_SHOP
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetInputLockForAllClients
  L3_2 = INPUT_LOCK_MINIMAP_MOVEMENT
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = DisableHUDForEndOfGame
  L2_2()
  L2_2 = SetBarracksSpawnEnabled
  L3_2 = false
  L2_2(L3_2)
  L2_2 = CloseShop
  L2_2()
  L2_2 = HaltAllAI
  L2_2()
  L2_2 = LuaForEachChampion
  L3_2 = TEAM_UNKNOWN
  L4_2 = "ChampionEoGCeremony"
  L2_2(L3_2, L4_2)
  L2_2 = Log
  L3_2 = "Destroy Nexus Called"
  L2_2(L3_2)
  L2_2 = InitTimer
  L3_2 = "DestroyNexusPhase"
  L4_2 = EOG_NEXUS_EXPLOSION_TIME
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetWinningTeam
  L3_2 = winningTeam
  L2_2(L3_2)
end

EndOfGameCeremony = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = MoveCameraFromCurrentPositionToPoint
  L2_2 = A0_2
  L3_2 = losingHQPosition
  L4_2 = EOG_PAN_TO_NEXUS_TIME
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetGreyscaleEnabledWhenDead
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end

ChampionEoGCeremony = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetEoGUseNexusDeathAnimation
  L0_2 = L0_2()
  if L0_2 == false then
    L0_2 = SetHQCurrentSkin
    L1_2 = losingTeam
    L2_2 = EOG_DESTROYED_NEXUS_SKIN
    L0_2(L1_2, L2_2)
  end
  L0_2 = FadeMinions
  L1_2 = losingTeam
  L2_2 = EOG_MINION_FADE_AMOUNT
  L3_2 = EOG_MINION_FADE_TIME
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "StopRenderingMinionsPhase"
  L2_2 = EOG_MINION_FADE_TIME
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "ScoreboardPhase"
  L2_2 = EOG_SCOREBOARD_PHASE_DELAY_TIME
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Log
  L1_2 = "Destroy Nexus Reached"
  L0_2(L1_2)
end

DestroyNexusPhase = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetMinionsNoRender
  L1_2 = losingTeam
  L2_2 = true
  L0_2(L1_2, L2_2)
end

StopRenderingMinionsPhase = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = Log
  L1_2 = "Scoreboard reached."
  L0_2(L1_2)
  L0_2 = SetInputLockForAllClients
  L1_2 = INPUT_LOCK_CHAT
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = EndGame
  L0_2()
end

ScoreboardPhase = L0_1
L0_1 = 20
EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY = L0_1
L0_1 = 154
EOG_EASTER_EGG_CAMERA_PATH_TIME = L0_1
L0_1 = 4
EOG_EASTER_EGG_MUSIC_FADE_TIME = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetGameMode
  L1_2 = L1_2()
  if L1_2 ~= "ARAM" then
    return
  end
  L2_2 = Make3DPoint
  L3_2 = 2586
  L4_2 = 0
  L5_2 = 1986
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Make3DPoint
  L4_2 = 10702
  L5_2 = 0
  L6_2 = 10193
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L5_2 = Make3DPoint
  L6_2 = 5700
  L7_2 = 0
  L8_2 = 6900
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = Make3DPoint
  L7_2 = 2500
  L8_2 = 0
  L9_2 = 2000
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = Make3DPoint
  L8_2 = 2500
  L9_2 = 0
  L10_2 = 2000
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L5_2 = {}
  L6_2 = Make3DPoint
  L7_2 = 5700
  L8_2 = 0
  L9_2 = 6900
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = Make3DPoint
  L8_2 = 10700
  L9_2 = 0
  L10_2 = 10700
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = Make3DPoint
  L9_2 = 10700
  L10_2 = 0
  L11_2 = 10700
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L6_2 = ORDER_START
  L7_2 = L4_2
  L8_2 = TEAM_CHAOS
  if A0_2 == L8_2 then
    L8_2 = L3_2
    L3_2 = L2_2
    L2_2 = L8_2
    L6_2 = CHAOS_START
    L7_2 = L5_2
  end
  L8_2 = {}
  L9_2 = {}
  L10_2 = EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY
  L9_2.delay = L10_2
  L8_2[1] = L9_2
  L9_2 = {}
  L10_2 = EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY
  L11_2 = EOG_EASTER_EGG_MUSIC_FADE_TIME
  L10_2 = L10_2 + L11_2
  L9_2.delay = L10_2
  L9_2.soundCharacterName = "Lissandra"
  L9_2.soundName = "freljordlore"
  L9_2.cameraPath = L7_2
  L10_2 = EOG_EASTER_EGG_CAMERA_PATH_TIME
  L9_2.travelTime = L10_2
  L8_2[2] = L9_2
  POST_GAME_EVENTS = L8_2
end

PostGameSetup = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= A2_2 then
    return
  end
  L3_2 = pairs
  L4_2 = POST_GAME_EVENTS
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.delay
    if A0_2 > L8_2 then
      L8_2 = L7_2.cameraLocation
      if L8_2 then
        L8_2 = ClientSide_CameraMoveCameraFromCurrentPositionToPoint
        L9_2 = L7_2.cameraLocation
        L10_2 = L7_2.travelTime
        L8_2(L9_2, L10_2)
      end
      L8_2 = L7_2.cameraPath
      if L8_2 then
        L8_2 = ClientSide_CameraMoveCameraFromCurrentPositionAlongSpline
        L9_2 = L7_2.cameraPath
        L10_2 = L7_2.travelTime
        L8_2(L9_2, L10_2)
      end
      L8_2 = L7_2.soundName
      if L8_2 then
        L8_2 = L7_2.soundCharacterName
        if L8_2 then
          L8_2 = ClientSide_PlayGenericVOSoundFile
          L9_2 = L7_2.soundCharacterName
          L10_2 = L7_2.soundName
          L8_2(L9_2, L10_2)
        else
          L8_2 = ClientSide_PlaySoundFile
          L9_2 = L7_2.soundName
          L8_2(L9_2)
        end
      end
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = POST_GAME_EVENTS
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      break
    end
  end
end

PostGameUpdate = L0_1
