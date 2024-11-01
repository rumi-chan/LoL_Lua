local L0_1, L1_1
L0_1 = GetAttackRange
L0_1 = L0_1()
HERO_FIGHT_DIST = L0_1
L0_1 = GetAttackRange
L0_1 = L0_1()
L0_1 = L0_1 + 500
HERO_ENGAGE_DIST = L0_1
L0_1 = 0
AI_FOLLOW_HERO = L0_1
L0_1 = 1
AI_ATTACK_HERO = L0_1
L0_1 = 0
TargetHealth = L0_1
L0_1 = false
ReducePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.Priority = 0
  L1_2 = GetHeroes
  L2_2 = GetOtherTeam
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = #L1_2
  L3_2 = A0_2.HeroIDIndex
  if L2_2 >= L3_2 then
    L2_2 = math
    L2_2 = L2_2.max
    L3_2 = GetDist
    L4_2 = GetPos
    L4_2 = L4_2()
    L5_2 = GetPos
    L6_2 = A0_2.HeroIDIndex
    L6_2 = L1_2[L6_2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = IsDead
    L4_2 = A0_2.HeroIDIndex
    L4_2 = L1_2[L4_2]
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = HERO_ENGAGE_DIST
      if L2_2 < L3_2 then
        A0_2.Priority = 0.5
      else
        L3_2 = HERO_ENGAGE_DIST
        L3_2 = L3_2 * 2
        if L2_2 < L3_2 then
          L3_2 = HERO_ENGAGE_DIST
          L3_2 = L2_2 - L3_2
          L4_2 = HERO_ENGAGE_DIST
          L3_2 = L3_2 / L4_2
          L3_2 = 1 - L3_2
          L3_2 = 0.5 * L3_2
          A0_2.Priority = L3_2
        end
      end
    end
  end
end

UpdatePriority = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetHeroes
  L2_2 = GetOtherTeam
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = #L1_2
  L3_2 = A0_2.HeroIDIndex
  if L2_2 >= L3_2 then
    L2_2 = TurnOffAutoAttack
    L3_2 = STOPREASON_MOVING
    L2_2(L3_2)
    L2_2 = SetStateAndCloseToTarget
    L3_2 = AI_FOLLOW_HERO
    L4_2 = A0_2.HeroIDIndex
    L4_2 = L1_2[L4_2]
    L2_2(L3_2, L4_2)
    L2_2 = GetTargetHealth
    L2_2 = L2_2()
    TargetHealth = L2_2
    L2_2 = InitTimer
    L3_2 = "AntiKiteTimer"
    L4_2 = 2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end

BeginTask = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetState
  L1_2 = L1_2()
  L2_2 = GetHeroes
  L3_2 = GetOtherTeam
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = #L2_2
  L4_2 = A0_2.HeroIDIndex
  if L3_2 >= L4_2 then
    L3_2 = GetDist
    L4_2 = GetPos
    L4_2 = L4_2()
    L5_2 = GetPos
    L6_2 = A0_2.HeroIDIndex
    L6_2 = L2_2[L6_2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = AI_FOLLOW_HERO
    if L1_2 == L4_2 then
      L4_2 = HERO_FIGHT_DIST
      if L3_2 < L4_2 then
        L4_2 = SetStateAndCloseToTarget
        L5_2 = AI_ATTACK_HERO
        L6_2 = A0_2.HeroIDIndex
        L6_2 = L2_2[L6_2]
        L4_2(L5_2, L6_2)
      else
        L4_2 = SetStateAndCloseToTarget
        L5_2 = AI_FOLLOW_HERO
        L6_2 = A0_2.HeroIDIndex
        L6_2 = L2_2[L6_2]
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = AI_ATTACK_HERO
      if L1_2 == L4_2 then
        L4_2 = HERO_FIGHT_DIST
        if L3_2 < L4_2 then
          L4_2 = TurnOnAutoAttack
          L5_2 = A0_2.HeroIDIndex
          L5_2 = L2_2[L5_2]
          L4_2(L5_2)
        else
          L4_2 = TurnOffAutoAttack
          L5_2 = STOPREASON_MOVING
          L4_2(L5_2)
          L4_2 = SetStateAndCloseToTarget
          L5_2 = AI_FOLLOW_HERO
          L6_2 = A0_2.HeroIDIndex
          L6_2 = L2_2[L6_2]
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end

Tick = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetTargetHealth
  L1_2 = L1_2()
  L2_2 = TargetHealth
  L2_2 = L2_2 - 10
  if L1_2 >= L2_2 then
    L1_2 = IsMoving
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = true
      ReducePriority = L1_2
      L1_2 = GetTargetHealth
      L1_2 = L1_2()
      TargetHealth = L1_2
      return
    end
  end
  L1_2 = ReducePriority
  if L1_2 == true then
    L1_2 = false
    ReducePriority = L1_2
    L1_2 = GetTargetHealth
    L1_2 = L1_2()
    TargetHealth = L1_2
    return
  end
  L1_2 = GetTargetHealth
  L1_2 = L1_2()
  TargetHealth = L1_2
end

AntiKiteTimer = L0_1

function L0_1(A0_2)
  local L1_2
end

OnTargetLost = L0_1
