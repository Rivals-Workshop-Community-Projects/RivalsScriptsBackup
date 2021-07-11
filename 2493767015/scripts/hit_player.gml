if (attack != AT_FTILT && attack != AT_NAIR && attack != AT_USPECIAL){
	combo_counter++;
	combo_timer = 0;
}

if (attack == AT_FTILT){
	combo_timer = 0;
	if (my_hitboxID.hbox_num == 2){
		combo_counter++;
	}
}

if (attack == AT_NAIR){
	combo_timer = 0;
	if (my_hitboxID.hbox_num == 2){
		combo_counter++;
	}
}

if (attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_forsburn_combust"));
}

if (attack == AT_USPECIAL){
	combo_timer = 0;
	if (my_hitboxID.hbox_num == 6){
		combo_counter++;
	}

	hit_player_obj.x = lerp(hit_player_obj.x, x, .15);
	hit_player_obj.y = lerp(hit_player_obj.y, y-60, .1);

        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -6);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 100);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 100);

		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -6);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 125);
		set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 125);
}

if (phone_cheats[cheat_hud] = 0){
if (attack == AT_FTILT || attack == AT_DATTACK || attack == AT_FAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FSPECIAL || attack == AT_USPECIAL && my_hitboxID.hbox_num == 6){
	if (combo_counter >= 3){
		star_meter++;
		combo_timer = 0;
		combo_counter = 0;
		sound_play(sound_get("star_get"));
		spawn_hit_fx(x-100*spr_dir, y-128, star_get);
	}
}

if (attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5 && times_dodged >= 3){
	times_dodged = 0;
	star_meter++;
	sound_play(sound_get("star_get"));
	spawn_hit_fx(x-100*spr_dir, y-128, star_get);
}

if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG){
	if (hit_player_obj.prev_state == PS_ATTACK_GROUND || hit_player_obj.prev_state == PS_ATTACK_AIR){
		star_meter++;
		sound_play(sound_get("star_get"));
		spawn_hit_fx(x-100*spr_dir, y-128, star_get);
	}
}

if (hit_player_obj.prev_state == PS_ATTACK_GROUND){
	if (hit_player_obj.attack == AT_TAUNT){
	star_meter++;
	sound_play(sound_get("star_get"));
	spawn_hit_fx(x-100*spr_dir, y-128, star_get);
	}
}
}