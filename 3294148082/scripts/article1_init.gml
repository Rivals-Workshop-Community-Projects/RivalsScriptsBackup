//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
freetimer = 0
boxfinradiussmall = 30
image_index2 = 0
islesser = 0
timer = 0;
timer2 = 0
timer3 = 0
scraped = false;
beenHit = false; //whether hit by nspec recently
destroysolids = false;
articletype = "Box"
state = "idle"
boxradius = 0
boxwidth = 0
boxheight = 0
sprite_index2 = sprite_get("empty")
boxfinradius = 50
boxactivated = 0
rightwall = noone
spr_dir = 1
d = noone
leftwall = noone
myhitbox = noone
launchdir = 0
topwall = noone
bottomwall = noone
boxwidthoffset = random_func(0, 20, true)
boxheightoffset = random_func(1, 20, true)
sprite_index = sprite_get("empty");
mask_index =  sprite_get("empty");

// --- [ ADDITION ] ----------------------------------------------------- //
// Added 2 variables below used to target the nearest viable oPlayer
// ---------------------------------------------------------------------- //
closest_distance = -1;
closest_player = noone;