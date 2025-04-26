
//---------------- Initialise Player Variables
with(oPlayer)
{
	//if(state == PS_FIRST_JUMP)
	//	print(image_number);
	//TODO: fix this is different for base cast, so need to manually animate during disguise
	
	if(get_match_setting(SET_RUNES) && other.player != self.player)
		continue;

	if(other.playerSmallSprites[player-1] == noone)
	{
		other.playerSmallSprites[player-1] = small_sprites;
		
		other.playerLandSounds[player-1] = land_sound;
		other.playerLandingLagSounds[player-1] = landing_lag_sound;
		other.playerWaveLandSounds[player-1] = waveland_sound;
		other.playerJumpSounds[player-1] = jump_sound;
		other.playerDjumpSounds[player-1] = djump_sound;
		other.playerAirdodgeSounds[player-1] = air_dodge_sound;
		
		other.players_hurtbox_spr[player-1] = hurtbox_spr;
		other.players_crouchbox_spr[player-1] = crouchbox_spr;
		other.players_air_hurtbox_spr[player-1] = air_hurtbox_spr;
		other.players_hitstun_hurtbox_spr[player-1] = hitstun_hurtbox_spr;
		other.players_knockback_adj[player-1] = knockback_adj;
		other.players_walk_speed[player-1] = walk_speed;
		other.players_walk_accel[player-1] = walk_accel;
		other.players_walk_turn_time[player-1] = walk_turn_time;
		other.players_initial_dash_time[player-1] = initial_dash_time;
		other.players_initial_dash_speed[player-1] = initial_dash_speed;
		other.players_dash_speed[player-1] = dash_speed;
		other.players_dash_turn_time[player-1] = dash_turn_time;
		other.players_dash_turn_accel[player-1] = dash_turn_accel;
		other.players_dash_stop_time[player-1] = dash_stop_time;
		other.players_dash_stop_percent[player-1] = dash_stop_percent;
		other.players_ground_friction[player-1] = ground_friction;
		other.players_moonwalk_accel[player-1] = moonwalk_accel;
		other.players_max_djumps[player-1] = max_djumps;
		other.players_jump_start_time[player-1] = jump_start_time;
		other.players_jump_speed[player-1] = jump_speed;
		other.players_short_hop_speed[player-1] = short_hop_speed;
		other.players_djump_speed[player-1] = djump_speed;
		other.players_jump_change[player-1] = jump_change;
		other.players_djump_accel[player-1] = djump_accel;
		other.players_djump_accel_start_time[player-1] = djump_accel_start_time;
		other.players_djump_accel_end_time[player-1] = djump_accel_end_time;
		other.players_leave_ground_max[player-1] = leave_ground_max;
		other.players_air_max_speed[player-1] = air_max_speed;
		other.players_max_jump_hsp[player-1] = max_jump_hsp;
		other.players_air_accel[player-1] = air_accel;
		other.players_air_friction[player-1] = air_friction;
		other.players_double_jump_time[player-1] = double_jump_time;
		other.players_gravity_speed[player-1] = gravity_speed;
		other.players_hitstun_grav[player-1] = hitstun_grav;
		other.players_max_fall[player-1] = max_fall;
		other.players_fast_fall[player-1] = fast_fall;
		other.players_land_time[player-1] = land_time;
		other.players_prat_land_time[player-1] = prat_land_time;
		other.players_prat_fall_accel[player-1] = prat_fall_accel;
		other.players_walljump_hsp[player-1] = walljump_hsp;
		other.players_walljump_vsp[player-1] = walljump_vsp;
		other.players_walljump_time[player-1] = walljump_time;
		other.players_roll_forward_max[player-1] = roll_forward_max;
		other.players_roll_backward_max[player-1] = roll_backward_max;
		other.players_wave_land_time[player-1] = wave_land_time;
		other.players_wave_land_adj[player-1] = wave_land_adj;
		other.players_wave_friction[player-1] = wave_friction;
		other.players_techroll_speed[player-1] = techroll_speed;
		other.players_air_dodge_speed[player-1] = air_dodge_speed;
		other.players_char_height[player-1] = char_height;
		other.players_bubble_x[player-1] = bubble_x;
		other.players_bubble_y[player-1] = bubble_y;
		
		other.players_wall_frames[player-1] = wall_frames;
		other.players_dodge_startup_frames[player-1] = dodge_startup_frames;
		other.players_dodge_active_frames[player-1] = dodge_active_frames;
		other.players_dodge_recovery_frames[player-1] = dodge_recovery_frames;
		other.players_tech_active_frames[player-1] = tech_active_frames;
		other.players_tech_recovery_frames[player-1] = tech_recovery_frames;
		other.players_techroll_startup_frames[player-1] = techroll_startup_frames;
		other.players_techroll_active_frames[player-1] = techroll_active_frames;
		other.players_techroll_recovery_frames[player-1] = techroll_recovery_frames;
		other.players_air_dodge_startup_frames[player-1] = air_dodge_startup_frames;
		other.players_air_dodge_active_frames[player-1] = air_dodge_active_frames;
		other.players_air_dodge_recovery_frames[player-1] = air_dodge_recovery_frames;
		other.players_roll_forward_startup_frames[player-1] = roll_forward_startup_frames;
		other.players_roll_forward_active_frames[player-1] = roll_forward_active_frames;
		other.players_roll_forward_recovery_frames[player-1] = roll_forward_recovery_frames;
		other.players_roll_back_startup_frames[player-1] = roll_back_startup_frames;
		other.players_roll_back_active_frames[player-1] = roll_back_active_frames;
		other.players_roll_back_recovery_frames[player-1] = roll_back_recovery_frames;
		other.players_idle_anim_speed[player-1] = idle_anim_speed;
		other.players_walk_anim_speed[player-1] = walk_anim_speed;
		other.players_dash_anim_speed[player-1] = dash_anim_speed;
		other.players_crouch_anim_speed[player-1] = crouch_anim_speed;
		other.players_pratfall_anim_speed[player-1] = pratfall_anim_speed;
	}
	
	if(other.player == self.player)
		continue;

	if(other.playerTauntAttackValues[player-1] == noone)
	{
		var tauntAttackValues = ds_map_create();
		ds_map_set(tauntAttackValues, AG_CATEGORY, get_attack_value(AT_TAUNT, AG_CATEGORY));
		ds_map_set(tauntAttackValues, AG_SPRITE, get_attack_value(AT_TAUNT, AG_SPRITE));
		ds_map_set(tauntAttackValues, AG_AIR_SPRITE, get_attack_value(AT_TAUNT, AG_AIR_SPRITE));
		ds_map_set(tauntAttackValues, AG_HURTBOX_SPRITE, get_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE));
		ds_map_set(tauntAttackValues, AG_HURTBOX_AIR_SPRITE, get_attack_value(AT_TAUNT, AG_HURTBOX_AIR_SPRITE));
		ds_map_set(tauntAttackValues, AG_NUM_WINDOWS, get_attack_value(AT_TAUNT, AG_NUM_WINDOWS));
		ds_map_set(tauntAttackValues, AG_HAS_LANDING_LAG, get_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG));
		ds_map_set(tauntAttackValues, AG_OFF_LEDGE, get_attack_value(AT_TAUNT, AG_OFF_LEDGE));
		ds_map_set(tauntAttackValues, AG_LANDING_LAG, get_attack_value(AT_TAUNT, AG_LANDING_LAG));
		ds_map_set(tauntAttackValues, AG_STRONG_CHARGE_WINDOW, get_attack_value(AT_TAUNT, AG_STRONG_CHARGE_WINDOW));
		ds_map_set(tauntAttackValues, AG_USES_CUSTOM_GRAVITY, get_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY));
		other.playerTauntAttackValues[player-1] = tauntAttackValues;
		
		var tauntWindowValues = ds_list_create();
		for(var i = 1; i < get_attack_value(AT_TAUNT, AG_NUM_WINDOWS); i++)
		{
		    var tauntWindowValuesWindow = ds_map_create();
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_TYPE, get_window_value(AT_TAUNT, i, AG_WINDOW_TYPE));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_LENGTH, get_window_value(AT_TAUNT, i, AG_WINDOW_LENGTH));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_TAUNT, i, AG_WINDOW_ANIM_FRAMES));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_ANIM_FRAME_START, get_window_value(AT_TAUNT, i, AG_WINDOW_ANIM_FRAME_START));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HSPEED, get_window_value(AT_TAUNT, i, AG_WINDOW_HSPEED));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_VSPEED, get_window_value(AT_TAUNT, i, AG_WINDOW_VSPEED));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HSPEED_TYPE, get_window_value(AT_TAUNT, i, AG_WINDOW_HSPEED_TYPE));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_VSPEED_TYPE, get_window_value(AT_TAUNT, i, AG_WINDOW_VSPEED_TYPE));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HAS_CUSTOM_FRICTION, get_window_value(AT_TAUNT, i, AG_WINDOW_HAS_CUSTOM_FRICTION));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_CUSTOM_AIR_FRICTION, get_window_value(AT_TAUNT, i, AG_WINDOW_CUSTOM_AIR_FRICTION));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_CUSTOM_GROUND_FRICTION, get_window_value(AT_TAUNT, i, AG_WINDOW_CUSTOM_GROUND_FRICTION));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_CUSTOM_GRAVITY, get_window_value(AT_TAUNT, i, AG_WINDOW_CUSTOM_GRAVITY));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HAS_WHIFFLAG, get_window_value(AT_TAUNT, i, AG_WINDOW_HAS_WHIFFLAG));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_INVINCIBILITY, get_window_value(AT_TAUNT, i, AG_WINDOW_INVINCIBILITY));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HITPAUSE_FRAME, get_window_value(AT_TAUNT, i, AG_WINDOW_HITPAUSE_FRAME));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_CANCEL_TYPE, get_window_value(AT_TAUNT, i, AG_WINDOW_CANCEL_TYPE));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_CANCEL_FRAME, get_window_value(AT_TAUNT, i, AG_WINDOW_CANCEL_FRAME));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_HAS_SFX, get_window_value(AT_TAUNT, i, AG_WINDOW_HAS_SFX));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_SFX, get_window_value(AT_TAUNT, i, AG_WINDOW_SFX));
			ds_map_set(tauntWindowValuesWindow, AG_WINDOW_SFX_FRAME, get_window_value(AT_TAUNT, i, AG_WINDOW_SFX_FRAME));
			ds_list_add(tauntWindowValues, tauntWindowValuesWindow);
		}
		other.playerTauntWindowValues[player-1] = tauntWindowValues;
		
		//TODO: also do hitboxes:
		//set_num_hitboxes(AT_TAUNT_2, 1);
		//set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
	}
}