sprite_index = sprite_get("portalSpawn");
image_index = 0;
spr_dir = 1;
uses_shader = true;
if !("in_adventure" in player_id && player_id.in_adventure) depth = 10;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = false;
ignores_walls = true;

replacedCount = 0;
maxArticles = 2;

with(asset_get("obj_article1")) if (player_id == other.player_id) replacedCount++;

isDespawn = false;
dieTime = 16;

otherPortal = noone;
triggerDist = 32;
collideDist = 24;
moveAngle = 0;
nspecAngle = -621;
nspecSpeed = 5;

noLimit = has_rune("L") || ("in_adventure" in player_id && player_id.in_adventure);

hitpause = 0;
old_hsp = 0;
old_vsp = 0;

safeZone = false;

afterImage = array_create(8, -1);

articleInit = false;