///#args attack

// if attack == AT_JAB with obj_article1 if player_id == other && place_meeting(x, y, other) other.attack = AT_DSPECIAL;

if !(attack == AT_TAUNT || attack == AT_TAUNT_2 || attack == AT_PHONE) && rune_menu.state{
	move_cooldown[attack] = max(move_cooldown[attack], 1);
	exit;
}

if attack == AT_UAIR{
	set_hitbox_value(attack, 1, HG_WINDOW, 10);
	set_hitbox_value(attack, 2, HG_WINDOW, 10);
	set_hitbox_value(attack, 3, HG_WINDOW, 10);
	set_hitbox_value(attack, 4, HG_WINDOW, 10);
	set_hitbox_value(attack, 5, HG_WINDOW, 10);

	set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	
	if cur_spear{
		if spear_durability == 1{
			set_hitbox_value(attack, 4, HG_WINDOW, 2);
		}
		else{
			set_hitbox_value(attack, 1, HG_WINDOW, 2);
			set_hitbox_value(attack, 2, HG_WINDOW, 3);
			set_hitbox_value(attack, 3, HG_WINDOW, 4);
		}
		
		set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
		
		set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, spears[cur_spear].vfx[0]);
		set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, spears[cur_spear].vfx[0]);
		set_hitbox_value(attack, 3, HG_VISUAL_EFFECT, spears[cur_spear].vfx[0]);
		set_hitbox_value(attack, 4, HG_VISUAL_EFFECT, spears[cur_spear].vfx[1]);
	}
	
	else{
		set_hitbox_value(attack, 5, HG_WINDOW, 2);
	}
}

if attack == AT_FSTRONG || attack == AT_USTRONG{
	set_hitbox_value(attack, 1, HG_WINDOW, 10);
	set_hitbox_value(attack, 2, HG_WINDOW, 10);
	set_hitbox_value(attack, 3, HG_WINDOW, 10);
	set_hitbox_value(attack, 4, HG_WINDOW, 10);
	
	set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	
	if cur_spear{
		if spear_durability == 1{
			set_hitbox_value(attack, 3, HG_WINDOW, 3);
		}
		else{
			set_hitbox_value(attack, 1, HG_WINDOW, 3);
			set_hitbox_value(attack, 2, HG_WINDOW, 3);
		}
		
		set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
		
		set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, spears[cur_spear].vfx[0]);
		set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, spears[cur_spear].vfx[1]);
		set_hitbox_value(attack, 3, HG_VISUAL_EFFECT, spears[cur_spear].vfx[1]);
	}
	
	else{
		set_hitbox_value(attack, 4, HG_WINDOW, 3);
	}
}

if attack == AT_DSPECIAL{
	with obj_article1 if player_id == other{
		other.attack = AT_DSPECIAL_2;
		activation_queued = true;
	}
	with obj_article_solid if player_id == other{
		other.attack = AT_DSPECIAL_2;
		cracked = true;
	}
	if attack == AT_DSPECIAL_2{
		move_cooldown[attack] = 0;
		set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, cur_rune == RUNE_MAGNESIS);
		set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, cur_rune == RUNE_MAGNESIS);
	}
}

attack_had_spear = cur_spear > 0;



if attack == AT_TAUNT || attack == AT_DSPECIAL_2{
	phone_stopped_sounds = [];
}
else{
	muno_event_type = 2;
	user_event(14);
}