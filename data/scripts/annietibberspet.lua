local L0_1, L1_1
L0_1 = 1500
FAR_MOVMEMENT_DISTANCE = L0_1
L0_1 = 2000
TELEPORT_DISTANCE = L0_1
L0_1 = 500
FEAR_WANDER_DISTANCE = L0_1
L0_1 = 0
PET_COMMAND_BUFF_TYPE = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetState
  L1_2 = AI_PET_IDLE
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "TimerScanDistance"
  L2_2 = 0.15
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFindEnemies"
  L2_2 = 0.15
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerFeared"
  L2_2 = 1
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = InitTimer
  L1_2 = "TimerCharmed"
  L2_2 = 0.2
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerCharmed"
  L0_2(L1_2)
  L0_2 = GetCharacterData
  L0_2 = L0_2()
  L1_2 = L0_2.Name
  if L1_2 == "SRU_Dragon" then
    L1_2 = 25000
    TELEPORT_DISTANCE = L1_2
    L1_2 = false
    return L1_2
  end
  L1_2 = false
  return L1_2
end

OnInit = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetState
  L2_2 = L2_2()
  L3_2 = AI_HALTED
  if L2_2 == L3_2 then
    return
  end
  L3_2 = AI_TAUNTED
  if L2_2 ~= L3_2 then
    L3_2 = AI_BERSERK
    if L2_2 ~= L3_2 then
      L3_2 = AI_FEARED
      if L2_2 ~= L3_2 then
        L3_2 = AI_CHARMED
        if L2_2 ~= L3_2 then
          goto lbl_20
        end
      end
    end
  end
  do return end
  ::lbl_20::
  L3_2 = AI_PET_HARDATTACK
  if L2_2 ~= L3_2 then
    L3_2 = AI_PET_HARDMOVE
    if L2_2 ~= L3_2 then
      L3_2 = AI_PET_HARDIDLE
      if L2_2 ~= L3_2 then
        L3_2 = AI_PET_HARDIDLE_ATTACKING
        if L2_2 ~= L3_2 then
          L3_2 = AI_PET_HARDRETURN
          if L2_2 ~= L3_2 then
            L3_2 = AI_PET_HARDSTOP
            if L2_2 ~= L3_2 then
              goto lbl_52
            end
          end
        end
      end
    end
  end
  L3_2 = ORDER_ATTACKTO
  if A0_2 ~= L3_2 then
    L3_2 = ORDER_MOVETO
    if A0_2 ~= L3_2 then
      L3_2 = ORDER_ATTACKMOVE
      if A0_2 ~= L3_2 then
        L3_2 = ORDER_STOP
        if A0_2 ~= L3_2 then
          goto lbl_52
        end
      end
    end
  end
  L3_2 = true
  do return L3_2 end
  ::lbl_52::
  L3_2 = GetOwner
  L3_2 = L3_2()
  owner = L3_2
  L3_2 = owner
  if L3_2 == nil then
  end
  L3_2 = ORDER_ATTACKTO
  if A0_2 == L3_2 then
    if A1_2 == nil then
      L3_2 = false
      return L3_2
    end
    L3_2 = TurnOffAutoAttack
    L4_2 = STOPREASON_TARGET_LOST
    L3_2(L4_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_ATTACK
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_MOVETO
  if A0_2 == L3_2 then
    L3_2 = DistanceBetweenObjectAndInPosSq
    L4_2 = me
    L3_2 = L3_2(L4_2)
    L4_2 = FAR_MOVMEMENT_DISTANCE
    L5_2 = FAR_MOVMEMENT_DISTANCE
    L4_2 = L4_2 * L5_2
    if not (L3_2 > L4_2) then
      L3_2 = AI_PET_HOLDPOSITION
      if L2_2 ~= L3_2 then
        L3_2 = AI_PET_HOLDPOSITION_ATTACKING
        if L2_2 ~= L3_2 then
          goto lbl_103
        end
      end
    end
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_MOVE
    L5_2 = owner
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    ::lbl_103::
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_ATTACKMOVE
  if A0_2 == L3_2 then
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_ATTACKMOVE
    L5_2 = owner
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_STOP
  if A0_2 == L3_2 then
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_PETHARDSTOP
  if A0_2 == L3_2 then
    L3_2 = TurnOffAutoAttack
    L4_2 = STOPREASON_TARGET_LOST
    L3_2(L4_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_HARDSTOP
    L5_2 = me
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_PETHARDATTACK
  if A0_2 == L3_2 then
    if A1_2 == nil then
      L3_2 = false
      return L3_2
    end
    L3_2 = TurnOffAutoAttack
    L4_2 = STOPREASON_TARGET_LOST
    L3_2(L4_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_HARDATTACK
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffAdd
    L4_2 = A1_2
    L5_2 = me
    L6_2 = "PetCommandParticle"
    L7_2 = PET_COMMAND_BUFF_TYPE
    L8_2 = 45
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_PETHARDMOVE
  if A0_2 == L3_2 then
    L3_2 = SetStateAndMoveInPos
    L4_2 = AI_PET_HARDMOVE
    L3_2(L4_2)
    L3_2 = AIScriptSpellBuffAdd
    L4_2 = me
    L5_2 = me
    L6_2 = "PetCommandParticle"
    L7_2 = PET_COMMAND_BUFF_TYPE
    L8_2 = 45
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_PETHARDRETURN
  if A0_2 == L3_2 then
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_HARDRETURN
    L5_2 = owner
    L3_2(L4_2, L5_2)
    L3_2 = AIScriptSpellBuffAdd
    L4_2 = owner
    L5_2 = me
    L6_2 = "PetCommandParticle"
    L7_2 = PET_COMMAND_BUFF_TYPE
    L8_2 = 45
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_HOLD
  if A0_2 == L3_2 then
    L3_2 = AIScriptSpellBuffRemove
    L4_2 = me
    L5_2 = "PetCommandParticle"
    L3_2(L4_2, L5_2)
    L3_2 = SetStateAndCloseToTarget
    L4_2 = AI_PET_HOLDPOSITION
    L5_2 = me
    L3_2(L4_2, L5_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = Say
  L4_2 = "BAD ORDER DUDE! "
  L3_2(L4_2)
  L3_2 = false
  return L3_2
end

OnOrder = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = AI_PET_MOVE
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDMOVE
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_HARDRETURN
      if L0_2 ~= L1_2 then
        L1_2 = AI_FEARED
        if L0_2 ~= L1_2 then
          L1_2 = AI_PET_HARDSTOP
          if L0_2 ~= L1_2 then
            goto lbl_24
          end
        end
      end
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_24::
  L1_2 = FindTargetInAcR
  L1_2 = L1_2()
  newTarget = L1_2
  L1_2 = newTarget
  if L1_2 == nil then
    L1_2 = GetOwner
    L1_2 = L1_2()
    owner = L1_2
    L1_2 = owner
    if L1_2 == nil then
    end
    L1_2 = AI_PET_HARDIDLE_ATTACKING
    if L0_2 == L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_HARDIDLE
      L1_2(L2_2)
      L1_2 = true
      return L1_2
    else
      L1_2 = AI_PET_HOLDPOSITION_ATTACKING
      if L0_2 == L1_2 then
        L1_2 = NetSetState
        L2_2 = AI_PET_HOLDPOSITION
        L1_2(L2_2)
        L1_2 = true
        return L1_2
      else
        L1_2 = AI_PET_RETURN_ATTACKING
        if L0_2 == L1_2 then
          L1_2 = SetStateAndCloseToTarget
          L2_2 = AI_PET_RETURN
          L3_2 = owner
          L1_2(L2_2, L3_2)
          L1_2 = true
          return L1_2
        else
          L1_2 = AI_PET_ATTACKMOVE_ATTACKING
          if L0_2 == L1_2 then
            L1_2 = SetStateAndCloseToTarget
            L2_2 = AI_PET_ATTACKMOVE
            L3_2 = owner
            L1_2(L2_2, L3_2)
            L1_2 = true
            return L1_2
          end
        end
      end
    end
  else
    L1_2 = AI_PET_HARDATTACK
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_ATTACK
      if L0_2 ~= L1_2 then
        L1_2 = AI_TAUNTED
        if L0_2 ~= L1_2 then
          L1_2 = AI_BERSERK
          if L0_2 ~= L1_2 then
            goto lbl_93
          end
        end
      end
    end
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_PET_ATTACK
    L3_2 = newTarget
    L1_2(L2_2, L3_2)
    L1_2 = true
    do return L1_2 end
    goto lbl_136
    ::lbl_93::
    L1_2 = AI_PET_HARDIDLE_ATTACKING
    if L0_2 == L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_HARDIDLE_ATTACKING
      L1_2(L2_2)
      L1_2 = SetTarget
      L2_2 = newTarget
      L1_2(L2_2)
      L1_2 = true
      return L1_2
    else
      L1_2 = AI_PET_HOLDPOSITION_ATTACKING
      if L0_2 == L1_2 then
        L1_2 = NetSetState
        L2_2 = AI_PET_HOLDPOSITION_ATTACKING
        L1_2(L2_2)
        L1_2 = SetTarget
        L2_2 = newTarget
        L1_2(L2_2)
        L1_2 = true
        return L1_2
      else
        L1_2 = AI_PET_RETURN_ATTACKING
        if L0_2 == L1_2 then
          L1_2 = SetStateAndCloseToTarget
          L2_2 = AI_PET_RETURN_ATTACKING
          L3_2 = newTarget
          L1_2(L2_2, L3_2)
          L1_2 = true
          return L1_2
        else
          L1_2 = AI_PET_ATTACKMOVE_ATTACKING
          if L0_2 == L1_2 then
            L1_2 = SetStateAndCloseToTarget
            L2_2 = AI_PET_ATTACKMOVE_ATTACKING
            L3_2 = newTarget
            L1_2(L2_2, L3_2)
            L1_2 = true
            return L1_2
          end
        end
      end
    end
  end
  ::lbl_136::
  L1_2 = NetSetState
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end

OnTargetLost = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetTauntTarget
  L1_2 = L1_2()
  tauntTarget = L1_2
  L1_2 = tauntTarget
  if L1_2 ~= nil then
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_TAUNTED
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  end
end

OnTauntBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetTauntTarget
  L1_2 = L1_2()
  tauntTarget = L1_2
  L1_2 = tauntTarget
  if L1_2 ~= nil then
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_PET_ATTACK
    L3_2 = tauntTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    L1_2 = TimerFindEnemies
    L1_2()
  end
end

OnTauntEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeWanderPoint
  L2_2 = GetFearLeashPoint
  L2_2 = L2_2()
  L3_2 = FEAR_WANDER_DISTANCE
  L1_2 = L1_2(L2_2, L3_2)
  wanderPoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FEARED
  L3_2 = wanderPoint
  L1_2(L2_2, L3_2)
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_IMMEDIATELY
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
end

OnFearBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerFeared"
  L1_2(L2_2)
  L1_2 = NetSetState
  L2_2 = AI_PET_IDLE
  L1_2(L2_2)
  L1_2 = TimerFindEnemies
  L1_2()
end

OnFearEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = MakeWanderPoint
  L2_2 = GetFearLeashPoint
  L2_2 = L2_2()
  L3_2 = FEAR_WANDER_DISTANCE
  L1_2 = L1_2(L2_2, L3_2)
  wanderPoint = L1_2
  L1_2 = SetStateAndMove
  L2_2 = AI_FEARED
  L3_2 = wanderPoint
  L1_2(L2_2, L3_2)
end

TimerFeared = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
  end
  L1_2 = TurnOffAutoAttack
  L2_2 = STOPREASON_MOVING
  L1_2(L2_2)
  L1_2 = ResetAndStartTimer
  L2_2 = "TimerCharmed"
  L1_2(L2_2)
end

OnCharmBegin = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = StopTimer
  L2_2 = "TimerCharmed"
  L1_2(L2_2)
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = SetStateAndCloseToTarget
    L2_2 = AI_PET_ATTACK
    L3_2 = charmTarget
    L1_2(L2_2, L3_2)
  else
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    L1_2 = TimerFindEnemies
    L1_2()
  end
end

OnCharmEnd = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetCharmTarget
  L1_2 = L1_2()
  charmTarget = L1_2
  L1_2 = charmTarget
  if L1_2 ~= nil then
    L1_2 = GetPos
    L2_2 = charmTarget
    L1_2 = L1_2(L2_2)
    charmPosition = L1_2
    L1_2 = SetStateAndMove
    L2_2 = AI_CHARMED
    L3_2 = charmPosition
    L1_2(L2_2, L3_2)
  end
end

TimerCharmed = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    return
  end
  L2_2 = NetSetState
  L3_2 = AI_PET_IDLE
  L2_2(L3_2)
  L2_2 = TimerFindEnemies
  L2_2()
end

OnCanMove = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetTarget
  L1_2 = L1_2()
  if L1_2 ~= nil then
    return
  end
  L2_2 = NetSetState
  L3_2 = AI_PET_IDLE
  L2_2(L3_2)
  L2_2 = TimerFindEnemies
  L2_2()
end

OnCanAttack = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetOwner
  L1_2 = L1_2()
  tempOwner = L1_2
  L1_2 = tempOwner
  if L1_2 == nil then
    return
  end
  L1_2 = DistanceBetweenObjectBounds
  L2_2 = me
  L3_2 = tempOwner
  L1_2 = L1_2(L2_2, L3_2)
  distanceToOwner = L1_2
  L1_2 = distanceToOwner
  L2_2 = TELEPORT_DISTANCE
  if L1_2 > L2_2 then
    L1_2 = TeleportToObj
    L2_2 = tempOwner
    L3_2 = me
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = AIScriptSpellBuffRemove
    L2_2 = me
    L3_2 = "PetCommandParticle"
    L1_2(L2_2, L3_2)
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    return
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L0_2 = L1_2
  L1_2 = FindTargetInAcR
  L1_2 = L1_2()
  L1_2 = L1_2 == nil
  bNoEnemiesNear = L1_2
  L1_2 = AI_PET_IDLE
  if L0_2 == L1_2 then
    L1_2 = distanceToOwner
    L2_2 = GetPetReturnRadius
    L3_2 = me
    L2_2 = L2_2(L3_2)
    if L1_2 > L2_2 then
      L1_2 = bNoEnemiesNear
      if L1_2 then
        L1_2 = SetStateAndCloseToTarget
        L2_2 = AI_PET_RETURN
        L3_2 = tempOwner
        L1_2(L2_2, L3_2)
        return
      end
    end
  end
  L1_2 = AI_PET_RETURN
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDRETURN
    if L0_2 ~= L1_2 then
      goto lbl_79
    end
  end
  L1_2 = distanceToOwner
  L2_2 = GetPetReturnRadius
  L3_2 = me
  L2_2 = L2_2(L3_2)
  if L1_2 <= L2_2 then
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    return
  end
  ::lbl_79::
  L1_2 = OwnerIsMoving
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = AI_PET_MOVE
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_ATTACKMOVE
      if L0_2 ~= L1_2 then
        goto lbl_96
      end
      L1_2 = bNoEnemiesNear
      if not L1_2 then
        goto lbl_96
      end
    end
    L1_2 = NetSetState
    L2_2 = AI_PET_IDLE
    L1_2(L2_2)
    return
  end
  ::lbl_96::
  L1_2 = IsMoving
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = AI_PET_HARDMOVE
    if L0_2 == L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_HARDIDLE
      L1_2(L2_2)
      return
    end
  end
  L1_2 = AI_PET_SPAWNING
  if L0_2 == L1_2 then
    L1_2 = IsNetworkLocal
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = NetSetState
      L2_2 = AI_PET_IDLE
      L1_2(L2_2)
    end
  end
end

TimerScanDistance = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetState
  L0_2 = L0_2()
  L1_2 = AI_HALTED
  if L0_2 == L1_2 then
    return
  end
  L1_2 = GetOwner
  L1_2 = L1_2()
  if L1_2 == nil then
  end
  L1_2 = GetState
  L1_2 = L1_2()
  L0_2 = L1_2
  L1_2 = AI_PET_MOVE
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDMOVE
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_HARDSTOP
      if L0_2 ~= L1_2 then
        goto lbl_24
      end
    end
  end
  do return end
  ::lbl_24::
  L1_2 = AI_PET_ATTACK
  if L0_2 ~= L1_2 then
    L1_2 = AI_PET_HARDATTACK
    if L0_2 ~= L1_2 then
      L1_2 = AI_PET_RETURN_ATTACKING
      if L0_2 ~= L1_2 then
        L1_2 = AI_PET_ATTACKMOVE_ATTACKING
        if L0_2 ~= L1_2 then
          L1_2 = AI_PET_HARDIDLE_ATTACKING
          if L0_2 ~= L1_2 then
            L1_2 = AI_PET_HOLDPOSITION_ATTACKING
            if L0_2 ~= L1_2 then
              L1_2 = AI_TAUNTED
              if L0_2 ~= L1_2 then
                L1_2 = AI_BERSERK
                if L0_2 ~= L1_2 then
                  goto lbl_65
                end
              end
            end
          end
        end
      end
    end
  end
  L1_2 = TargetInAttackRange
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = TurnOnAutoAttack
    L2_2 = GetTarget
    L2_2 = L2_2()
    L1_2(L2_2)
  else
    L1_2 = TargetInCancelAttackRange
    L1_2 = L1_2()
    if L1_2 == false then
      L1_2 = TurnOffAutoAttack
      L2_2 = STOPREASON_MOVING
      L1_2(L2_2)
    end
  end
  do return end
  ::lbl_65::
end

TimerFindEnemies = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "TimerScanDistance"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFindEnemies"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerFeared"
  L0_2(L1_2)
  L0_2 = StopTimer
  L1_2 = "TimerCharmed"
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_IMMEDIATELY
  L0_2(L1_2)
  L0_2 = NetSetState
  L1_2 = AI_HALTED
  L0_2(L1_2)
end

HaltAI = L0_1
