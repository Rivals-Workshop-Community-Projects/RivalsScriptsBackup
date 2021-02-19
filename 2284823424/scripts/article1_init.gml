//Article 1: Fire and Poison

if (player_id.object_index == pHitBox) player_id = player_id.player_id; //i hate rivals of aether

//Sprite and direction
sprite_index = player_id.spr_fire;
image_index = 0;
mask_index = player_id.spr_fire;
spr_dir = 1;
uses_shader = false;

//State
hsp = 0;
vsp = 0;
exist_timer = 0;
state = 0;
state_timer = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = false;
hit_wall = false;

//Cope with own mortality
should_die = false;

var shallowest = 0;

with oPlayer if depth < shallowest shallowest = depth;

depth = shallowest - 1;

type = 0; //0 fire 1 poison

with asset_get("obj_article1") if self != other && player_id == other.player_id && type == 0 && state != 2{
	state = 2;
	state_timer = 0;
}