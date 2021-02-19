// article1_init
// This can really be anything / they're usually like objects
// This is where the character establishes all variables for this article
// can be article1, article2, article3, articlesolid, articleplatform

can_be_grounded = true;
ignores_walls = false;

state = 0;
state_timer = 0;

sprite_index = sprite_get("box");
mask_index = -1;
image_index = 0;
image_speed = .4;

got_hit = false;

boxhitbox = noone;
hit_delay = 0;
hit_set = 0;

health_check = false;

owner = noone;

movingbox = noone;

destroy = false;

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
