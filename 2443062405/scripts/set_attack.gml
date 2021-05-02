///#args attack



switch(attack){
	case AT_DSPECIAL:
		var ball_found = 0;
		with pHitBox if player_id == other && "am_ball" in self && !has_been_recalled{
			ball_found = 1;
		}
		if bike || free || ball_found attack = AT_DSPECIAL_AIR;
        set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
        dspecial_air_free = free || ball_found;
	case AT_FSPECIAL:
	case AT_USPECIAL:
		if nspecial_buffer && !move_cooldown[AT_NSPECIAL] attack = AT_NSPECIAL;
		else bike = true;
		break;
	case AT_TAUNT:
		if down_down attack = AT_TAUNT_2;
		break;
	default:
		bike = false;
		// spawn_hit_fx(x, y - 32, vfx_hit_med)
		sound_play(asset_get("mfx_star"))
                
        bike_vfx_time = bike_vfx_time_max;
        afterimg_timer = afterimg_timer_max;
        afterimg_x = x + (attack == AT_FSPECIAL) * -30 * spr_dir;
        afterimg_y = y;
        afterimg_sprite = sprite_index;
        afterimg_frame = image_index;
        afterimg_angle = image_angle;
        afterimg_dir = spr_dir;
		break;
}



has_hit_ball = false;



user_event(13);