// article1_init
// This can really be anything / they're usually like objects
// This is where the character establishes all variables for this article
// can be article1, article2, article3, articlesolid, articleplatform

can_be_grounded = true;
ignores_walls = false;
fall_through = false;

flag = false;

state = 0;
state_timer = 0;

sprite_index = sprite_get("box");
mask_index = sprite_get("box");
image_index = 0;

got_hit = false;

boxhitbox = noone;
hit_delay = 0;
hit_set = 0;

past_hitbox = noone;
past_attack = noone;
past_group = noone;

health_check = false;

owner = noone;

kb_scaling = 0;
bkb = 0;
fancynum = 0.12;
kb_adj = 1.4;
kb_speed = 0;

kb_angle = 0;

destroy = false;
destroy_check = false;
// Destroys Box

var oldest_plat_id = noone;
var plats_checked = 0;

if (instance_number(player_id.Box) > 1){
	with(player_id.Box) {

		if (oldest_plat_id == noone) {
			oldest_plat_id = id;
		}
		
		if (state_timer > oldest_plat_id.state_timer) {
			oldest_plat_id = id;
		}
	}
	oldest_plat_id.state_timer = 980;
}
