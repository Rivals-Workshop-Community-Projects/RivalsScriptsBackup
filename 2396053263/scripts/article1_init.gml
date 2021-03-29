//HEARTBREAK FUNCTIONALITY (ARTICLE1_INIT)
//By: Delta Parallax

//chainedPlayer: the player that the heart is chaining
chainedPlayer = noone;

//heartBroken: whether this heart should be broken
heartBroken = false;

//heartBreakSplitX: [the x position of the split, current location in split].
heartBreakSplitX = [0, 0];

//heartBreakRadius: the radius of the split.
heartBreakRadius = 60;

//heartBreakTimer: the timer for the sprite to follow
heartBreakTimer = 0
heartBreakMaxTimer = [60, 20]

//heartBreakDelay: how long the article waits until coming back together.
heartBreakDelay = 120

//heartReassembleDelay: how long the heart will last reassembled
heartReassembleDelay = 60

//heartDistanceThreshold: if the heart is this far from Heartbrake it will move towards her.
heartDistanceThreshold = 200

//heartTension: A lower number means less tension on the heart.  
heartTension = (1/15)

//heartFriction: The friction when slowing down
heartFriction = .95

//heartShake: how much the heart shakes if heartBreakState == 1
heartShake = [0,0]

//heartShakeMult: the multipler for the shake
heartShakeMult = 2

//heartLerpVal: Between 0 and 1. The lower this number is, the more smoothly (but slowly???) the heart will change direction.  
heartLerpVal = 0.05

//heartBreakState: the state of the heart break.
//-1 for unbroken, 0 for broken, 1 for pause, 2 for coming back together
heartBreakState = -1

//heartChainsPos: the position in the array to fill
heartChainsPos = 0;

//heartBreakDetectSelf: Whether to detect yourself.
heartBreakDetectSelf = false;

//articleSprites: sprites to use for this instance
articleSprites = player_id.heartSprites

//doNotTrigger: array of state indices during which time the heart shouldn't close
doNotTrigger = [PS_ROLL_BACKWARD,PS_ROLL_FORWARD,PS_TECH_GROUND,PS_TECH_BACKWARD,PS_TECH_FORWARD,PS_WALL_TECH,PS_AIR_DODGE]

//doNotClose
doNotClose = [PS_RESPAWN,PS_DEAD,PS_SPAWN]

//Set the sprite index to be the heart sprite if there's no sprite in the chained player
sprite_index = articleSprites[4]
frame = 0;
maxframes = 3;

//Hit effect for when the heart closes
hit_heartflash = hit_fx_create(sprite_get("heartflash"), 18);

//heartShouldClose: whether the heart is closing or not.
heartShouldClose = false;

//heartShouldDie
heartShouldDie = false;

//heartDetectedPlayer: the player the heart detected while broken
heartDetectedPlayer = noone;

//Whether to use compatibility or not
useCompatibility = false;

//playerToDetect: player to detect after the break.
playerToDetect = noone;