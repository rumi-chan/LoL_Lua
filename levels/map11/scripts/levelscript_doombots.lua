local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = DoLuaShared
L1_1 = "GlobalLevelScript"
L0_1(L1_1)
L0_1 = 30
EVENT_STAGE_WELCOME_TIME = L0_1
L0_1 = 45
EVENT_STAGE_PREANNOUNCE_TIME = L0_1
L0_1 = 75
EVENT_STAGE_MINIONS_SPAWNED_TIME = L0_1
L0_1 = 1.2
EOG_SCOREBOARD_PHASE_DELAY_TIME = L0_1
L0_1 = 180
MAX_MINIONS_EVER = L0_1
L0_1 = 0
TEAM_UNKNOWN = L0_1
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 300
TEAM_NEUTRAL = L0_1
L0_1 = 1
ORDER_HQ = L0_1
L0_1 = 2
CHAOS_HQ = L0_1
L0_1 = 3
FRONT_TOWER = L0_1
L0_1 = 2
MIDDLE_TOWER = L0_1
L0_1 = 1
BACK_TOWER = L0_1
L0_1 = 4
HQ_TOWER2 = L0_1
L0_1 = 5
HQ_TOWER1 = L0_1
L0_1 = 0
RIGHT_LANE = L0_1
L0_1 = 1
CENTER_LANE = L0_1
L0_1 = 2
LEFT_LANE = L0_1
L0_1 = 75
INITIAL_TIME_TO_SPAWN = L0_1
L0_1 = 3
CANNON_MINION_SPAWN_FREQUENCY = L0_1
L0_1 = 1200
INCREASE_CANNON_RATE_TIMER = L0_1
L0_1 = 2100
INCREASE_CANNON_RATE_TIMER2 = L0_1
L0_1 = 0
MINION_HEALTH_DENIAL_PERCENT = L0_1
L0_1 = 100
SMITE_CHARGE_START = L0_1
L0_1 = 90
UPGRADE_MINION_TIMER = L0_1
L0_1 = 6
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = L0_1
L0_1 = 3
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = L0_1
L0_1 = 1400
EXP_GIVEN_RADIUS = L0_1
L0_1 = 1250
GOLD_GIVEN_RADIUS = L0_1
L0_1 = 300
DISABLE_MINION_SPAWN_BASE_TIME = L0_1
L0_1 = 0
DISABLE_MINION_SPAWN_MAG_TIME = L0_1
L0_1 = 11.67
CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_1
L0_1 = 11
ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION = L0_1
L0_1 = -1
LAST_WAVE = L0_1
L0_1 = "none"
SPECIAL_MINION_MODE = L0_1
L0_1 = false
HQTurretAttackable = L0_1
L0_1 = 0
UpgradedMinionIterations = L0_1
L0_1 = DoLuaLevel
L1_1 = "BBLuaConversionLibrary"
L0_1(L1_1)
L0_1 = DoLuaLevel
L1_1 = "CampSpawnMarkers"
L0_1(L1_1)
L0_1 = {}
L0_1.WaveSpawnRate = 30000
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
L0_1.MaxBonus = 745
L0_1.HPUpgrade = 18
L0_1.HPUpgradeGrowth = 0.3
L1_1 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
L1_1 = L1_1 * 2.25
L0_1.HPUpgradeLate = L1_1
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 0
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 64
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 0
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
MeleeDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 3
L0_1.Armor = 0
L0_1.ArmorUpgrade = 0.625
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 1
L0_1.HPBonus = 0
L0_1.MaxBonus = 135
L0_1.HPUpgrade = 6
L0_1.HPUpgradeGrowth = 0
L1_1 = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION
L1_1 = L1_1 * 0.75
L0_1.HPUpgradeLate = L1_1
L0_1.HPUpgradeGrowthLate = 0
L0_1.HPInhibitor = 0
L0_1.DamageBonus = 0
L0_1.DamageUpgrade = 1.5
L0_1.DamageInhibitor = 0
L0_1.ExpGiven = 32
L0_1.ExpBonus = 0
L0_1.ExpUpgrade = 0
L0_1.ExpInhibitor = 0
L0_1.GoldGiven = 16.875
L0_1.GoldBonus = 0
L0_1.GoldUpgrade = 0.125
L0_1.GoldInhibitor = 0
L0_1.GoldShared = 0
L0_1.GoldShareUpgrade = 0
L0_1.GoldMaximumBonus = 8
L0_1.LocalGoldGiven = 0
L0_1.LocalGoldBonus = 0
CasterDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 0
L0_1.Armor = 0
L0_1.ArmorUpgrade = 1.5
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 1.5
L0_1.HPBonus = 0
L0_1.MaxBonus = 10000
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
CannonDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.DefaultNumPerWave = 0
L0_1.Armor = 0
L0_1.ArmorUpgrade = 0
L0_1.MagicResistance = 0
L0_1.MagicResistanceUpgrade = 0
L0_1.HPBonus = 0
L0_1.MaxBonus = 10000
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
SuperDefaultMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_OrderMinionMelee"
L1_1 = MeleeDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderMeleeMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_ChaosMinionMelee"
L1_1 = MeleeDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosMeleeMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_OrderMinionRanged"
L1_1 = CasterDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderCasterMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_ChaosMinionRanged"
L1_1 = CasterDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosCasterMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_OrderMinionSiege"
L1_1 = CannonDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderCannonMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_ChaosMinionSiege"
L1_1 = CannonDefaultMinionInfo
L0_1.DefaultInfo = L1_1
ChaosCannonMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_OrderMinionSuper"
L1_1 = SuperDefaultMinionInfo
L0_1.DefaultInfo = L1_1
OrderSuperMinionInfo = L0_1
L0_1 = {}
L0_1.MinionName = "SRU_ChaosMinionSuper"
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
L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1 = L3_1(L4_1)
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
L0_1[12] = L12_1
L0_1[13] = L13_1
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
L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1 = L3_1(L4_1)
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
L0_1[12] = L12_1
L0_1[13] = L13_1
ChaosBarracksBonuses = L0_1
L0_1 = {}
L1_1 = "SRU_Dragon"
L2_1 = "SRU_Krug"
L3_1 = "SRU_KrugMini"
L4_1 = "SRU_Red"
L5_1 = "SRU_RedMini"
L6_1 = "SRU_Razorbeak"
L7_1 = "SRU_RazorbeakMini"
L8_1 = "SRU_Murkwolf"
L9_1 = "SRU_MurkwolfMini"
L10_1 = "SRU_Blue"
L11_1 = "SRU_BlueMini"
L12_1 = "SRU_Gromp"
L13_1 = "SRU_Baron"
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
L0_1[12] = L12_1
L0_1[13] = L13_1
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
L0_1 = {}
L1_1 = CreateLaneBuildingTable
L1_1 = L1_1()
L2_1 = CreateLaneBuildingTable
L2_1 = L2_1()
L3_1 = CreateLaneBuildingTable
L3_1 = L3_1()
L0_1.HQTower2 = true
L0_1.HQTower1 = true
L0_1.HQ = true
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
OrderBuildingStatus = L0_1
L0_1 = {}
L1_1 = CreateLaneBuildingTable
L1_1 = L1_1()
L2_1 = CreateLaneBuildingTable
L2_1 = L2_1()
L3_1 = CreateLaneBuildingTable
L3_1 = L3_1()
L0_1.HQTower2 = true
L0_1.HQTower1 = true
L0_1.HQ = true
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
ChaosBuildingStatus = L0_1
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
  L2_2 = SetMutatorGlobals
  L2_2()
  L2_2 = PreloadCharacter
  L3_2 = "Turret"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "Inhibitor"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "Nexus"
  L2_2(L3_2)
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
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Blue"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_BlueMini"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_BlueMini2"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_Red"
  L2_2(L3_2)
  L2_2 = PreloadCharacter
  L3_2 = "SRU_RedMini"
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
  L2_2 = LoadLevelScriptIntoScript
  L3_2 = "NeutralMinionSpawn_DoomBots.lua"
  L2_2(L3_2)
  L2_2 = NeutralMinionInit
  L2_2()
  L2_2 = LoadLevelScriptIntoScript
  L3_2 = "EndOfGame.lua"
  L2_2(L3_2)
end

OnLevelInit = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = InitTimer
  L1_2 = "UpgradeMinionTimerInitial"
  L2_2 = INITIAL_TIME_TO_SPAWN
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "UpgradeMinionTimer"
  L2_2 = UPGRADE_MINION_TIMER
  L3_2 = true
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
  L0_2 = InitTimer
  L1_2 = "AllowDamageOnBuildings"
  L2_2 = 10
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end

OnLevelInitServer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Log
  L1_2 = "----------------------- Regular LevelScript PostLevelLoad ----------------------------"
  L0_2(L1_2)
  L0_2 = GetMutatorParameterString
  L1_2 = "LevelPropsScript"
  L0_2 = L0_2(L1_2)
  L1_2 = LoadLevelScriptIntoScript
  L2_2 = L0_2
  L1_2(L2_2)
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
    L6_2 = 0
    L7_2 = 0
    L8_2 = BACK_TOWER
    L9_2 = FRONT_TOWER
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = GetTurret
      L13_2 = TEAM_ORDER
      L14_2 = L4_2
      L15_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      orderTurret = L12_2
      L12_2 = orderTurret
      if L12_2 ~= nil then
        L6_2 = L6_2 + 1
      end
      L12_2 = GetTurret
      L13_2 = TEAM_CHAOS
      L14_2 = L4_2
      L15_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      chaosTurret = L12_2
      L12_2 = chaosTurret
      if L12_2 ~= nil then
        L7_2 = L7_2 + 1
      end
    end
    L8_2 = SetLaneTowerCount
    L9_2 = TEAM_ORDER
    L10_2 = L4_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = SetLaneTowerCount
    L9_2 = TEAM_CHAOS
    L10_2 = L4_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
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
  L1_2 = SetWorldVar
  L2_2 = "SmiteChargeStart"
  L3_2 = SMITE_CHARGE_START
  L1_2(L2_2, L3_2)
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
  L0_2 = InitTimer
  L1_2 = "AllowDamageOnBuildings"
  L2_2 = 10
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ChaosBuildingStatus
  L0_2.HQTower1 = true
  L0_2 = ChaosBuildingStatus
  L0_2.HQTower2 = true
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
  L1_2 = ApplyPersistentBuffToAllChampions
  L2_2 = "ResetGame_BotReinitHack"
  L3_2 = false
  L1_2(L2_2, L3_2)
end

OnLevelReset = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SpawnCampSpawnMarkers
  L1_2 = CampsWithInitialMinimapUI
  L0_2(L1_2)
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_UNKNOWN
  L2_2 = "ApplySRBuffs"
  L0_2(L1_2, L2_2)
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

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_CHAOS
  L2_2 = "ApplyBaseBuffChaos"
  L0_2(L1_2, L2_2)
  L0_2 = LuaForEachChampion
  L1_2 = TEAM_ORDER
  L2_2 = "ApplyBaseBuffOrder"
  L0_2(L1_2, L2_2)
end

ApplyBaseBuffToAllChampions = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ApplyBaseBuff
  L2_2 = A0_2
  L3_2 = ChaosHQPos
  L1_2(L2_2, L3_2)
end

ApplyBaseBuffChaos = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ApplyBaseBuff
  L2_2 = A0_2
  L3_2 = OrderHQPos
  L1_2(L2_2, L3_2)
end

ApplyBaseBuffOrder = L0_1
L0_1 = 12250000
baseBuffRadiusSquared = L0_1
L0_1 = 1
BUFF_Aura = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPosition
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - A1_2
  L3_2 = L2_2
  L2_2 = L2_2.lengthSq
  L2_2 = L2_2(L3_2)
  L3_2 = baseBuffRadiusSquared
  if L2_2 < L3_2 then
    L2_2 = SpellBuffAdd
    L3_2 = A0_2
    L4_2 = A0_2
    L5_2 = "S5Test_BaseBuff"
    L6_2 = BUFF_Aura
    L7_2 = 1
    L8_2 = 0.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end

ApplyBaseBuff = L0_1

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
  L0_2 = UpgradeMinionTimer
  L0_2()
  L0_2 = InitTimer
  L1_2 = "UpgradeMinionTimer"
  L2_2 = UPGRADE_MINION_TIMER
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end

UpgradeMinionTimerInitial = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
          L10_2 = RemoveUntargetable
          L11_2 = chaosTurret
          L10_2(L11_2)
          L10_2 = ApplyPersistentBuff
          L11_2 = chaosTurret
          L12_2 = "DoomBotsTurretBuff"
          L13_2 = false
          L14_2 = 1
          L15_2 = 1
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
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
  L8_2 = L8_2.Captain
  L9_2 = L5_2.MinionInfoTable
  L9_2 = L9_2.Ranger
  L10_2 = L5_2.MinionInfoTable
  L10_2 = L10_2.Artillery
  L11_2 = ResetToDefaultWaveCounts
  L12_2 = L5_2.MinionInfoTable
  L11_2(L12_2)
  L11_2 = CANNON_MINION_SPAWN_FREQUENCY
  L11_2 = A1_2 % L11_2
  if L11_2 == 0 then
    L11_2 = L7_2.NumPerWave
    L11_2 = L11_2 + 1
    L7_2.NumPerWave = L11_2
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
    L11_2 = totalMinionsRemaining
    L12_2 = BARRACKSCOUNT
    L12_2 = L12_2 * 7
    if L11_2 <= L12_2 then
      L11_2 = totalMinionsRemaining
      if L11_2 <= 0 then
        L11_2 = "None"
        SPECIAL_MINION_MODE = L11_2
      else
        L11_2 = totalMinionsRemaining
        L12_2 = BARRACKSCOUNT
        if L11_2 >= L12_2 then
          L11_2 = "2MeleeMinions"
          SPECIAL_MINION_MODE = L11_2
        else
          L11_2 = "None"
          SPECIAL_MINION_MODE = L11_2
        end
      end
    else
      L11_2 = ""
      SPECIAL_MINION_MODE = L11_2
    end
    LAST_WAVE = A4_2
  end
  L11_2 = L5_2.WillSpawnSuperMinion
  if L11_2 == 1 then
    L11_2 = TEAM_ORDER
    if A3_2 == L11_2 then
      L11_2 = totalNumberOfChaosBarracks
      if L11_2 == 0 then
        goto lbl_81
      end
    end
    L11_2 = TEAM_CHAOS
    if A3_2 == L11_2 then
      L11_2 = totalNumberOfOrderBarracks
      if L11_2 == 0 then
        ::lbl_81::
        L6_2.NumPerWave = 2
    end
    else
      L6_2.NumPerWave = 1
    end
    L7_2.NumPerWave = 0
  end
  L11_2 = SPECIAL_MINION_MODE
  if L11_2 == "2MeleeMinions" then
    L11_2 = L5_2.MinionInfoTable
    L11_2 = L11_2.Super
    L11_2 = L11_2.NumPerWave
    L12_2 = ClearCurrentWaveCounts
    L13_2 = L5_2.MinionInfoTable
    L12_2(L13_2)
    L6_2.NumPerWave = L11_2
    L12_2 = L5_2.MinionInfoTable
    L12_2 = L12_2.Melee
    L13_2 = math
    L13_2 = L13_2.max
    L14_2 = 2 - L11_2
    L15_2 = 0
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.NumPerWave = L13_2
  else
    L11_2 = SPECIAL_MINION_MODE
    if L11_2 == "None" then
      L11_2 = ClearCurrentWaveCounts
      L12_2 = L5_2.MinionInfoTable
      L11_2(L12_2)
    end
  end
  L11_2 = GetMutatorParameterBool
  L12_2 = "SuppressMinionSpawn"
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L11_2 = SuppressMinionSpawnForBarrack
    L12_2 = L5_2
    L11_2(L12_2)
  end
  L11_2 = {}
  L11_2.NewFormat = true
  L12_2 = L5_2.SpawnOrderMinionNames
  L11_2.SpawnOrderMinionNames = L12_2
  L12_2 = L5_2.IsDestroyed
  L11_2.IsDestroyed = L12_2
  L12_2 = SpawnTable
  L12_2 = L12_2.ExpRadius
  L11_2.ExperienceRadius = L12_2
  L12_2 = SpawnTable
  L12_2 = L12_2.GoldRadius
  L11_2.GoldRadius = L12_2
  L12_2 = L5_2.MinionInfoTable
  L11_2.MinionInfoTable = L12_2
  ReturnTable = L11_2
  L11_2 = ReturnTable
  return L11_2
end

GetMinionSpawnInfo = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
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

ApplyBarracksDestructionBonuses = L0_1
L0_1 = 0
ReductionCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
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

ApplyBarracksRespawnReductions = L0_1
L0_1 = 0
ReactiveCounter = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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

BarrackReactiveEvent = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
      goto lbl_51
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
  ::lbl_51::
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
  L2_2 = true
  return L2_2
end

HandleDestroyedObject = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
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

SetLaneExposed = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
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

SetLaneTowerCount = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_2
end

IncreaseCannonMinionSpawnRate = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_2
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

PostGameUpdate = L0_1
