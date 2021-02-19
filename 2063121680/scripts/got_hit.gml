//got-hit

sound_stop(sound_get("rune_search_start"));
sound_stop(sound_get("bullet_time"));

move_cooldown[AT_DAIR] = 0;
move_cooldown[AT_NSPECIAL] = 0;
uspecRepeat = false;
ustrongWarningDraw = false;
ustrongPillarDraw = false;
reticleX = 0;
reticleY = 0;
magnesisReticleDraw = false;
retAngle = 0;
retDist = 0;
retXAcc = 0;
retYAcc = 0
magnesisSearch = false;
magnesisReticalTimer = 0;
magnesisMoveTimer = 0;
magnesisMoveStopVar = true;