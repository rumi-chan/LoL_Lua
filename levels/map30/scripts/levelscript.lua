local L0_1, L1_1
L0_1 = DoLuaShared
L1_1 = "GlobalLevelScript"
L0_1(L1_1)
L0_1 = DoLuaLevel
L1_1 = "BBLuaConversionLibrary"
L0_1(L1_1)

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = PreloadCharacter
  L1_2 = "Cherry_Plant_Powerup"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "SRU_Plant_Satchel"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "Cherry_Plant_ChannelBridge"
  L0_2(L1_2)
  L0_2 = PreloadCharacter
  L1_2 = "Cherry_Plant_Boat"
  L0_2(L1_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Pyke"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Sett"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Thresh"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Lux"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Jhin"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "PracticeTool_TargetDummy"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Cherry_Hexgate"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = PreloadCharacterWithSkinID
  L1_2 = "Cherry_Hexgate"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = LoadLevelScriptIntoScript
  L1_2 = "EndOfGame.lua"
  L0_2(L1_2)
end

OnLevelInit = L0_1

function L0_1()
  local L0_2, L1_2
end

OnGameStartup = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = pairs
  L5_2 = POST_GAME_EVENTS
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.delay
    if A0_2 > L9_2 then
      L9_2 = ClientSide_CameraMoveCameraFromCurrentPositionToPoint
      L10_2 = L8_2.cameraLocation
      L11_2 = L8_2.travelTime
      L9_2(L10_2, L11_2)
      L9_2 = L8_2.soundFile
      if L9_2 then
        L9_2 = ClientSide_PlaySoundFile
        L10_2 = L8_2.soundFile
        L9_2(L10_2)
      end
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = POST_GAME_EVENTS
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      break
    end
  end
end

PostGameUpdate = L0_1
