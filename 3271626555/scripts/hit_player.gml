if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_FSPECIAL_AIR 
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2)){
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	        if ((enemy_hitbox_out == true && enemy_attacks == true) || can_still_parry == true){
	        	hit_player_obj.state = PS_PRATFALL;
	        	hit_player_obj.orig_knock = 0;
	        	enemy_pratland = hit_player_obj.prat_land_time;
	        	hit_player_obj.prat_land_time = 60;
	        	enemy_attacks = false;
	        	enemy_hitbox_out = false;
	        	suppress_music = 60;
	        	hitstop = 20;
	        	spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-20, 304);
	        	sound_play(sound_get("parry_success"));
	        	with hit_player_obj {
				    old_hsp = 0
				    old_vsp = 0
				}
	        }
	  }
}

if (my_hitboxID.attack == AT_DAIR){
	old_vsp = -8;
	can_fast_fall = true;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_DSPECIAL){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false && hit_player_obj.clone == false){
	        if (my_hitboxID.hbox_num == 2 && backstab == true){
		        backstab_grab = true;
		        window = 4;
	        }
	        if (my_hitboxID.hbox_num <= 2 && (hit_player_obj.prev_state == PS_PRATLAND || hit_player_obj.prev_state == PS_PRATFALL)){
		        backstab_grab = true;
		        window = 4;
	        }
	        if (my_hitboxID.hbox_num == 3){
	            backstab_grab = false;
	        }
	        if (my_hitboxID.hbox_num == 3 || (my_hitboxID.hbox_num == 1 && backstab == true)){
	        	hit_player_obj.spr_dir = spr_dir; 
	        }
	  }
}
else {
    backstab_grab = false;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_USTRONG){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 2){
		        ustrong_grab = true;
	        } else {
	            ustrong_grab = false;
	        }
	        
	  }
else {
    ustrong_grab = false;
}
switch my_hitboxID.attack {
    case AT_USTRONG:
    if my_hitboxID.hbox_num <= 5 {
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
    }
    if my_hitboxID.hbox_num == 6 {
        sound_play(asset_get("sfx_ell_uspecial_explode")); 
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
        sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
    }
    break;
}
   
