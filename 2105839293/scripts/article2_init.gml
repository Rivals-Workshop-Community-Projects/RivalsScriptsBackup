//article1_init

init = 0;
sprite_index = sprite_get("dumbrock");
mask_index = sprite_get("dumbrock_mask");

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
hits = 0;
duration = 0;
isShooting = false;
shotCount = 0;
shotTimer = 0;
tackled = false;
playerHop = false;
selectDirection = 0;
startupSpeed = -2;
fullSpeed = false;
bigHitboxTimer = 0;
hitAngle = 0;
pranked = false;
hboxtype = 1;
assailant_id = noone;
assailant_number = 0;
knockbackHold = 0;
xHold = 0;
yHold = 0;
framesToCharge = -1;
hspHold = 0;
vspHold = 0;
playerInterrupted = false;
lockedDirection = 1;
rockRideCancelleable = false;
bulletForward = 1;
isRiding = false;