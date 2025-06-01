//Spear Attack Apply Torment Status
if ((my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.length == 80)
    || (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 3)
    || (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1)
    || (my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6))){
    if (!instance_exists(torment_opponent) && my_hitboxID.orig_player != hit_player_obj.player && hit_player_obj.clone == false){
	    torment_opponent = hit_player_obj;
	    torment = instance_create(torment_opponent.x, torment_opponent.y, "obj_article1");
	    sound_play(sound_get("torment_start"),false,noone,1.2);
    }
    else if (torment.state < 2 && hit_player_obj == torment_opponent){
        torment.state ++;
        torment.state_draw ++;
    }
}

//FSpecial Trigger Multihits on Torment Players
if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR) && my_hitboxID.hbox_num == 1 && instance_exists(torment)){
    if (instance_exists(torment_opponent) && hit_player_obj == torment_opponent){
    	fspecial_timer = 0;
	    if (torment.state == 0) fspecial_multihit = 17;
	    if (torment.state == 1) fspecial_multihit = 25;
	    if (torment.state == 2) fspecial_multihit = 33;
		instance_destroy(torment);
    }
}

//Applying torment damage to opponent on hit
if (instance_exists(torment_opponent) && my_hitboxID.attack != AT_DSPECIAL && hit_player_obj == torment_opponent){
	take_damage(torment_opponent.player, -1, torment.number_tens * 10 + torment.number_ones);
	torment.number_tens = 0;
	torment.number_ones = 1;
	torment.state_timer = 0;
//	spawn_hit_fx(torment.x, torment.y, 133);
}

//DSpecial Grab Code
if (my_hitboxID.attack == AT_DSPECIAL){
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	if (hit_player_obj == torment_opponent) hit_player_obj.spr_dir = spr_dir;
    	window = 4;
    	window_timer = 0;
		dspecial_grab = true;
		hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	    hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
	}
	else {
		dspecial_grab = false;
	}
	if (my_hitboxID.hbox_num == 2){
		hit_player_obj.hitstop = 27;
		take_damage(torment_opponent.player, -1, torment.number_tens * 10 + torment.number_ones);
		opponent_damage = get_player_damage(torment_opponent.player);
		if (torment.state == 0){
			instance_destroy(torment);
			instance_destroy(torment_opponent);
			torment_opponent = noone;
		}
		else {
			torment.number_tens = 0;
			torment.number_ones = 1;
			torment.state_timer = 0;
			torment.state --;
		}
	}
}
else {
	 dspecial_grab = false;
}

switch(my_hitboxID.attack){
	case AT_FTILT:
		if my_hitboxID.hbox_num == 1 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.5);
    	}
    break;
    case AT_UTILT:
		if my_hitboxID.hbox_num == 3 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4);
    	}
    break;
    case AT_FSTRONG:
		if my_hitboxID.hbox_num >= 1 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4, 0.8);
    	}
    break;
    case AT_USTRONG:
		if my_hitboxID.hbox_num >= 1 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4, 0.8);
    	}
    break;
    case AT_DSTRONG:
		if my_hitboxID.hbox_num == 3 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4);
    	}
    	if my_hitboxID.hbox_num == 6 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.5);
    	}
    break;
    case AT_NAIR:
    	if my_hitboxID.hbox_num >= 1 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.4, 1.1);
    	}
    break;
    case AT_FAIR:
		if my_hitboxID.hbox_num <= 3 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.5);
    	}
    	if my_hitboxID.hbox_num >= 4 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.4, 1.1);
    	}
    break;
    case AT_BAIR:
		if my_hitboxID.hbox_num == 1 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4);
    	}
    break;
    case AT_UAIR:
    	sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.5, 1);
    break;
    case AT_DAIR:
		if my_hitboxID.hbox_num == 1 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.5);
    	}
    	if my_hitboxID.hbox_num == 2 {
        	sound_play(sound_get("sfx_hit1"),false,noone,0.4, 1.1);
    	}
    break;
    case AT_NSPECIAL:
    	if my_hitboxID.hbox_num == 1 {
        	sound_play(sound_get("sfx_hit2"),false,noone,0.4);
    	}
    break;
	case AT_DSPECIAL:
        if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_waterhit_heavy"),false,noone,1.0);
     }
    break;
}