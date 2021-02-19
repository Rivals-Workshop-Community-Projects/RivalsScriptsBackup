wisp_type = player_id.next_capsule_type;
spr_dir = player_id.spr_dir;

switch(wisp_type){
	case 0: // Laser
		sprite_index = player_id.spr_capsule_spawn_laser;
		break;
	case 1: // Rocket
		sprite_index = player_id.spr_capsule_spawn_rocket;
		break;
	case 2: // Drill
		sprite_index = player_id.spr_capsule_spawn_drill;
		break;
}

mask_index = player_id.hurtbox_spr;

state = 0;
state_timer = 0;

with obj_article1 if player_id == other.player_id && self != other && state == 1{
	state = 2;
	state_timer = 0;
	image_index = 0;
}

y -= 10;

orig_x = x;
orig_y = y;

moving_timer = 0;

should_destroy = 0;



// BY SUPERSONIC

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
hit_lockout = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;