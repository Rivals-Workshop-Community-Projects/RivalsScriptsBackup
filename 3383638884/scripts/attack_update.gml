switch (attack) {
	//AT_GRABDASH
	case 44:
		vsp = 0;
		can_move = false;
		can_fast_fall = false;
		switch (window) {
			case 1:
			case 2:
				dash_timer = 0;
				super_armor = true;
				break;
			case 3:
				ledge_snap(20);
				super_armor = false;
				dash_timer++;
				if(window_timer == 9)
					window_timer = 1;
				if(instance_exists(grabp))
				{
					window = 4;
					window_timer = 0;
					destroy_hitboxes();
				}
				else if(dash_timer >= 20)
				{
					dash_timer = 0;
					window = 7;
					window_timer = 0;
				}
				break;
			case 4:
				dash_timer = 0;
				super_armor = false;
				break;
			case 5:
				if(window_timer > 4)
					grabp = noone;
				break;
			case 6:
				//if(window_timer == 24)
				//	set_state(PS_IDLE);
				break;
			case 7:
				super_armor = false;
				break;
		}
		//grab code
		if instance_exists(grabp) 
		{
			with grabp 
			{
				set_state(PS_HITSTUN);
				hsp = 0;
				vsp = 0;
			}
			grabp.x = x + (spr_dir *  45);
			grabp.y = y - 15;
		}
		break;
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				if(window_timer == 1)
					vsp = 0;
				hsp = spr_dir * 8 * (window_timer / get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH));
				break;
			case 2:
				hsp = min(7.5, hsp);
				if(!mach_sound_active)
				{
					mach_sound = sound_play(sound_get("mach_run_full"), true, noone, 1);
					mach_sound_active = true;
				}
				if(special_pressed && !up_down && !down_down && !left_down && !right_down)
				{
					taunt_dash_interrupt = true;
					hsp = spr_dir * min(7.5, abs(hsp));
					set_attack(AT_NSPECIAL);
					if(mach_sound_active)
					{
						mach_sound_active = false;
						sound_stop(mach_sound);
					}
				}
				else if(special_pressed && !up_down && !down_down && (left_down || right_down))
				{
					mach_sound_active = false;
					sound_stop(mach_sound);
					if(left_down ^ right_down)
						spr_dir = (right_down * 2) - 1;
					set_attack(AT_GRABDASH);
				}
				else if(jump_pressed || shield_pressed || attack_pressed || (special_pressed && !(left_pressed ^ right_pressed)) || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) {
					iasa_script();
				}
				afterimage_mode = 2;
				dash_timer = has_rune("F")? 126 : 51;
				if(window_timer == 19)
					window_timer = 0;
				break;
			}
		break;
	case AT_FSTRONG:
		if(strong_charge == 30 && !fstrong_made_noise && !has_rune("M"))
		{
			sound_play(sound_get("sfx_shotgungot"));
			set_num_hitboxes(AT_FSTRONG, 4);
			fstrong_made_noise = true;
		}
		if(strong_charge == 60 || has_rune("M"))
		{
			set_num_hitboxes(AT_FSTRONG, 5);
			set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
			set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
		}
		else
		{
			set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
		}
		/* leftover from phase 3 fstrong
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5 + (strong_charge / 20));
		switch(window) {
			case 3:
				fstrongLoopTimer++;
				if(fstrongLoopTimer <= 30 + (strong_charge / 3))
				{
					if(window_timer >= 9)
					{
						window_timer = 0;
					}
	
					//grab code idk
					if(array_length_1d(grabp) > 0)
					{
						for(var n = 0; n < array_length_1d(grabp); ++n)
						{
							var obj = grabp[n];
							with obj 
							{
								set_state(PS_HITSTUN);
								hsp = 0;
								vsp = 0;
							}
							obj.x = x + (spr_dir * (50 - (n * 22)));
							obj.y = y - 20;
						}
						if(attack_pressed || special_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) 
						{
							destroy_hitboxes();
							window_timer = 0;
							window = 4;
						}
					}
				}
				else
				{
					destroy_hitboxes();
					window_timer = 0;
					if(array_length_1d(grabp) > 0) {
						window = 4;
					}
					else {
						window = 5;
					}
				}
				break;
			case 4:
				break;
			case 5:
				break;
		}
		*/
		break;
	case AT_NSPECIAL:
		if(combo_timer != 0)
			combo_timer = min(148, combo_timer + 1);
		move_cooldown[AT_NSPECIAL] = 6;
		can_jump = false;
		can_move = false;
		break;
	case 43: //AT_SUPERTAUNT
		dash_timer = 0;
		can_move = false;
		if(window > 3)
			super_armor = true;
		break;
	case AT_USPECIAL:
    	can_fast_fall = false;
		switch window {
			case 2:
				ledge_snap(12);
				hsp = (has_rune("J")?4 : 1)*((right_down - left_down) * (1 + (1.5 * (dash_timer > 0))) * (1 + (1.1 * !free)));
				if(right_down ^ left_down)
				{
					if(right_down)
						spr_dir = 1;
					else 
						spr_dir = -1;
					walkAnim = true;
				}
				else 
					walkAnim = false;
				if (window_timer == 1 && special_down && uspec_charge < 95)
				{
					window_timer -= 1;
					uspec_charge += 1;
				}
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -12.5 - 7 * (has_rune("H")? 1 : (uspec_charge / 100)));
				break;
			case 3:
				if(uspecialSoundActive)
				{
					uspecialSoundActive = false;
					sound_stop(uspec_sound);
					uspec_sound = noone;
				}
				break;
			case 4:
				hsp = clamp(hsp, -3, 3);
				break;
			case 5:
				if(!free)
					set_state(PS_LAND);
				break;
			}
			break;
	case AT_DSPECIAL:
		can_fast_fall = false;
		switch window {
			case 1:
				if(has_rune("E"))
				{
					window = 2;
					window_timer = 8;
				}
			case 2:
				can_move = false;
				old_hsp = 0;
				old_vsp = 0;
				hsp = 0;
				vsp = 0;
				break;
			case 3:
				if(window_timer < 3)
					old_vsp = vsp;
				fall_through = down_down;
				if(has_hit){
					window = 5;
					window_timer = 0;
				}
				if(!dspecialSoundActive)
				{
					dspec_sound = sound_play(sound_get("body_slam"), false, noone, 1);
					dspecialSoundActive = true;	
				}
				if(!free) 
				{
					window = 5
					window_timer = 0;
				}
				break;
			case 4:
				fall_through = down_down;
				can_wall_jump = true;
				if(has_hit){
					window = 5;
					window_timer = 0;
				}
				if(window_timer == 10)
					window_timer = 0;
				if(!free) {
					window = 5
					window_timer = 0;
				}
				cancelTimer++;
				if(cancelTimer > 20) {
					can_shield = true;
					can_jump = true;
				}
				break;
			case 5:
				if(dspecialSoundActive)
				{
					sound_stop(dspec_sound);
					dspecialSoundActive = false;
					sound_play(sound_get("ground_hit"));
				}
			case 6:
				can_move = false;
				hsp = 0;
				vsp = 0;
				break;
		}
		break;
	case AT_DSPECIAL_AIR:
		if(state_timer == 90)
		{
			//my_clone = instance_create(x, y, asset_get("obj_article1"));
			my_clone = instance_create(x, y - 48, "obj_article1");
		}
		break;
	case AT_DAIR:
		switch(window){
			case 2:
			case 3:
				if(has_hit)
				{
					window = 4;
					window_timer = 0;
					vsp = -15;
					old_vsp = -10;
				}
				if(window == 3 && window_timer == 3)
				{
					window = 6;
					window_timer = 0;
				}
				break;
			case 5:
				window_timer--;
				can_shield = true;
				can_jump = true;
				can_wall_jump = true;
				can_attack = true;
				can_special = true;
				break;
		}
		break;
	case AT_UAIR:
		switch(window) {
			case 1:
				can_move = false;
				can_fast_fall = false;
				hsp = 0;
				vsp = 0;
				break;
			case 2:
				if(window_timer == 1 && !hitpause)
					hsp = pre_uair_hsp;
				if(abs(hsp) > 4 + 2*(dash_timer>0) && !hitpause)
					hsp = ((hsp > 0) - 0.5) * (8 + 4*(dash_timer>0));
				break;
		}
		break;
	case AT_TAUNT:
		if(window == 5 && window_timer == 28 && taunt_down)
			window_timer--;
		break;
	case AT_DTILT:
		if(!hitstop)
		{
			if(spr_dir == 1)
				hsp = (has_rune("D")?5 : 1)*(right_down - 0.75*left_down);
			else
				hsp = (has_rune("D")?5 : 1)*(0.75*right_down - left_down);
		}
		if(window == 3 && window_timer == 6 && attack_down)
		{
			attack_end();
			window = 1;
			window_timer = 0;
		}
		break;
	case 46: //AT_DTILT_MACH
		dash_timer = 2;
		if(!hitstop)
			hsp = 7*spr_dir + right_down - left_down;
		can_fast_fall = false;
		if(state_timer > 30)
		{
			can_shield = true;
			can_jump = true;
			can_wall_jump = true;
		}
		if(!free)
		{
			hsp = 0;
			set_state(PS_LANDING_LAG);
			dash_timer = 0;
		}
		break;
	case AT_UTILT:
		if(dash_timer == 1)
			dash_timer++;
		switch(window){
			case 4:
			case 6:
				if((has_hit && window_timer > 3) || dash_timer > 0)
				{
					if(dash_timer == 0)
						has_hit = false;
					window++;
					window_timer = 0;
				}
				break;
			case 8:
				if((has_hit && window_timer > 3) || dash_timer > 0 || has_rune("C"))
				{
					if(dash_timer == 0)
						has_hit = false;
					window = 12;
					window_timer = 0;
				}
				break;
			case 11:
				if(window_timer == get_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH) - 1)
					set_state(PS_IDLE);
				break;
			case 13:
			case 14:
				iasa_script();
				break;
		}
		break;
	case 45: //wait
		iasa_script();
		break;
	case 40: //AT_PHONE
		hsp = 0;
		vsp = 0;
		can_fast_fall = false;
		can_move = false
		break;
}

#define ledge_snap(maximum)
var step = maximum; //the maximum distance to move up from the ledge. must be a power of 2. '16' or '32' is recommended.
var xx = x + spr_dir; //use 'xx = x - spr_dir' if the attack moves backwards.

var par_block = asset_get("par_block");
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block))
	return false;

var n = 0;
while(n<maximum)
{
	y--;
	if(!place_meeting(xx, y, par_block))
	{
		x = xx;
		return true;
	}
	n++;
}
y += maximum;
return false;

/*
x = xx;
y -= step;
for (step /= 2; step >= 1; step /= 2) {
    if (!place_meeting(x, y + step, par_block))  y += step; 
}
return true;
*/