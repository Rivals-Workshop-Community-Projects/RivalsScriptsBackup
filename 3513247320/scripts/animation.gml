if small_sprites > 1 draw_y = -round(small_sprites - 1);

var muzzle_pos = [[32, -62]];
var rock_pos = [[25, -52]];

var any_attack_inputed = (attack_pressed || left_stick_pressed || right_stick_pressed || up_stick_pressed || down_stick_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed);

switch state{
	case PS_IDLE:
		if has_rock{
			sprite_index = sprite_get(my_grab_id? "dspecial":"nspecial");
			image_index = my_grab_id? 10:2 + ((state_timer / idle_anim_speed) % 2);
			
			muzzle_pos = [[32, -62]];
			rock_pos = [[25, -52]];
		}
	break;
	case PS_WALK: case PS_WALK_TURN:
		if has_rock{
			sprite_index = sprite_get(my_grab_id? "dspecial_walk":"nspecial_walk");
			image_index = (state_timer * walk_anim_speed) % image_number;
			
			muzzle_pos = [[32, -66], [32, -62], [32, -64], [32, -66], [32, -62], [32, -64]];
			rock_pos = [[25, -54], [29, -50], [27, -52], [25, -54], [27, -52], [27, -54]];
		}
	break;
	case PS_CROUCH:
		if image_index < crouch_startup_frames + crouch_active_frames hud_offset = lerp(hud_offset, -40, 0.5);
	break;
	case PS_JUMPSQUAT: case PS_LAND:
		if has_rock{
			sprite_index = sprite_get(my_grab_id? "dspecial_jumpstart":"nspecial_jumpstart");
			image_index = 0;
			
			muzzle_pos = [[32, -62]];
			rock_pos = [[27, -44]];
		}
	break;
	case PS_FIRST_JUMP: case PS_IDLE_AIR:
		if has_rock{
			sprite_index = sprite_get(my_grab_id? "dspecial_jump":"nspecial_air");
			image_index = my_grab_id? clamp(floor((image_number) * (vsp + jump_speed) / (jump_speed * 2)), 0, image_number - 1):5;
			if state_timer == 0 image_index = 0;
			
			muzzle_pos = [[28, -66], [0, 0], [0, 0], [0, 0], [0, 0], [26, -72]];
			rock_pos = [[27, -54], [25, -60], [23, -60], [23, -60], [23, -60]];
		}
	break;
	case PS_PRATFALL:
		hud_offset = lerp(hud_offset, -60, 0.5);
	break;
	case PS_PRATLAND: //plays the parry stun animation right - thanks Frtoud!
		if extended_parry_lag || was_parried image_index = lerp(0, image_number, state_timer / clamp((4 / 45) * parry_distance + (170 / 3), 60, 100)); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
	break;
	case PS_PARRY_START:
		if state_timer == 0 && (left_down || right_down) sprite_index = sprite_get("crouch");
	break;
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD: case PS_TECH_FORWARD: case PS_TECH_BACKWARD:
		sprite_index = sprite_get("roll");
	break;
	case PS_WAVELAND: case PS_TECH_GROUND:
		sprite_index = sprite_get("land");
		image_index = floor(lerp(1, 2, state_timer / 18));
	break;
	case PS_AIR_DODGE:
		if !free sprite_index = sprite_get("jumpstart");
	break;
	case PS_HITSTUN:
		if has_rock && my_grab_id sprite_index = sprite_get("dspecial_hitstun");
		
		muzzle_pos = [[0, 0]];
		rock_pos = [[23, -50]];
	break;
	case PS_HITSTUN_LAND:
		if has_rock && my_grab_id sprite_index = sprite_get("dspecial_hitstunground");
		
		muzzle_pos = [[0, 0]];
		rock_pos = [[19, -52]];
	break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		// muzzle_pos = [[0, 0]];
		rock_pos = [[0, 0]];
		switch attack {
		    case AT_DSTRONG:
				if window == 3 image_index = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START) + ((window_timer / 5) % get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES));
			break;
			case AT_FSPECIAL:
				if(window == 7 && window_timer >= 5)
				{
					sprite_index = sprite_get("fspecial_jc");
					image_index = -1 + (window_timer - 1)/4;
					hurtboxID.sprite_index = hurtbox_spr;
				}
			break;
			case AT_DSPECIAL:
				rock_pos = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [37, -32], [25, -52]];
			break;
			case AT_DSPECIAL_2:
				rock_pos = [[1, -58], [-1, -58], [0, 0], [0, 0], [0, 0]];
			break;
			case AT_USPECIAL_2:
				sprite_index = sprite_get("idle");
				image_index = ((state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH)) * idle_anim_speed) % image_number;
			break;
		}
	break;
	default:
		muzzle_pos = [[32, -64]];
		rock_pos = [[23, -52]];
	break;
}

if has_rock{
	move_cooldown[AT_NSPECIAL] = 20;
	move_cooldown[AT_FSPECIAL] = 2;
	move_cooldown[AT_DSPECIAL] = 2;
	
	if !my_grab_id {
		if (!nspec_lockout) {
			if right_pressed - left_pressed != 0 spr_dir = right_pressed - left_pressed;
			
			var lemons = 0;
			with pHitBox if "lemon_weight" in self && orig_player_id == other lemons += lemon_weight;
			//print_debug(lemons);
			if nspec_lemon_timer == 1 && special_down {
				if nspec_charge == 0{
					sound_stop(nspec_sfx);
					nspec_sfx = sound_play(sound_get("nspecial_charge_start"), false, false, 1, 1);
					nspec_sfx_timer = nspec_sfx_length;
				}
				if nspec_charge % 10 == 1 nspec_vfx = spawn_hit_fx(x + muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][0], y + muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][1], nspec_charge >= nspec_charge_max? muzzle_big_fx:(nspec_charge >= nspec_charge_mid? muzzle_mid_fx:muzzle_fx));
				if instance_exists(nspec_vfx){
					if nspec_charge{
						nspec_vfx.depth = depth;
						nspec_vfx.spr_dir = spr_dir;
						nspec_vfx.x = x + (muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][0] * spr_dir);
						nspec_vfx.y = y + muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][1];
					}
				}
				nspec_charge++;
				nspec_lemon_buffer_timer = nspec_lemon_buffer_interval;
			}
			else{
				if nspec_lemon_timer <= 0 || shield_pressed {
					if nspec_lemon_buffer_timer && !shield_pressed && !any_attack_inputed {
						if lemons < nspec_max_lemons{
							var bullet = nspec_charge >= nspec_charge_max? 3:(nspec_charge >= nspec_charge_mid? 2:1);
							create_hitbox(AT_NSPECIAL, bullet, x + ((muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][0] + get_hitbox_value(AT_NSPECIAL, bullet, HG_HITBOX_X)) * spr_dir), y + muzzle_pos[clamp(image_index % array_length(muzzle_pos), 0, array_length(muzzle_pos))][1] + get_hitbox_value(AT_NSPECIAL, bullet, HG_HITBOX_Y));
							sound_play(sound_get("nspecial" + string(bullet)));
							nspec_lemon_timer = nspec_lemon_interval;
							nspec_charge = 0;
							if instance_exists(nspec_vfx) nspec_vfx.step_timer = nspec_vfx.hit_length;
							nspec_vfx = noone;
							sound_stop(nspec_sfx);
							nspec_sfx_timer = 0;
							if bullet > 1 nspec_anim_timer = nspec_anim_length;
						}
					}
					else if shield_pressed 
					{
						has_rock = false;
						if !free || !has_airdodge clear_button_buffer(PC_SHIELD_PRESSED);
					} 
					else if any_attack_inputed 
					{
						has_rock = false;
					}
				}
				else if nspec_anim_timer {
					if state == PS_IDLE || state == PS_FIRST_JUMP || state == PS_IDLE_AIR{
						var winlen = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) - 1;
						sprite_index = sprite_get("nspecial" + (free? "_air":""));
						image_index = winlen + (abs(nspec_anim_length - nspec_anim_timer) / (image_number - winlen));
						nspec_anim_timer--;
					}
					else nspec_anim_timer = 0;
				}
				if special_pressed{
					if up_down && !move_cooldown[AT_USPECIAL]{
						has_rock = false;
						fixed_set_attack(AT_USPECIAL);
					}
					else{
						nspec_lemon_buffer_timer = nspec_lemon_buffer_interval;
						clear_button_buffer(PC_SPECIAL_PRESSED);
					}
				}
				nspec_lemon_timer--;
				nspec_lemon_buffer_timer--;
			}
		}
	}
	else{
		var rock = false;
		if instance_exists(dspec_rock) if my_grab_id == dspec_rock rock = true;
		
		dspec_hand_pos[0] = rock_pos[clamp(image_index % array_length(rock_pos), 0, array_length(rock_pos))][0];
		dspec_hand_pos[1] = rock_pos[clamp(image_index % array_length(rock_pos), 0, array_length(rock_pos))][1];
		
		my_grab_id.x = x + (dspec_hand_pos[0] * spr_dir);
		my_grab_id.y = y + dspec_hand_pos[1];
		my_grab_id.spr_dir = rock? spr_dir:-spr_dir;
		
		if !rock {
			dspec_grab_timer--;
			my_grab_id.hitstop = 2;
			my_grab_id.hitpause = true;
			my_grab_id.hitstop_full = 20;
			my_grab_id.invincible = true;
			my_grab_id.invince_time = 2;
			if !dspec_grab_timer || y + 100 + vsp > get_stage_data(SD_BOTTOM_BLASTZONE_Y) {
				my_grab_id.invincible = false;
				my_grab_id.invince_time = 0;
				spawn_hit_fx(round(my_grab_id.x), round(my_grab_id.y + (my_grab_id.char_height / -2)), 302);
				sound_play(asset_get("sfx_bird_sidespecial_start"));
				var dthrow = create_hitbox(AT_DSPECIAL_2, 1, round(my_grab_id.x), round(my_grab_id.y + (my_grab_id.char_height / -2)));
				for (var h = 0; h < array_length(dthrow.can_hit); h++;) if h != my_grab_id.player dthrow.can_hit[h] = false;
				my_grab_id = noone;
				has_rock = false;
			}
		}
	}
}
else{
	sound_stop(nspec_sfx);
	nspec_charge = 0;
	nspec_lemon_timer = 0;
	nspec_lemon_buffer_timer = 0;
}

if nspec_lockout nspec_lockout--;

hud_offset = abs(hud_offset) < 1? 0:round(hud_offset);

#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}