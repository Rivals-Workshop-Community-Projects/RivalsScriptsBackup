
if attack == AT_DATTACK || attack == AT_FSTRONG {
    set_attack_value(attack, AG_OFF_LEDGE, !was_parried = 1);
}


if attack == AT_FSPECIAL_2 {
    can_move = 0;
    can_fast_fall = 0;
    if window == 2 && window_timer == 1 {spr_dir *= -1; }
    //cap vsp until the move hits a player
    if (!hitpause && !has_hit_player) vsp = max(vsp, -1);
}

if attack == AT_FSPECIAL {
	move_cooldown[AT_FSPECIAL] = glide_cooldown*60;
	
	can_move = 0;
	if get_window_value(attack, window, AG_WINDOW_TYPE) == 69 {
		if window_timer == 1 && glide_used > 1{
			hsp *= glide_tired_hsp_mult
		}
	
		vsp = clamp(vsp + (down_down - up_down)*glide_vsp_rate, -glide_vsp_limit, glide_vsp_limit)
		if glide_used > 1 vsp = clamp(vsp, -glide_tired_vsp_limit, glide_tired_vsp_limit)
		
		can_fast_fall = 0;
		can_move = 0;
		hsp += spr_dir*0.2
		if (window_timer >= get_window_value(AT_FSPECIAL, 2, AG_WINDOW_CANCEL_FRAME) && (jump_pressed or special_pressed)) {
			window++;
			window_timer = 0;
			
		}
		if abs(hsp) < get_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED)*glide_tired_hsp_mult && free {
			window = 4+ (glide_used > 1);
			window_timer = 0;
			vsp = get_window_value(AT_FSPECIAL, window, AG_WINDOW_VSPEED) 
			hsp = get_window_value(AT_FSPECIAL, window, AG_WINDOW_HSPEED)*spr_dir
		}
		
	}

	if get_window_value(attack, window, AG_WINDOW_TYPE) == 669 {
		can_fast_fall = 0;
		can_move = 0;

	}
	/*
	if window == 2 && instance_exists(nspecial_current) && abs(nspecial_current.x - (x + spr_dir * 20)) <= 40 && abs(nspecial_current.y - (y - spr_dir * 10)) <= 30 && !was_parried {
		print("check2");
		attack_end();
		set_attack(AT_FSPECIAL_2);
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("fspecial_fx"), 15))
		y = ((nspecial_current.y))
		nspecial_current.vsp = 0;
		nspecial_current.hit_by_fspecial = 1;
		sound_play(sound_effect);
	}
	*/
	
}

//makes ustrong sweetspot consistent
if (attack == AT_USTRONG) {
    if (has_hit_player && hit_player_obj.clone == false && window < 3 && !hitpause) {
        hit_player_obj.x = lerp(hit_player_obj.x, x, .1);
        hit_player_obj.hsp = 0;
    }
}


if attack == AT_TAUNT && taunt_down && window == 3 && window_timer == 1 {
	window = 1;
	window_timer = 0;
	if shield_down debug_toggle = !debug_toggle
}


// B-Reversals

// Up-Special
if (attack == AT_USPECIAL) { can_wall_jump = true;
    if (window == 1 && window_timer == 1) {
        move_cooldown[attack] = BOULDER_COOLDOWN * 60;
    }

    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        // var dir_u = up_down ? 1 : 0;
        // var dir_l, dir_r = 0;

        // var joy_l = joy_dir > 90 && joy_dir < 270;
        // var joy_r = joy_dir < 90 || joy_dir > 270;

        // if ((joy_l && spr_dir == 1) || (joy_r && spr_dir == -1)) {
        //     boulder_dir = BOULDER_DIR_B;
        // } else {
        //     dir_l = joy_l ? 2 : 0;
        //     dir_r = joy_r ? 4 : 0;

        //     boulder_dir = dir_u + dir_l + dir_r;

        //     if (boulder_dir < 1) {
        //         boulder_dir = 1;
        //     }
        // }

        var throw_speed = BOULDER_THROW_SPEED_NORMAL;
        var throw_angle = BOULDER_THROW_ANGLE;

        if (special_down) {
            throw_speed = BOULDER_THROW_SPEED_HOLD;
        }

        if (!joy_pad_idle) {
            var joy_l = joy_dir > 90 && joy_dir < 270;
            var joy_r = joy_dir < 90 || joy_dir > 270;

            if ((joy_l && spr_dir == 1) || (joy_r && spr_dir == -1)) {
                throw_angle = BOULDER_THROW_ANGLE_BACK;
            } else {
                var diff = 90 - joy_dir;

                if (diff < -180)
                    diff += 360;

                if (diff > 180)
                    diff -= 360;

                var change = BOULDER_THROW_ANGLE_CHANGE * (dsin(diff) * dsin(diff));
                throw_angle -= sign(diff) * spr_dir * change;

                if (abs(throw_angle) < BOULDER_THROW_ANGLE_MIN) {
                    throw_angle = sign(throw_angle) * BOULDER_THROW_ANGLE_MIN;
                }
            }
        }

        set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(throw_angle));
        set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(throw_angle));
    }

set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6*free);


}

// Down Special
if (attack == AT_DSPECIAL) {
    // TODO: Attacking towards the boulder
}


if (attack == AT_NSPECIAL) {
	if window_timer == 1 && get_window_value(attack, window, AG_WINDOW_TYPE) == 69 && !hitpause {
		nspecial_active = 1;
		nspecial_current = noone;
		with (pHitBox) {
			if player_id == other.id && attack == AT_USPECIAL {
				other.nspecial_current = id;
				break;
			}
		}
		if nspecial_current == noone {
			nspecial_current = create_hitbox(AT_USPECIAL, 1, x, y-30);
			nspecial_current.hsp = 3 *spr_dir;
			nspecial_current.vsp = nspecial_rock_vspeed;
			nspecial_current.should_crack = 1;
			//with (oPlayer) {
			//	if (id == other) continue;
			//	other.nspecial_current.can_hit[player] = 0;
			//}
		}
		//var nsplat = instance_create(nspecial_current.x, nspecial_current.y-10, "obj_article_platform") //commented out for balance reasons
		//nsplat.followbox = nspecial_current;
		}
}
if (attack == AT_NSPECIAL_2) {
	//disable nspecial
	if window_timer == 1 && get_window_value(attack, window, AG_WINDOW_TYPE) == 420 {
		nspecial_active = 0;
		nspecial_current.vsp = nspecial_off_vsp;
		nspecial_current.hsp = 2 *spr_dir;
	}
}


/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/

/*
if (attack == AT_DSPECIAL) {
    if (window == 2) {
        can_jump = true;
    }

    can_fast_fall = false;
    can_move = false
}
*/

if (attack == AT_TAUNT)
{
	if (taunt_down && window == 1 && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH))
	{
		++taunt_timer;
		--window_timer;
		suppress_stage_music( 0, 0.0015 );
		var volume = clamp(taunt_timer/1000-1.5,0,1);
		if (get_gameplay_time() % 25 == 0 && volume != 1)
		{
			sound_stop( sound_get( "static" ) );
			sound_play( sound_get( "static" ), true, noone, volume );
		}
	}
	else
	{
		taunt_timer = 0;
		suppress_stage_music( 1, 1 );
		sound_stop( sound_get( "static" ) );
	}
}



