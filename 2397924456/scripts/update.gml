muno_event_type = 1;
user_event(14);



switch(state){
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	case PS_AIR_DODGE:
	case PS_WAVELAND:
	case PS_PARRY_START:
	case PS_PARRY:
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
	case PS_LANDING_LAG:
		if jab_timer jab_timer = 15;
		break;
}



if !instance_exists(legion) legion = noone;

if (legion == noone){
	with obj_article1 if player_id == other instance_destroy();
	
	chain = [];
	
	legion = instance_create(x, y, "obj_article1");
	
	// player
	// chain
	// chain
	// legion
	
	// next = down
	// prev = up
}

if legion.sync != prev_sync{
	chain = [];
	chain_nodes = chain_nodes_const;
	if legion.sync chain_nodes = floor(chain_nodes / 2);
}

if array_equals(chain, []){
	with obj_article2 if player_id == other instance_destroy(self);
	
	for (var i = 0; i < chain_nodes; i++){
		chain[i] = instance_create(round(x), round(y), "obj_article2");
		chain[i].height_mul = sin(pi * i / (chain_nodes - 1))
	}
	
	for (var i = 0; i < chain_nodes; i++){
		chain[i].prev = (i == 0) ? self : chain[i-1];
		chain[i].next = (i == chain_nodes - 1) ? legion : chain[i+1];
	}
}



with chain[0]{
	x = other.x - 16 * other.spr_dir * 0;
	y = other.y - 32;
}



if prev_sync != legion.sync && !legion.sync{
	with legion sound_play(other.sfx_astral_chain_legion_summon);
}

prev_sync = legion.sync;



if jab_timer jab_timer--;
else jab_progress = 0;



with asset_get("hit_fx_obj") if ("akira_obj_follow" in self){
	x = akira_obj_follow.x;
	y = akira_obj_follow.y;
}



if phone_landing nspecial_stall = 1;