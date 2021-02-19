// Arrow Destroy FX, doesn't work in hitbox_update
with (pHitBox) if (player_id == other && (attack == AT_FSPECIAL || attack == AT_NSPECIAL)) {
	if (destroyed && !has_hit) {
		// doesn't destroy properly without this for whatever reason lol
		var destroy_effect = spawn_hit_fx(x, y, player_id.fx_funny_arrow);
		destroy_effect.draw_angle = proj_angle;
	}
}

// Landing FX
if (attack == AT_USPECIAL && attacking) {
	if (free) {
		uspecial_land_played = false;
	} else if (!uspecial_land_played && (window == 3 || image_index >= 6)) {
		create_dust("land", 24);
		sound_play(landing_lag_sound);
		uspecial_land_played = true;
	}
}

if (attack == AT_DATTACK && window == 3 && window_timer == 0 && attacking) {
	create_dust("skid", 18).spr_dir *= -1;
}

if (attack == AT_FSTRONG && window == 2 && window_timer == 0 && attacking) {
	create_dust("skid", 18);
}

if (attack == AT_FTILT && window == 2 && window_timer == 0 && attacking) {
	create_dust("dashstep", 12);
}

switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    	break;
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
    case 5:
    case 6:
        switch attack {
            case AT_USPECIAL:
                if window != 3 && window != 4 {
                //swap animation based on direc (joy_dir)
                var anim_frames = get_window_value(AT_USPECIAL,window,AG_WINDOW_ANIM_FRAMES);
                var anim_start = get_window_value(AT_USPECIAL,window,AG_WINDOW_ANIM_FRAME_START);
                var window_length = get_window_value(AT_USPECIAL,window,AG_WINDOW_LENGTH);
                direc_sided = -(direc-180)*(direc > 90 && direc < 270)+ direc*(direc < 90) -(abs(360-direc))*(direc > 270);
                if (direc > 90 && direc < 270) {
                	spr_dir = -1;
                } else if (direc != 90 && direc != 270 && direc != -90 && direc != -270) {
                	spr_dir = 1;
                } else {
                	spr_dir = original_uspec_spr_dir;
                }
                
                if direc == 90 anim_offset = 3;
                else if direc == 270 anim_offset = 4;
                else if direc_sided >= -18 && direc_sided < 18 anim_offset = 0;
                else if direc_sided >= -54 && direc_sided < -18 anim_offset = 1;
                else if direc_sided >= -90 && direc_sided < -54 anim_offset = 4;
                else if direc_sided <= 54 && direc_sided > 18 anim_offset = 2;
                else if direc_sided <= 90 && direc_sided > 54 anim_offset = 3;
                image_index = anim_offset*18 + anim_frames*(window_timer)/window_length + anim_start;
                hurtboxID.sprite_index = free ? sprite_get("uspecial_hurt") : sprite_get("uspecialground_hurt"); 
                } else {
                    sprite_index = free ? sprite_get("pullRope") : sprite_get("pullRope_ground");
                    hurtboxID.sprite_index = free ? sprite_get("pullRope_hurt") : sprite_get("pullRope_ground_hurt");;
                }
                break;
			case AT_NSPECIAL:
				hurtboxID.sprite_index = free ? sprite_get("nspecialair_hurt") : sprite_get("nspecial_hurt");
				break;
			case AT_FSPECIAL:
				hurtboxID.sprite_index = free ? sprite_get("fspecialair_hurt") : sprite_get("fspecial_hurt");
				break;
			case AT_DAIR:
				// manual fix for funky frames
				if (window == 3 && window_timer > 3) {
					image_index = image_number - 1;
				}
        }
        
    break;
}

#define create_dust(dust_name, time)

var dust = spawn_dust_fx(x, y, asset_get("fx_" + dust_name + "_bg"), time);
dust.dust_color = 0;
dust.fg_index = asset_get("fx_" + dust_name + "_fg");
return dust;
