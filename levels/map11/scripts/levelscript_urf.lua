local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "SR_LevelScript"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2
  L0_2 = 850
  INCREASE_CANNON_RATE_TIMER = L0_2
  L0_2 = 1500
  INCREASE_CANNON_RATE_TIMER2 = L0_2
  L0_2 = 1.4
  INCREASED_GOLD_MULTIPLIER = L0_2
  L0_2 = 0.3
  SHARE_MULT_LASTHIT = L0_2
  L0_2 = 0.6
  SHARE_MULT_MISS = L0_2
  L0_2 = 1
  MELEE_CASTER_GOLD_UPGRADE = L0_2
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
  L0_2 = MeleeDefaultMinionInfo
  L0_2.ExpGiven = 65
  L0_2 = {}
  L0_2.DefaultNumPerWave = 0
  L0_2.Armor = 0
  L0_2.ArmorUpgrade = 0
  L0_2.MagicResistance = 0
  L0_2.MagicResistanceUpgrade = 0
  L0_2.HPBonus = 0
  L0_2.MaxBonus = 10000
  L0_2.HPUpgrade = 100
  L0_2.HPUpgradeGrowth = 0
  L0_2.HPUpgradeLate = 0
  L0_2.HPUpgradeGrowthLate = 0
  L0_2.HPInhibitor = 0
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
  AwesomeDefaultMinionInfo = L0_2
end

OverrideDefaultMinionInfo = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_2.MinionName = "URF_OrderMinionAwesome"
  L1_2 = AwesomeDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  OrderAwesomeMinionInfo = L0_2
  L0_2 = {}
  L0_2.MinionName = "URF_ChaosMinionAwesome"
  L1_2 = AwesomeDefaultMinionInfo
  L0_2.DefaultInfo = L1_2
  ChaosAwesomeMinionInfo = L0_2
  L0_2 = {}
  L0_2.IsDestroyed = false
  L0_2.NumOfSpawnDisables = 0
  L0_2.WillSpawnSuperMinion = 0
  L1_2 = {}
  L2_2 = "Awesome"
  L3_2 = "Super"
  L4_2 = "Melee"
  L5_2 = "Cannon"
  L6_2 = "Caster"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
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
  L1_2 = OrderAwesomeMinionInfo
  L0_2.Awesome = L1_2
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
  L1_2 = ChaosAwesomeMinionInfo
  L0_2.Awesome = L1_2
  DefaultChaosMinionInfoTable = L0_2
end

OverrideDefaultTables = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_OrderMinionMelee"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_ChaosMinionMelee"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_ChaosMinionRanged"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_OrderMinionRanged"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_ChaosMinionSiege"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_OrderMinionSiege"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Plant_Health"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Plant_satchel"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_plant_vision"
  L0_2(L1_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_Dragon_Elder"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_Plant_Health"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_BaronSpawn"
  L2_2 = 3
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_Baron"
  L2_2 = 3
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Testcuberender"
  L2_2 = 3
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_PlantRespawnMarker"
  L0_2(L1_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_ChaosMinionSuper"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "SRU_OrderMinionSuper"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_camprespawnmarker"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "URF_OrderMinionAwesome"
  L0_2(L1_2)
end

DoAdditionalPreloads = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = GetWorldVar
  L4_2 = "URF_BaronTeam"
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = "Awesome"
    SPECIAL_MINION_MODE = L4_2
    L4_2 = TEAM_ORDER
    if A0_2 ~= L4_2 or A2_2 ~= 0 then
      L4_2 = TEAM_CHAOS
      if A0_2 ~= L4_2 or A1_2 ~= 0 then
        goto lbl_23
      end
    end
    L4_2 = currentBarrack
    L4_2 = L4_2.MinionInfoTable
    L4_2 = L4_2.Awesome
    L4_2.NumPerWave = 2
    goto lbl_27
    ::lbl_23::
    L4_2 = currentBarrack
    L4_2 = L4_2.MinionInfoTable
    L4_2 = L4_2.Awesome
    L4_2.NumPerWave = 1
  end
  ::lbl_27::
end

OnSpecialMinionSpawnInfo = L0_1
L0_1 = Init
L0_1()
