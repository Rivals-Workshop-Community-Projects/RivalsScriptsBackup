{
	/*====Character Variables====*/
	{
		vanda_max_fall = 8.75;
		vanda_fast_fall = 14.5;
		idle_anim_speed = idle_anim_speed + 0.01;
		crouch_anim_speed = crouch_anim_speed + 0.015;
		knockback_adj = knockback_adj + 0.03;
		prat_land_time = max(2, prat_land_time - 4);
		max_fall = vanda_max_fall;
		fast_fall = vanda_fast_fall;
		gravity_speed = max(0.2, gravity_speed - 0.04);
		hitstun_grav = hitstun_grav - 0.01;
		djump_speed = djump_speed + 0.4;
		max_djumps = max_djumps + 2;
		walljump_hsp = max(4, walljump_hsp - 0.6);
		walljump_vsp = walljump_vsp + 2.1;
		walljump_time = 18;
		air_dodge_speed = air_dodge_speed + 0.8;
	}
}

sprite_change_offset("vanda_hud" + string(player), 0, vanda_hud_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4) - 2);

set_synced_var(player, vanda_portrait_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4));

/*====Functions====*/
#define SWV(arg0, arg1)
    for(var i = 0; i < at_total_windows; i++) {set_window_value(at_type, i+1, arg0, arg1[i]);}

#define SHV(arg0, arg1)
    for(var i = 0; i < at_total_hboxes; i++) {set_hitbox_value(at_type, i+1, arg0, arg1[i]);}