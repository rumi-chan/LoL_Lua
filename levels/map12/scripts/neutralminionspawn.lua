local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = 0
TEAM_UNKNOWN = L0_1
L0_1 = 100
TEAM_ORDER = L0_1
L0_1 = 200
TEAM_CHAOS = L0_1
L0_1 = 300
TEAM_NEUTRAL = L0_1
L0_1 = 400
TEAM_MAX = L0_1
L0_1 = 1
HOSTILE = L0_1
L0_1 = 0
INACTIVE = L0_1
L0_1 = {}
L1_1 = "HA_AP_HealthRelic"
L2_1 = "HA_FB_HealthRelic"
L0_1[1] = L1_1
L0_1[2] = L2_1
NeutralMinionNames = L0_1
L0_1 = 1000
HERO_EXP_RADIUS = L0_1
L0_1 = {}
L1_1 = {}
L1_1.GoldGiven = 0
L1_1.ExpGiven = 0
L1_1.SoulGiven = 0
L0_1.HA_AP_HealthRelic = L1_1
L1_1 = {}
L1_1.GoldGiven = 0
L1_1.ExpGiven = 0
L1_1.SoulGiven = 0
L0_1.HA_FB_HealthRelic = L1_1
DefaultNeutralMinionValues = L0_1
L0_1 = {}
NeutralTimers = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = Get3DPointPosition
L3_1 = "HA_AP_HealthRelic_Chaos_Outer"
L2_1, L3_1, L4_1, L5_1, L6_1 = L2_1(L3_1)
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L2_1 = {}
L3_1 = Get3DPointPosition
L4_1 = "HA_AP_HealthRelic_Order_Outer"
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L3_1 = {}
L4_1 = Get3DPointPosition
L5_1 = "HA_AP_HealthRelic_Chaos_Inner"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = Get3DPointPosition
L6_1 = "HA_AP_HealthRelic_Order_Inner"
L5_1, L6_1 = L5_1(L6_1)
L4_1[1] = L5_1
L4_1[2] = L6_1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
CampSpawnPoints = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = Get3DPointFacingPosition
L3_1 = "HA_AP_HealthRelic_Chaos_Outer"
L2_1, L3_1, L4_1, L5_1, L6_1 = L2_1(L3_1)
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L2_1 = {}
L3_1 = Get3DPointFacingPosition
L4_1 = "HA_AP_HealthRelic_Order_Outer"
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L3_1 = {}
L4_1 = Get3DPointFacingPosition
L5_1 = "HA_AP_HealthRelic_Chaos_Inner"
L4_1, L5_1, L6_1 = L4_1(L5_1)
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = Get3DPointFacingPosition
L6_1 = "HA_AP_HealthRelic_Order_Inner"
L5_1, L6_1 = L5_1(L6_1)
L4_1[1] = L5_1
L4_1[2] = L6_1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
CampFacePoints = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = "HA_AP_HealthRelic"
L1_1[1] = L2_1
L0_1[1] = L1_1
L1_1 = {}
L2_1 = "HA_AP_HealthRelic"
L1_1[1] = L2_1
L0_1[2] = L1_1
L1_1 = {}
L2_1 = "HA_AP_HealthRelic"
L1_1[1] = L2_1
L0_1[3] = L1_1
L1_1 = {}
L2_1 = "HA_AP_HealthRelic"
L1_1[1] = L2_1
L0_1[4] = L1_1
PredefinedCamps = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = "HA_FB_HealthRelic"
L1_1[1] = L2_1
L0_1[1] = L1_1
L1_1 = {}
L2_1 = "HA_FB_HealthRelic"
L1_1[1] = L2_1
L0_1[2] = L1_1
PredefinedCampsFB = L0_1
L0_1 = {}
L1_1 = {}
L0_1[1] = L1_1
L1_1 = {}
L0_1[2] = L1_1
L1_1 = {}
L0_1[3] = L1_1
L1_1 = {}
L0_1[4] = L1_1
NeutralMinionCamps = L0_1
L0_1 = NeutralMinionCamps
L0_1 = #L0_1
NUMBER_OF_CAMPS = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetGameMode
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = NeutralMinionNames
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = PreloadCharacter
    L7_2 = L5_2
    L6_2(L7_2)
  end
  if L0_2 == "FIRSTBLOOD" then
    L1_2 = {}
    L2_2 = {}
    L1_2[1] = L2_2
    L2_2 = {}
    L1_2[2] = L2_2
    NeutralMinionCamps = L1_2
    L1_2 = NeutralMinionCamps
    L1_2 = #L1_2
    NUMBER_OF_CAMPS = L1_2
  end
  L1_2 = 1
  L2_2 = NUMBER_OF_CAMPS
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = CampSpawnPoints
    L6_2 = L6_2[L4_2]
    L5_2.Positions = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = CampFacePoints
    L6_2 = L6_2[L4_2]
    L5_2.FacePositions = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = {}
    L5_2.UniqueNames = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = {}
    L5_2.AliveTracker = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = TEAM_NEUTRAL
    L5_2.Team = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.DamageBonus = 0
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.HealthBonus = 0
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = INACTIVE
    L5_2.AIState = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.GroupsRespawnTime = 60
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.CampLevel = 1
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.TimerType = ""
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.MinimapIcon = ""
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.LeashRadius = 800
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L5_2.StopSpawnTime = 25000
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = CampSpawnPoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2[1]
    L5_2.LeashCenter = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = CampSpawnPoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2[1]
    L5_2.VisualCenter = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = NeutralMinionCamps
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.VisualCenter
    L5_2.MinimapPosition = L6_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L4_2]
    L6_2 = CampFacePoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2[1]
    L5_2.VisualFacing = L6_2
  end
  if L0_2 == "ARAM" or L0_2 == "KINGPORO" then
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L2_2 = {}
    L3_2 = PredefinedCamps
    L3_2 = L3_2[1]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.GroupsRespawnTime = 60
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.GroupDelaySpawnTime = 75
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.CampLevel = 3
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L2_2 = {}
    L3_2 = PredefinedCamps
    L3_2 = L3_2[2]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.GroupsRespawnTime = 60
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.GroupDelaySpawnTime = 75
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.CampLevel = 3
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[3]
    L2_2 = {}
    L3_2 = PredefinedCamps
    L3_2 = L3_2[3]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[3]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[3]
    L1_2.GroupsRespawnTime = 60
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[3]
    L1_2.GroupDelaySpawnTime = 75
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[3]
    L1_2.CampLevel = 3
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[4]
    L2_2 = {}
    L3_2 = PredefinedCamps
    L3_2 = L3_2[4]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[4]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[4]
    L1_2.GroupsRespawnTime = 60
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[4]
    L1_2.GroupDelaySpawnTime = 75
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[4]
    L1_2.CampLevel = 3
  elseif L0_2 == "FIRSTBLOOD" then
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.Name = "Chaos Outer Relic"
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L2_2 = NeutralMinionCamps
    L2_2 = L2_2[1]
    L2_2 = L2_2.Name
    L1_2.TimerType = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L2_2 = {}
    L3_2 = PredefinedCampsFB
    L3_2 = L3_2[1]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.GroupsRespawnTime = 90
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.GroupDelaySpawnTime = 90
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[1]
    L1_2.CampLevel = 3
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.Name = "Order Outer Relic"
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L2_2 = NeutralMinionCamps
    L2_2 = L2_2[2]
    L2_2 = L2_2.Name
    L1_2.TimerType = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L2_2 = {}
    L3_2 = PredefinedCampsFB
    L3_2 = L3_2[2]
    L2_2[1] = L3_2
    L1_2.Groups = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L2_2 = {}
    L3_2 = 100
    L2_2[1] = L3_2
    L1_2.GroupsChance = L2_2
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.GroupsRespawnTime = 90
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.GroupDelaySpawnTime = 90
    L1_2 = NeutralMinionCamps
    L1_2 = L1_2[2]
    L1_2.CampLevel = 3
  end
end

NeutralMinionInit = L0_1

function L0_1(A0_2)
  local L1_2
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = GetRandomIntLua
    L1_3 = 100
    L0_3 = L0_3(L1_3)
    L1_3 = 0
    L2_3 = false
    L3_3 = NeutralMinionCamps
    L4_3 = A0_2
    L3_3 = L3_3[L4_3]
    L4_3 = NeutralMinionCamps
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.DamageBonus
    L4_3 = L4_3 + 0
    L3_3.DamageBonus = L4_3
    L3_3 = NeutralMinionCamps
    L4_3 = A0_2
    L3_3 = L3_3[L4_3]
    L4_3 = NeutralMinionCamps
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.HealthBonus
    L4_3 = L4_3 + 0
    L3_3.HealthBonus = L4_3
    L3_3 = 1
    L4_3 = NeutralMinionCamps
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.Groups
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = NeutralMinionCamps
      L8_3 = A0_2
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.GroupsChance
      L7_3 = L7_3[L6_3]
      L7_3 = L7_3 + L1_3
      if L0_3 <= L7_3 and L2_3 == false then
        L2_3 = true
        L7_3 = NeutralMinionCamps
        L8_3 = A0_2
        L7_3 = L7_3[L8_3]
        L8_3 = {}
        L7_3.AliveTracker = L8_3
        L7_3 = 1
        L8_3 = NeutralMinionCamps
        L9_3 = A0_2
        L8_3 = L8_3[L9_3]
        L8_3 = L8_3.Groups
        L8_3 = L8_3[L6_3]
        L8_3 = #L8_3
        L9_3 = 1
        for L10_3 = L7_3, L8_3, L9_3 do
          L11_3 = SpawnNeutralMinion
          L12_3 = NeutralMinionCamps
          L13_3 = A0_2
          L12_3 = L12_3[L13_3]
          L13_3 = A0_2
          L14_3 = L6_3
          L15_3 = L10_3
          L11_3(L12_3, L13_3, L14_3, L15_3)
          L11_3 = NeutralMinionCamps
          L12_3 = A0_2
          L11_3 = L11_3[L12_3]
          L11_3 = L11_3.AliveTracker
          L11_3[L10_3] = true
        end
      end
      L7_3 = NeutralMinionCamps
      L8_3 = A0_2
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.GroupsChance
      L7_3 = L7_3[L6_3]
      L1_3 = L1_3 + L7_3
    end
  end
  
  return L1_2
end

CreateRespawnNeutralTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = 1
  L1_2 = NeutralMinionCamps
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = 1
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.Groups
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = NeutralMinionCamps
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2.UniqueNames
      L9_2 = {}
      L8_2[L7_2] = L9_2
      L8_2 = 1
      L9_2 = NeutralMinionCamps
      L9_2 = L9_2[L3_2]
      L9_2 = L9_2.Groups
      L9_2 = L9_2[L7_2]
      L9_2 = #L9_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = NeutralMinionCamps
        L12_2 = L12_2[L3_2]
        L12_2 = L12_2.UniqueNames
        L12_2 = L12_2[L7_2]
        L13_2 = NeutralMinionCamps
        L13_2 = L13_2[L3_2]
        L13_2 = L13_2.Groups
        L13_2 = L13_2[L7_2]
        L13_2 = L13_2[L11_2]
        L14_2 = L3_2
        L15_2 = "."
        L16_2 = L7_2
        L17_2 = "."
        L18_2 = L11_2
        L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
        L12_2[L11_2] = L13_2
      end
    end
    L4_2 = NeutralTimers
    L4_2 = #L4_2
    L5_2 = NeutralTimers
    L6_2 = L4_2 + 1
    L7_2 = CreateRespawnNeutralTimer
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L5_2[L6_2] = L7_2
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[L3_2]
    L6_2 = NeutralTimers
    L7_2 = L4_2 + 1
    L6_2 = L6_2[L7_2]
    L5_2.Timer = L6_2
    L5_2 = CreateNeutralCamp
    L6_2 = NeutralMinionCamps
    L6_2 = L6_2[L3_2]
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end

InitializeNeutralMinionInfo = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = NeutralMinionCamps
  L1_2 = #L1_2
  if A0_2 <= L1_2 then
    L1_2 = GetRandomIntLua
    L2_2 = 100
    L1_2 = L1_2(L2_2)
    L2_2 = 0
    L3_2 = false
    L4_2 = 1
    L5_2 = NeutralMinionCamps
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.Groups
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = NeutralMinionCamps
      L8_2 = L8_2[A0_2]
      L8_2 = L8_2.GroupDelaySpawnTime
      if 0 < L8_2 and L3_2 == false then
        L3_2 = true
        L8_2 = NeutralMinionCamps
        L8_2 = L8_2[A0_2]
        L9_2 = {}
        L8_2.AliveTracker = L9_2
        L8_2 = 1
        L9_2 = NeutralMinionCamps
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.Groups
        L9_2 = L9_2[L7_2]
        L9_2 = #L9_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = NeutralMinionCamps
          L12_2 = L12_2[A0_2]
          L12_2 = L12_2.AliveTracker
          L12_2[L11_2] = true
        end
      else
        L8_2 = NeutralMinionCamps
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.GroupsChance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2 + L2_2
        if L1_2 <= L8_2 and L3_2 == false then
          L3_2 = true
          L8_2 = NeutralMinionCamps
          L8_2 = L8_2[A0_2]
          L9_2 = {}
          L8_2.AliveTracker = L9_2
          L8_2 = 1
          L9_2 = NeutralMinionCamps
          L9_2 = L9_2[A0_2]
          L9_2 = L9_2.Groups
          L9_2 = L9_2[L7_2]
          L9_2 = #L9_2
          L10_2 = 1
          for L11_2 = L8_2, L9_2, L10_2 do
            L12_2 = NeutralMinionCamps
            L12_2 = L12_2[A0_2]
            L12_2 = L12_2.AliveTracker
            L12_2[L11_2] = true
          end
        end
        L8_2 = NeutralMinionCamps
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.GroupsChance
        L8_2 = L8_2[L7_2]
        L2_2 = L2_2 + L8_2
      end
    end
  end
end

SpawnInitialNeutralMinions = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = true
  L5_2 = 0
  L6_2 = 1
  L7_2 = NeutralMinionCamps
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = 1
    L11_2 = NeutralMinionCamps
    L11_2 = L11_2[L9_2]
    L11_2 = L11_2.UniqueNames
    L11_2 = #L11_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = 1
      L15_2 = NeutralMinionCamps
      L15_2 = L15_2[L9_2]
      L15_2 = L15_2.UniqueNames
      L15_2 = L15_2[L13_2]
      L15_2 = #L15_2
      L16_2 = 1
      for L17_2 = L14_2, L15_2, L16_2 do
        L18_2 = NeutralMinionCamps
        L18_2 = L18_2[L9_2]
        L18_2 = L18_2.UniqueNames
        L18_2 = L18_2[L13_2]
        L18_2 = L18_2[L17_2]
        if L18_2 == A0_2 then
          L5_2 = L9_2
          L18_2 = NeutralMinionCamps
          L18_2 = L18_2[L9_2]
          L18_2 = L18_2.AliveTracker
          L18_2[L17_2] = false
        end
      end
    end
  end
  if 0 < L5_2 then
    L6_2 = 1
    L7_2 = NeutralMinionCamps
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.AliveTracker
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = NeutralMinionCamps
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.AliveTracker
      L10_2 = L10_2[L9_2]
      if L10_2 == true then
        L4_2 = false
      end
    end
    if L4_2 == true then
      L6_2 = InitNeutralMinionTimer
      L7_2 = NeutralMinionCamps
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.Timer
      L8_2 = NeutralMinionCamps
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.TimerType
      L9_2 = NeutralMinionCamps
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.GroupsRespawnTime
      L10_2 = 0
      L11_2 = false
      L12_2 = NeutralMinionCamps
      L12_2 = L12_2[L5_2]
      L12_2 = L12_2.StopSpawnTime
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end

NeutralMinionDeath = L0_1
