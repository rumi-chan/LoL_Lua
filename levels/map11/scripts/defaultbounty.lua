local L0_1, L1_1
L0_1 = 300
baseKillGold = L0_1
L0_1 = 2
minimumKillsForKillStreak = L0_1
L0_1 = 0.165
percentBonusPerKill = L0_1
L0_1 = 1.66667
maxPercentKillStreakBonus = L0_1
L0_1 = 2
minimumDeathsForDeathStreak = L0_1
L0_1 = 0.2
percentReductionPerDeath = L0_1
L0_1 = 0.1666667
minPercentDeathStreakPenalty = L0_1
L0_1 = 100
firstBloodBonus = L0_1
L0_1 = 90
assistMinTime = L0_1
L0_1 = 210
assistMaxTime = L0_1
L0_1 = 0.25
assistMinPercentage = L0_1
L0_1 = 0.5
assistMaxPercentage = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = baseKillGold
  L4_2 = A1_2 + 1
  L5_2 = 1
  L6_2 = minimumKillsForKillStreak
  if A0_2 >= L6_2 then
    L6_2 = math
    L6_2 = L6_2.pow
    L7_2 = percentBonusPerKill
    L7_2 = 1 + L7_2
    L8_2 = 1 + A0_2
    L9_2 = minimumKillsForKillStreak
    L8_2 = L8_2 - L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = math
    L7_2 = L7_2.min
    L8_2 = L6_2
    L9_2 = maxPercentKillStreakBonus
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2 * L7_2
  else
    L6_2 = minimumDeathsForDeathStreak
    if L4_2 >= L6_2 then
      L6_2 = math
      L6_2 = L6_2.pow
      L7_2 = percentReductionPerDeath
      L7_2 = 1 - L7_2
      L8_2 = 0.4 + L4_2
      L9_2 = minimumDeathsForDeathStreak
      L8_2 = L8_2 - L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = math
      L7_2 = L7_2.max
      L8_2 = L6_2
      L9_2 = minPercentDeathStreakPenalty
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L5_2 * L7_2
    end
  end
  L3_2 = L3_2 * L5_2
  if A2_2 then
    L6_2 = firstBloodBonus
    L3_2 = L3_2 + L6_2
  end
  return L3_2
end

GetBounty = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = assistMinTime
  if A0_2 < L1_2 then
    L1_2 = assistMinPercentage
    return L1_2
  else
    L1_2 = assistMaxTime
    if A0_2 > L1_2 then
      L1_2 = assistMaxPercentage
      return L1_2
    end
  end
  L1_2 = assistMinTime
  L1_2 = A0_2 - L1_2
  L2_2 = assistMaxTime
  L3_2 = assistMinTime
  L2_2 = L2_2 - L3_2
  L1_2 = L1_2 / L2_2
  ratio = L1_2
  L1_2 = ratio
  L2_2 = assistMaxPercentage
  L3_2 = assistMinPercentage
  L2_2 = L2_2 - L3_2
  L1_2 = L1_2 * L2_2
  L2_2 = assistMinPercentage
  L1_2 = L1_2 + L2_2
  return L1_2
end

GetGetAssistPercentageShare = L0_1
