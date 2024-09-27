if (my_hitboxID.attack == AT_FSPECIAL){
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	        if (enemy_attacks == true){
	        	hit_player_obj.state = PS_PRATFALL;
	        	enemy_pratland = hit_player_obj.prat_land_time;
	        	hit_player_obj.prat_land_time = parry_timer;    //Change this value in init.gml
	        	suppress_music = 60;
	        	enemy_attacks = false;
	        	sound_play(sound_get("sprj_kill_chance"));
	        	with hit_player_obj {
				    old_hsp = 0
				    old_vsp = 0
				}
	        }
	  }
}

switch(my_hitboxID.attack){
	case AT_EXTRA_2:
	case AT_TAUNT_2:
	case AT_UTHROW:
    	if my_hitboxID.hbox_num == 3 {
        	sound_play(sound_get("hit4"),false,noone,1.0);
    	}
	break;
	break;
    case AT_DSPECIAL:
    	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(sound_get("qoedil_hit_bite"),false,noone,0.8,0.9);
     }
    break;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_VICERAL){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false && hit_player_obj.clone == false){
	        if (my_hitboxID.hbox_num == 1){
		        viceral_grab = true;
		        window = 4;
		        window_timer = 0;
	        }
	        else viceral_grab = false;
	  }
	if (my_hitboxID.hbox_num == 2){
		silver_bullets += 3;
		move_cooldown[AT_DSPECIAL] = 0;
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_DSTRONG] = 0;
		if (silver_bullets >= 20) silver_bullets = 20;
	}
}
else {
    viceral_grab = false;
}