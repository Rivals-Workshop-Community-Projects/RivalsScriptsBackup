//Dattack Stuff
if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num != 6 && !hit_player_obj.super_armor && hit_player_obj.soft_armor < my_hitboxID.damage){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;	
		grabbedid.ungrab = 0;
    }
}

//Dattack Stuff
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num < 7 && !hit_player_obj.super_armor && hit_player_obj.soft_armor < my_hitboxID.damage){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
    }
}

//Strong SFX Layering
if(attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG){
	if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 7){
		sound_play(asset_get("sfx_ell_steam_hit"))
	}
	if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)){
		sound_play(asset_get("sfx_ell_steam_hit"))
	}
}

//Steam Wall Dismiss
if(!(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) && !(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 3)){
	if(steam_wall_no_down <= 0){
		steam_wall_dismiss = true
	}
}

//Steam Geyser Scan Hitbox Extended Hitstun If Enemy Is Hit
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
	if(other.state == PS_HITSTUN || other.state == PS_HITSTUN_LAND){
		other.hitpause = true
		other.hitstop = 8
		other.hitstop_full = 8
		other.old_hsp = 0
		other.old_vsp = 0
	}
}

if(my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 7)){
	hit_player_obj.overheat = 99
}

//Steam Through Damage
if(my_hitboxID.attack != AT_USPECIAL &&
	my_hitboxID.attack != AT_FSPECIAL &&
	my_hitboxID.attack != AT_DSPECIAL &&
	my_hitboxID.attack != AT_NSPECIAL){
	if(steam < 100){
		if(my_hitboxID.type == 1){
			steam += my_hitboxID.damage * steam_generation
		}
	}
}

//Geyser Activation
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
	with(my_hitboxID.geyser_id){
		if(player_id.big_geysers){
			state = 5
			state_timer = 0
		}else{
			state = 3
			state_timer = 0
		}
		image_index = 0
	}
}

if(hit_player_obj.overheat < 100){
	hit_player_obj.overheat += (round((my_hitboxID.damage * 4) * power(hit_player_obj.knockback_adj, 2))) * overheat_gen_multiplier
	if(hit_player_obj.overheat > 100){
		hit_player_obj.overheat = 100
	}
}else if(!(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2)){
	green_indicator_timer = 50
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 25, vfx_nspec_cancel)
	sound_play(sound_get("sfx_tired"))
	if(has_rune("I") || all_runes){
		hit_player_obj.overheat = 50
	}else{
		hit_player_obj.overheat = 0
	}
	
	//Go boom
	if(has_rune("M") || all_runes){
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, my_hitboxID.kb_angle);
		set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, my_hitboxID.hit_flipper);
		var boom_hitbox = create_hitbox(AT_EXTRA_1, 1, hit_player_obj.x, hit_player_obj.y - 25)
	}
	
	//Chain AHHH
	if(has_rune("O") || all_runes){
		hit_player_obj.chained = true
        hit_player_obj.chained_player = self
        hit_player_obj.chain_break_timer = 0
        if(hit_player_obj.chain_stack < 3){
        	hit_player_obj.chain_stack += 1
        }
	}
	steam = 100
}
hit_player_obj.overheat_timer = 120 + my_hitboxID.hitpause

//Runes

if(has_rune("J") || all_runes){
	if(my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num > 8|| my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_NAIR){
		move_cooldown[AT_NSPECIAL] = 0
		cancel_buffer = true
	}
}