local L0_1, L1_1, L2_1, L3_1
L0_1 = 6
LEASH_COUNTER_THRESHOLD = L0_1
L0_1 = 0.6
DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME = L0_1
L0_1 = 700
INNER_RANGE_BEFORE_CAMP_RELEASES = L0_1
L0_1 = 1150
ATTACKER_RANGE_BEFORE_RELEASH = L0_1
L0_1 = 250
OUTER_RANGE_BOUND = L0_1
L0_1 = 2
RUN_IN_FEAR = L0_1
L0_1 = 1
HOSTILE = L0_1
L0_1 = 0
INACTIVE = L0_1
L0_1 = 0.05
DEFAULT_FRUSTRATION_SEARCH_TIME = L0_1
L0_1 = 400
AGGRESSION_FIRST_SWEEP_RANGE = L0_1
L0_1 = 100
LEASH_PROTECTION_BARRIER = L0_1
L0_1 = 25
CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = DoLuaShared
L1_1 = "AIComponentSystem"
L0_1(L1_1)
L0_1 = DoLuaShared
L1_1 = "ObjectTags"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFearBehavior"
L0_1(L1_1)
L0_1 = AddComponent
L1_1 = "DefaultFleeBehavior"
L0_1(L1_1)
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Minion
L2_1 = UnitTagIndicies
L2_1 = L2_1.Monster
L3_1 = UnitTagIndicies
L3_1 = L3_1.Champion
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_ANY_INCLUDED_TAG = L0_1
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Structure
L2_1 = UnitTagIndicies
L2_1 = L2_1.Minion_Lane
L3_1 = UnitTagIndicies
L3_1 = L3_1.Special_EpicMonsterIgnores
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_EPIC_EXCLUDED_TAG = L0_1
L0_1 = {}
L1_1 = UnitTagIndicies
L1_1 = L1_1.Structure
L2_1 = UnitTagIndicies
L2_1 = L2_1.Minion_Lane
L3_1 = UnitTagIndicies
L3_1 = L3_1.Special_MonsterIgnores
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
MONSTER_NONEPIC_EXCLUDED_TAG = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Event
  L2_2 = "ComponentInit"
  L1_2(L2_2)
end

OnInit = L0_1
