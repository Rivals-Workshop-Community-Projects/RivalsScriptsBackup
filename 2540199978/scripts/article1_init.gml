sprite_index = sprite_get("nspecialCharge");
image_index = 0;
spr_dir = 1;
uses_shader = true;
depth = 5;
image_xscale = 0;
image_yscale = 0;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = false;
ignores_walls = true;

startupTime = 10;
idleTime = 130;
dieTime = 0;
snowflakeTime = 0;

angle = 0;
shootSpeed = 20;
returnSpeed = 30;

tint = c_white;
returning = false;
fspecReturn = false;
offsetTimer = 0;
leaderObj = self;
index = 0;
smash = false;

hbox = noone;
Pocketable = false;