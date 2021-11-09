switch(my_hitboxID.attack){
	// case AT_DAIR:
	// case AT_DSTRONG:
	// 	if my_hitboxID.hbox_num != 2{
	// 		break;
	// 	}
	// case AT_FSTRONG:
	// case AT_USTRONG:
	// case AT_DSPECIAL:
	// 	sound_play(asset_get("sfx_clairen_tip_strong"));
	// 	// sound_play(asset_get("sfx_clairen_dspecial_counter_success"));
	// 	sound_play(asset_get("sfx_holy_lightning"), 0, noone, 1, 1.4);
		
	// case AT_NSPECIAL:
	// 	if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num < 3) break;
		
	// 	var h = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_wavelengths[ir]);
	// 	h.draw_angle = random_func(0, 30, true) - 15;
	// 	h.depth = depth - 1;
	// 	break;
	
	case AT_FSPECIAL:
		my_hitboxID.hitpause_timer = floor(hit_player_obj.hitstop);
		break;
}

if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_LIGHT_GIMMICK){
	if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_LIGHT_GIMMICK) == 1{
		sound_play(asset_get("sfx_clairen_tip_strong"));
		sound_play(asset_get("sfx_holy_lightning"), 0, noone, 1, 1.4);
	}
	
	var h = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_wavelengths[ir]);
	h.draw_angle = random_func(0, 30, true) - 15;
	h.depth = depth - 1;
	
	if hit_player_obj != self{
		hit_player_obj.glare_status_id = self;
		hit_player_obj.last_glare_id = self;
		hit_player_obj.glare_afterimages = [];
		
		with obj_article1 if player_id == other || player_id.muno_char_id == other.muno_char_id{
			spawn_hit_fx(x, y, other.vfx_wavelengths[other.ir]);
			var h = spawn_hit_fx(x, y + 20, other.vfx_sparkles_up);
			h.depth = depth - 1;
		}
	}
}

if hit_player_obj.glare_status_id = self{
	hit_player_obj.orig_old_hsp = hit_player_obj.old_hsp;
	hit_player_obj.orig_old_vsp = hit_player_obj.old_vsp;
}
		
with obj_article1 if player_id == other || player_id.muno_char_id == other.muno_char_id{
	if grabbed_player == other.hit_player_obj{
		grabbed_player.glare_status_id = noone;
		grabbed_player = noone;
	}
}