//article1_post_draw
var display_radius_index = 2;

switch(microstate)
{
	case PS_ATTACHED_PLAYER:
	{
		/*if(!owner_no_rune_f || rune_f_triggered)*/
		{
			with(player_id)
			{
				shader_start();
				var alph = clamp(lerp(1.2, -0.5, other.stuck_detonation_timer / nspecial_detonate_delay), 0, 1);
				draw_sprite_ext(other.s_nspecial_stuck_mask, 0, other.x, other.y, other.spr_dir, 1, 0, c_white, alph);
				
				//other.hazard_color
				var alph = clamp(lerp(0.4, -0.25, other.stuck_detonation_timer / nspecial_detonate_delay), 0, 1);
				draw_sprite_ext(other.s_nspecial_stuck_mask, 1, other.x, other.y, other.spr_dir, 1, 0, other.hazard_color, alph);
				shader_end();
			}
		}
		break;
	}
	case PS_ATTACHED_GROUND_ARMING:
	{
		if(!owner_no_rune_f)
		{
			with(player_id)
			{
				shader_start();
				{
					var alph = clamp(lerp(-1.2, 0.5, other.state_timer / nspecial_arm_time), 0, 0.5);
					draw_sprite_ext(other.s_nspecial_hazard_radius, display_radius_index, other.x, other.y, other.spr_dir, 1, 0, c_white, alph);
				}
				shader_end();
			}
		}
		break;
	}
	case PS_ATTACHED_GROUND_ARMED:
	{
		if(!owner_no_rune_f)
		{
			with(player_id)
			{
				shader_start();
				{
					draw_sprite_ext(other.s_nspecial_hazard_radius, display_radius_index, other.x, other.y, other.spr_dir, 1, 0, c_white, 0.5);
				}
				shader_end();
			}
		}
		break;
	}
	case PS_ATTACHED_GROUND_FUSING:
	{
		with(player_id)
		{
			shader_start();
			{
				var alph = clamp(lerp(1.2, 0.4, other.stuck_detonation_timer / nspecial_hazard_detonation_delay), 0, 1);
				draw_sprite_ext(other.s_nspecial_hazard_mask, 0, other.x, other.y, other.spr_dir, 1, 0, c_white, alph);
				
				//haz
				var alph = clamp(lerp(0.7, 0.2, other.stuck_detonation_timer / nspecial_hazard_detonation_delay), 0, 1);
				draw_sprite_ext(other.s_nspecial_hazard_mask, 1, other.x, other.y, other.spr_dir, 1, 0, other.hazard_color, alph);
			}
			shader_end();
		}
		break;
	}
}
if(player_id.phone_cheats[player_id.CHEAT_DEBUG] == 1)
{
	draw_debug_text(x, y - 40, "DDHD: " + string(dont_do_hit_detection));
	draw_debug_text(x, y - 60, "PCH: " + string(player_can_hit));
	draw_debug_text(x, y - 80, "HBG: " + string(player_id.nspecial_hbox_group[@index][@ player_id.player-1][@ AT_DAIR]));
	
	/*draw_debug_text(x, y - 80, "State: " + string(microstate));
	draw_debug_text(x, y - 64, "State Timer: " + string(state_timer));
	draw_debug_text(x, y + 16, "HSP, VSP: " + string(hsp) + ", " + string(vsp));
	//draw_debug_text(x, y + 32, "was_bashed: " + string(was_bashed));
	draw_debug_text(x, y + 48, "was_parried: " + string(was_parried));
	draw_debug_text(x, y + 64, "my_hitbox " + string(my_hitbox));
	if(my_hitbox != noone && instance_exists(my_hitbox))
	{
		draw_debug_text(x, y + 80, "my_hitbox.player: " + string(my_hitbox.player));
		draw_debug_text(x, y + 96, "my_hitbox.orig_player: " + string(my_hitbox.orig_player));
		draw_debug_text(x, y + 96 + 16, "my_hitbox.player_id: " + string(my_hitbox.player_id));
	}
	draw_debug_text(x, y + 112 + 32, "nearby_enemy: " + string(nearby_enemy));
	draw_debug_text(x, y + 128 + 32, "attachable: " + string(attachable));
	draw_debug_text(x, y + 144 + 32, "can_stick: " + string(can_stick));
	draw_debug_text(x, y + 160 + 32, "can_restick: " + string(can_restick));
	draw_debug_text(x, y + 176 + 32, "stuck_player: " + string(stuck_player));
	draw_debug_text(x, y - 96, "stuck_surface: " + string(stuck_surface));
	draw_debug_text(x, y - 112, "stuck_detonation_timer: " + string(stuck_detonation_timer));*/
}

#macro PS_UNATTACHED_UNARMED 10
#macro PS_UNATTACHED_ARMED 11
#macro PS_VANDA_UPLIFTED 12
#macro PS_VANDA_KICKED 13

#macro PS_ATTACHED_GROUND_ARMING 20
#macro PS_ATTACHED_GROUND_ARMED 21
#macro PS_ATTACHED_GROUND_FUSING 22
#macro PS_ATTACHED_GROUND_TIMED_OUT 23

#macro PS_ATTACHED_PLAYER 30

#macro PS_EXPLODING_UNATTACHED 71
#macro PS_EXPLODING_GROUND 72
#macro PS_EXPLODING_PLAYER 73

#macro PS_BASHED 80
#macro PS_PLASMA_FIELD_REFLECTED 81
#macro PS_PLASMA_FIELD_DESTROYED 82

#macro PS_CLEANUP 90

#macro MS_UNATTACHED 1
#macro MS_ATTACHED_GROUND 2
#macro MS_ATTACHED_PLAYER 3
#macro MS_EXPLODING 7
#macro MS_MISC 8
#macro MS_CLEANUP 9