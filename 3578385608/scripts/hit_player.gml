if alcohol_boost{
	sound_play(sound_get("alcohol_hit"));
	take_damage(hit_player_obj.player, player, ceil(my_hitboxID.damage*.4));
}
hit_player_obj.breaking_bad_freezable = 0;
switch my_hitboxID.attack{
	case AT_FTILT:
	if my_hitboxID.hbox_num == 2{
		sound_play(asset_get("sfx_ell_steam_hit"));
		sound_play(asset_get("sfx_blow_medium2"));
	}
	break;
	
	case AT_USTRONG:
	sound_play(asset_get("sfx_ell_fist_explode"));
	break;
	
	case AT_UAIR:
	sound_play(asset_get("sfx_blow_medium2"));
	break;
	
	case AT_FAIR:
	if my_hitboxID.hbox_num%3 <= 2 && old_vsp < fast_fall old_vsp = -2;
	break;
	
	case AT_DAIR:
	if my_hitboxID.hbox_num == 1 && old_vsp < fast_fall old_vsp = -6;
	break;
	
	case AT_DSPECIAL:
	if my_hitboxID.hbox_num != 1 break;
	sound_play(asset_get(hit_player_obj == self? "sfx_may_arc_coineat": "sfx_may_arc_hit"));
	if hit_player_obj != self{
		hit_player_obj.breaking_bad_handler = noone;
		hit_player_obj.breaking_bad_meth_pos_timer = max(1, (10 - 2*hit_player_obj.breaking_bad_meth_stack)*60);
		hit_player_obj.breaking_bad_meth_neg_timer = 0;
		hit_player_obj.breaking_bad_meth_stack = clamp(hit_player_obj.breaking_bad_meth_stack+1, 0, 5);
	}else{
		ego_boost = 1400;
		var m = spawn_hit_fx(x, y - 80, egocollect_fx);
		m.depth = depth-2;
		m.follow_id = self;
		m.follow_time = null;
	}
	break;
	
	case AT_NSPECIAL:
	if my_hitboxID.hbox_num == 1 switch my_hitboxID.kill_me{
		case 0: //Liquid Nitrogen
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 29);
		sound_play(sound_get("steam_release"));
		hit_player_obj.breaking_bad_handler = noone;
		hit_player_obj.breaking_bad_nitrogen += 180 * (2 + 2*(ego_boost>0))*2;
		hit_player_obj.breaking_bad_freezable_times += 3 + 2*(ego_boost>0);
		break;
		case 1: //Lily of the Valley
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 311);
		hit_player_obj.breaking_bad_handler = noone;
		hit_player_obj.breaking_bad_lily = 600 + 600*(ego_boost>0);
		break;
		case 2: //Superheated Water
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 112);
		create_hitbox(AT_NSPECIAL, 3, my_hitboxID.x, my_hitboxID.y);
		create_hitbox(AT_NSPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
		sound_play(sound_get("steam_release"));
		sound_play(asset_get("sfx_mol_norm_explode"));
		break;
		case 3: //Hydrofluoric Acid
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 117);
		create_hitbox(AT_NSPECIAL, 3, my_hitboxID.x, my_hitboxID.y);
		create_hitbox(AT_NSPECIAL, 5, my_hitboxID.x - 30, my_hitboxID.y);
		create_hitbox(AT_NSPECIAL, 5, my_hitboxID.x + 30, my_hitboxID.y);
		sound_play(asset_get("sfx_waterhit_medium"));
		break;
		case 4: //Phosphene
		var g = create_hitbox(AT_NSPECIAL, 6, floor(lerp(my_hitboxID.x, hit_player_obj.x, .5)), floor(lerp(my_hitboxID.y, hit_player_obj.y, .5)));
		g.player = my_hitboxID.player;
		g.reflected = my_hitboxID.reflected;
		sound_play(sound_get("steam_release"));
		break;
		case 5: //Fulminated Mercury
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 261);
		create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x, my_hitboxID.y);
		sound_play(asset_get("sfx_mol_norm_explode"));
		break;
	}
	if my_hitboxID.hbox_num == 4 && hit_player_obj.y <= my_hitboxID.y+4{
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 112);
		create_hitbox(AT_NSPECIAL, 3, my_hitboxID.x, my_hitboxID.y);
		sound_play(sound_get("steam_release"));
		sound_play(asset_get("sfx_mol_norm_explode"));
	}
	if my_hitboxID.hbox_num == 5 && hit_player_obj.vsp >= 0 && !hit_player_obj.hitpause{
		if !(get_gameplay_time()%30) || !hit_player_obj.freemd take_damage(hit_player_obj.player, player, 1);
		my_hitboxID.can_hit[hit_player_obj.player] = 1;
		hit_player_obj.breaking_bad_walt_fall = 2;
		hit_player_obj.breaking_bad_handler = noone;
	}
	if my_hitboxID.hbox_num == 6 my_hitboxID.can_hit[hit_player_obj.player] = -7;
	break;
}