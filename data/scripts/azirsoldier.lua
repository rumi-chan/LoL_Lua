local L0_1, L1_1
L0_1 = 0.5
DELAY_FIND_ENEMIES = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetState
  L1_2 = AI_IDLE
  L0_2(L1_2)
  L0_2 = InitTimer
  L1_2 = "Update"
  L2_2 = 0.15
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  Active = L0_2
  L0_2 = false
  SearchForTargets = L0_2
  L0_2 = false
  SearchIgnoresAzirMovement = L0_2
  L0_2 = InitTimer
  L1_2 = "TimerFindEnemies"
  L2_2 = DELAY_FIND_ENEMIES
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = false
  return L0_2
end

OnInit = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = true
  SearchForTargets = L0_2
end

TimerFindEnemies = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetState
  L3_2 = L3_2()
  L4_2 = AI_HALTED
  if L3_2 == L4_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = ORDER_PETHARDATTACK
  if A0_2 == L3_2 then
    L3_2 = Active
    if L3_2 == false then
      L3_2 = true
      Active = L3_2
      L3_2 = GetGoldRedirectTarget
      L3_2 = L3_2()
      L4_2 = IssueOrder
      L5_2 = L3_2
      L6_2 = ORDER_PETHARDATTACK
      L7_2 = GetPos
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      L8_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  else
    L3_2 = ORDER_PETHARDRETURN
    if A0_2 == L3_2 then
      L3_2 = false
      Active = L3_2
    else
      L3_2 = ORDER_MOVETO
      if A0_2 == L3_2 then
        L3_2 = true
        SearchForTargets = L3_2
        L3_2 = false
        SearchIgnoresAzirMovement = L3_2
      else
        L3_2 = ORDER_ATTACKMOVE
        if A0_2 == L3_2 then
          L3_2 = true
          SearchForTargets = L3_2
          L3_2 = true
          SearchIgnoresAzirMovement = L3_2
          L3_2 = Update
          L3_2()
        else
          L3_2 = ORDER_HOLD
          if A0_2 == L3_2 then
            L3_2 = false
            SearchForTargets = L3_2
            L3_2 = false
            SearchIgnoresAzirMovement = L3_2
          else
            L3_2 = ORDER_STOP
            if A0_2 == L3_2 then
              L3_2 = false
              SearchForTargets = L3_2
              L3_2 = false
              SearchIgnoresAzirMovement = L3_2
            else
              L3_2 = ORDER_CASTSPELL
              if A0_2 == L3_2 then
                L3_2 = false
                SearchForTargets = L3_2
                L3_2 = false
                SearchIgnoresAzirMovement = L3_2
                L3_2 = Active
                if L3_2 == true then
                  L3_2 = TurnOnAutoAttack
                  L4_2 = A1_2
                  L5_2 = true
                  L3_2(L4_2, L5_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L3_2 = true
  return L3_2
end

OnOrder = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetGoldRedirectTarget
  L0_2 = L0_2()
  if L0_2 == nil then
    L1_2 = Die
    L2_2 = me
    L1_2(L2_2)
    return
  end
  L1_2 = Active
  if L1_2 == false then
    return
  end
  L1_2 = SearchForTargets
  if L1_2 == true then
    L1_2 = SearchIgnoresAzirMovement
    if L1_2 ~= true then
      L1_2 = TargetIsMoving
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 ~= false then
        goto lbl_40
      end
      L1_2 = TargetIsAutoAcquireTargetEnabled
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_40
      end
    end
    L1_2 = FindTargetInAcR
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = IssueOrder
      L3_2 = L0_2
      L4_2 = ORDER_PETHARDMOVE
      L5_2 = GetPos
      L6_2 = L0_2
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  ::lbl_40::
end

Update = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L1_2 = "Update"
  L0_2(L1_2)
  L0_2 = TurnOffAutoAttack
  L1_2 = STOPREASON_IMMEDIATELY
  L0_2(L1_2)
  L0_2 = NetSetState
  L1_2 = AI_HALTED
  L0_2(L1_2)
end

HaltAI = L0_1
