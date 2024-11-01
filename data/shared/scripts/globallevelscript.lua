local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "ObjectTags"
L0_1(L1_1)
L0_1 = 30
EVENT_STAGE_WELCOME_TIME = L0_1
L0_1 = 60
EVENT_STAGE_PREANNOUNCE_TIME = L0_1
L0_1 = 0
EVENT_STAGE_FINISHED = L0_1
L0_1 = 1
EVENT_STAGE_WELCOME = L0_1
L0_1 = 2
EVENT_STAGE_PREANNOUNCE = L0_1
L0_1 = EVENT_STAGE_WELCOME
NextEventStage = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = NextEventStage
  L2_2 = EVENT_STAGE_FINISHED
  if L1_2 == L2_2 then
    return
  else
    L1_2 = NextEventStage
    L2_2 = EVENT_STAGE_WELCOME
    if L1_2 == L2_2 then
      L1_2 = EVENT_STAGE_WELCOME_TIME
      if A0_2 >= L1_2 then
        L1_2 = NotifyGlobalEvent
        L2_2 = "OnStartGameMessage1"
        L1_2(L2_2)
        L1_2 = EVENT_STAGE_PREANNOUNCE
        NextEventStage = L1_2
      end
    else
      L1_2 = NextEventStage
      L2_2 = EVENT_STAGE_PREANNOUNCE
      if L1_2 == L2_2 then
        L1_2 = EVENT_STAGE_PREANNOUNCE_TIME
        if A0_2 >= L1_2 then
          L1_2 = NotifyGlobalEvent
          L2_2 = "OnStartGameMessage2"
          L1_2(L2_2)
          L1_2 = EVENT_STAGE_FINISHED
          NextEventStage = L1_2
        end
      end
    end
  end
end

UpdateEventTimers = L0_1
