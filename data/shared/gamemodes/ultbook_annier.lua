local L0_1, L1_1
L0_1 = true
NotSingleTargetSpell = L0_1
L0_1 = false
DoesntTriggerSpellCasts = L0_1
L0_1 = 0.5
SpellDamageRatio = L0_1
L0_1 = true
IsDamagingSpell = L0_1
L0_1 = true
IsPetDurationBuff = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A2_2 < 1 then
    L4_2 = SetScaleSkinCoef
    L5_2 = A2_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end

UpdateBuffs = L0_1
