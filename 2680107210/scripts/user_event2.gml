{
	/*====Character Variables====*/
	{
		idle_anim_speed = idle_anim_speed + 0.01;
		crouch_anim_speed = crouch_anim_speed + 0.015;
		knockback_adj = knockback_adj + 0.04;
		leave_ground_max = leave_ground_max + 4.67;
		air_max_speed = air_max_speed + 2;
		air_accel = air_accel + 0.13;
		air_friction = max(0.01, air_friction - 0.006);
		hitstun_grav = hitstun_grav - 0.01;
		max_jump_hsp = max_jump_hsp + 0.7;
		jump_change = jump_change + 0.5;
		max_jump_hsp_dsh = max_jump_hsp_dsh + 1.3;
		max_jump_hsp_normal = max_jump_hsp_normal + 0.9;
	}
}

sprite_change_offset("vanda_hud" + string(player), 0, vanda_hud_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4) - 2);

set_synced_var(player, vanda_portrait_offset * (disabled_nspecial + disabled_fspecial * 2 + disabled_uspecial * 4));

/*====Functions====*/
#define SWV(arg0, arg1)
    for(var i = 0; i < at_total_windows; i++) {set_window_value(at_type, i+1, arg0, arg1[i]);}

#define SHV(arg0, arg1)
    for(var i = 0; i < at_total_hboxes; i++) {set_hitbox_value(at_type, i+1, arg0, arg1[i]);}