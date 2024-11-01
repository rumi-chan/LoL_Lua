local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "SR_LevelScript"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = 60
  UPGRADE_MINION_TIMER = L0_2
  L0_2 = 480
  INCREASE_CANNON_RATE_TIMER = L0_2
  L0_2 = 1140
  INCREASE_CANNON_RATE_TIMER2 = L0_2
  L0_2 = 1.3
  INCREASED_GOLD_MULTIPLIER = L0_2
  L0_2 = 0.3
  SHARE_MULT_LASTHIT = L0_2
  L0_2 = 0.6
  SHARE_MULT_MISS = L0_2
  L0_2 = CANNON_GOLD
  L1_2 = INCREASED_GOLD_MULTIPLIER
  L0_2 = L0_2 * L1_2
  SUPER_GOLD = L0_2
  L0_2 = CANNON_GOLD
  L1_2 = INCREASED_GOLD_MULTIPLIER
  L0_2 = L0_2 * L1_2
  CANNON_GOLD = L0_2
  L0_2 = CASTER_GOLD
  L1_2 = INCREASED_GOLD_MULTIPLIER
  L0_2 = L0_2 * L1_2
  CASTER_GOLD = L0_2
  L0_2 = MELEE_GOLD
  L1_2 = INCREASED_GOLD_MULTIPLIER
  L0_2 = L0_2 * L1_2
  MELEE_GOLD = L0_2
  L0_2 = SHARE_MULT_LASTHIT
  L1_2 = SUPER_GOLD
  L0_2 = L0_2 * L1_2
  SUPER_SHARE_LASTHIT = L0_2
  L0_2 = SHARE_MULT_MISS
  L1_2 = SUPER_GOLD
  L0_2 = L0_2 * L1_2
  SUPER_SHARE_MISS = L0_2
  L0_2 = SHARE_MULT_LASTHIT
  L1_2 = CANNON_GOLD
  L0_2 = L0_2 * L1_2
  CANNON_SHARE_LASTHIT = L0_2
  L0_2 = SHARE_MULT_MISS
  L1_2 = CANNON_GOLD
  L0_2 = L0_2 * L1_2
  CANNON_SHARE_MISS = L0_2
  L0_2 = SHARE_MULT_LASTHIT
  L1_2 = CASTER_GOLD
  L0_2 = L0_2 * L1_2
  CASTER_SHARE_LASTHIT = L0_2
  L0_2 = SHARE_MULT_MISS
  L1_2 = CASTER_GOLD
  L0_2 = L0_2 * L1_2
  CASTER_SHARE_MISS = L0_2
  L0_2 = SHARE_MULT_LASTHIT
  L1_2 = MELEE_GOLD
  L0_2 = L0_2 * L1_2
  MELEE_SHARE_LASTHIT = L0_2
  L0_2 = SHARE_MULT_MISS
  L1_2 = MELEE_GOLD
  L0_2 = L0_2 * L1_2
  MELEE_SHARE_MISS = L0_2
end

OverrideDefaultDefines = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 1.3
  INCREASED_EXP_MULTIPLIER = L0_2
  L0_2 = MeleeDefaultMinionInfo
  L0_2 = L0_2.ExpGiven
  L1_2 = INCREASED_EXP_MULTIPLIER
  L0_2 = L0_2 * L1_2
  MELEE_EXP = L0_2
  L0_2 = CasterDefaultMinionInfo
  L0_2 = L0_2.ExpGiven
  L1_2 = INCREASED_EXP_MULTIPLIER
  L0_2 = L0_2 * L1_2
  CASTER_EXP = L0_2
  L0_2 = CannonDefaultMinionInfo
  L0_2 = L0_2.ExpGiven
  L1_2 = INCREASED_EXP_MULTIPLIER
  L0_2 = L0_2 * L1_2
  CANNON_EXP = L0_2
  L0_2 = SuperDefaultMinionInfo
  L0_2 = L0_2.ExpGiven
  L1_2 = INCREASED_EXP_MULTIPLIER
  L0_2 = L0_2 * L1_2
  SUPER_EXP = L0_2
  L0_2 = MeleeDefaultMinionInfo
  L1_2 = MELEE_EXP
  L0_2.ExpGiven = L1_2
  L0_2 = CasterDefaultMinionInfo
  L1_2 = CASTER_EXP
  L0_2.ExpGiven = L1_2
  L0_2 = CannonDefaultMinionInfo
  L1_2 = CANNON_EXP
  L0_2.ExpGiven = L1_2
  L0_2 = SuperDefaultMinionInfo
  L1_2 = SUPER_EXP
  L0_2.ExpGiven = L1_2
  L0_2 = SuperDefaultMinionInfo
  L1_2 = SUPER_GOLD
  L0_2.GoldGiven = L1_2
  L0_2 = SuperDefaultMinionInfo
  L1_2 = SUPER_SHARE_LASTHIT
  L0_2.LocalGoldGivenOnLastHit = L1_2
  L0_2 = SuperDefaultMinionInfo
  L1_2 = SUPER_SHARE_MISS
  L0_2.LocalGoldBonus = L1_2
end

OverrideDefaultMinionInfo = L0_1

function L0_1()
  local L0_2, L1_2
end

OverrideDefaultTables = L0_1

function L0_1(A0_2, A1_2, A2_2)
end

OverrideMinionSpawnInfo = L0_1

function L0_1()
  local L0_2, L1_2
end

DoAdditionalPreloads = L0_1
L0_1 = Init
L0_1()
