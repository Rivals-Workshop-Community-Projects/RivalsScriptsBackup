{
	/*====Character Variables====*/
	{
		idle_anim_speed = idle_anim_speed + 0.01;
		crouch_anim_speed = crouch_anim_speed + 0.015;
		dash_anim_speed = 0.5;
		knockback_adj = knockback_adj + 0.03;
		ground_friction = ground_friction + 0.1;
		moonwalk_accel = moonwalk_accel + 0.3;
		walk_turn_time = 4;
		initial_dash_time = 10;
		initial_dash_speed = initial_dash_speed + 1.5;
		dash_speed = initial_dash_speed + 1.75;
		dash_turn_time = 6;
		dash_turn_accel = 1.66;
		dash_stop_percent = dash_stop_percent * (2/3);
		wave_land_time = 8;
		wave_land_adj = wave_land_adj + 0.2;
		techroll_speed = techroll_speed + 1;
		roll_forward_max = roll_forward_max + 1.5;
		roll_backward_max = roll_backward_max + 1.5;
		land_time = 3;
		hitstun_grav = hitstun_grav - 0.01;
	}
	/*====Dash Attack====*/
	{
		at_type = AT_DATTACK;
		at_str = "dattack";
		at_windows = 4;
		at_total_windows = 4;
		at_hboxes = 3;
		at_total_hboxes = 3;
		set_attack_value(at_type, AG_SPRITE, sprite_get(at_str));
		set_attack_value(at_type, AG_AIR_SPRITE, sprite_get(at_str));
		set_attack_value(at_type, AG_HURTBOX_SPRITE, sprite_get(at_str + "_hurt"));
		set_attack_value(at_type, AG_HURTBOX_AIR_SPRITE, sprite_get(at_str + "_hurt"));
		set_attack_value(at_type, AG_NUM_WINDOWS, at_windows);

		set_num_hitboxes(at_type, at_hboxes);

		SWV(AG_WINDOW_HSPEED, [2, 5.5, 0, 0]);

		SHV(HG_BASE_KNOCKBACK, [8, 8, 11]);
	}
}

sprite_change_offset("vanda_hud" + string(player), 0, vanda_hud_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4) - 2);

set_synced_var(player, vanda_portrait_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4));

/*====Functions====*/
#define SWV(arg0, arg1)
    for(var i = 0; i < at_total_windows; i++) {set_window_value(at_type, i+1, arg0, arg1[i]);}

#define SHV(arg0, arg1)
    for(var i = 0; i < at_total_hboxes; i++) {set_hitbox_value(at_type, i+1, arg0, arg1[i]);}