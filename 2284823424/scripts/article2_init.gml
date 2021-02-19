//Article 2: Water and Lava

//Sprite and direction
sprite_index = player_id.spr_flowing_water;
image_index = 0;
mask_index = player_id.spr_flowing_lava;
spr_dir = 1;
uses_shader = false;

//State
hitstop = 0;
hsp = 0;
vsp = 0;
exist_timer = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;

//Cope with own mortality
should_die = false;

var shallowest = 0;

with oPlayer if depth < shallowest shallowest = depth;

depth = shallowest - 1;

type = 0; //0 water 1 lava