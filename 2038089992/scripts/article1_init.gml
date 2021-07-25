//article1_init

sprite_index = sprite_get("puddle");

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
canSubmerge = false;
submergePuddleID = undefined;
playerAttack = undefined;
playerState = undefined;


dissolve = false; //puddle kill state
offLedge = false;
timer = 0;
steamed = false;
steamedTimer = 0;
recentNum = get_gameplay_time();