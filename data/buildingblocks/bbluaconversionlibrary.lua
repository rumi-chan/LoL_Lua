local L0_1, L1_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2)
  local L12_2, L13_2, L14_2
  L12_2 = {}
  L12_2.Pos = A3_2
  L13_2 = GetHashedGameObjName
  L14_2 = "GoldRedirectObj"
  L13_2 = L13_2(L14_2)
  L12_2[L13_2] = A11_2
  passThroughParams = L12_2
  L12_2 = {}
  L12_2.Name = A0_2
  L12_2.Skin = A1_2
  L12_2.AiScript = A2_2
  L12_2.PosVar = "Pos"
  L12_2.Team = A4_2
  L12_2.Stunned = A5_2
  L12_2.Rooted = A6_2
  L12_2.Silenced = A7_2
  L12_2.Invulnerable = A8_2
  L12_2.MagicImmune = A9_2
  L12_2.IgnoreCollision = A10_2
  L12_2.DestVar = "Other1"
  L12_2.GoldRedirectTargetVar = "GoldRedirectObj"
  perBlockParams = L12_2
  L12_2 = BBSpawnMinion
  L13_2 = passThroughParams
  L14_2 = perBlockParams
  L12_2(L13_2, L14_2)
  L12_2 = passThroughParams
  L12_2 = L12_2.Other1
  return L12_2
end

SpawnMinion = L0_1
