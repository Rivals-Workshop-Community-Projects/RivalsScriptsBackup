reflected = false;
was_reflected = false;

switch my_hitboxID.attack
{
	case AT_JAB:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    break;
    
    case AT_DATTACK:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), rainbow_larg);
    	fx.depth = hit_player_obj.depth - 1;
     }
    break;
    
    case AT_FTILT:
	 if my_hitboxID.hbox_num == 1 {
	 	 sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.9);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.3,1.1);
     }
    break;
    
    case AT_UTILT:
     if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.3,1.1);
     }
	 if my_hitboxID.hbox_num == 2 {
	 	 sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.9);
     }
    break;
    
    case AT_DTILT:
	 if my_hitboxID.hbox_num == 1 {
	 	 sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.3,1.1);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.1);
     }
    break;
    
	case AT_FSTRONG:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
    break;
    
    case AT_DSTRONG:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), heart_med);
    	fx.depth = hit_player_obj.depth - 1;
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
    	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), heart_larg);
    	fx.depth = hit_player_obj.depth - 1;
     	
     }
    break;
   
    case AT_FAIR:
	 if my_hitboxID.hbox_num == 1 {
	 	 sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.9);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.3,1.1);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.2);
     }
    break;
    
    case AT_BAIR:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
    	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), heart_larg);
    	fx.depth = hit_player_obj.depth - 1;
	 }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), heart_med);
    	fx.depth = hit_player_obj.depth - 1;
     }
    break;
    
    case AT_DAIR:
		if my_hitboxID.hbox_num == 1 {
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.25), vfx_dair_reappear);
    	fx.depth = hit_player_obj.depth - 1;
		window = 7;
		window_timer = 0;
		move_cooldown[AT_DAIR] = 30;
		old_vsp = -7;
	}
		if my_hitboxID.hbox_num == 2 {
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), dark_med);
    	fx.depth = hit_player_obj.depth - 1;
	}
    break;
    
    case AT_USPECIAL:
    if my_hitboxID.hbox_num == 1 {
	 	 sound_play(asset_get("sfx_abyss_hazard_hit"),false,noone,0.7);
	 	 var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), dark_med);
    	fx.depth = hit_player_obj.depth - 1;
     }
	 if my_hitboxID.hbox_num == 2 {
	 	 sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     break;
     
     case AT_DSPECIAL_2:
    	dspecial_enemy = hit_player_obj;
    	enemy_dspecial_orb += 1;
     break;
}