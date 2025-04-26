{
	/*====Character Variables====*/
	{
	}
	/*====DSpecial (Air)====*/
	{
		at_type = AT_DSPECIAL_AIR;
		at_str = "dspecial";
		at_windows = 4;
		at_total_windows = 5;
		at_hboxes = 1;
		at_total_hboxes = 2;
		at_null_win = [0, 0, 0, 0, 0];
		at_null_hb = [0, 0];
		set_attack_value(at_type, AG_SPRITE, sprite_get(at_str));
		set_attack_value(at_type, AG_AIR_SPRITE, sprite_get(at_str));
		set_attack_value(at_type, AG_HURTBOX_SPRITE, sprite_get(at_str + "_hurt"));
		set_attack_value(at_type, AG_HURTBOX_AIR_SPRITE, sprite_get(at_str + "_hurt"));
		set_attack_value(at_type, AG_NUM_WINDOWS, at_windows);
		set_attack_value(at_type, AG_CATEGORY, 1);
		set_attack_value(at_type, AG_HAS_LANDING_LAG, 1);
		set_attack_value(at_type, AG_OFF_LEDGE, 0);
		set_attack_value(at_type, AG_LANDING_LAG, 16);
		set_attack_value(at_type, AG_USES_CUSTOM_GRAVITY, 1);
		set_attack_value(at_type, AG_MUNO_ATTACK_COOLDOWN, -999);

		set_num_hitboxes(at_type, at_hboxes);

		SWV(AG_WINDOW_LENGTH, [17, 28, 64, 12, 16]);

		dspecial_circle_time_in = get_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH);
		dspecial_circle_time_out = 8;
		dspecial_start_time = get_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
	}
}

sprite_change_offset("vanda_hud" + string(player), 0, vanda_hud_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4) - 2);

set_synced_var(player, vanda_portrait_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4));

/*====Functions====*/
#define SWV(arg0, arg1)
    for(var i = 0; i < at_total_windows; i++) {set_window_value(at_type, i+1, arg0, arg1[i]);}

#define SHV(arg0, arg1)
    for(var i = 0; i < at_total_hboxes; i++) {set_hitbox_value(at_type, i+1, arg0, arg1[i]);}