//article1_init

sprite_index = sprite_get("box");

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

inStasis = false;
hitStasis = false;
oppStasisTimer = 0;
stasisHitSoundVar = false;
stasisHitSoundCounter = 0;
stasisHitCounter = 0;
hitboxStasisPlayerID = undefined;
hitboxStasisID = undefined;
hitboxStasisAttack = undefined;
hitboxStasisAngle = undefined;
hitboxStasisHboxNum = undefined;
hitboxStasisVsp = 0;
hitboxStasisHsp = 0;
timerSoundVar = 100;
stasisEndHsp = 0;
stasisEndVsp = 0;
stasisBoostTimer = 69;

playSoundVar = 0;

tempVar = false;
prevVsp = 0;