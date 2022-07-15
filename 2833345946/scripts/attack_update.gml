// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2 || attack == AT_NSPECIAL_2){
    trigger_b_reverse();
}

//if window == 1 user_event(1)

switch attack {
	case AT_UTILT:
	if window > 1 && !free {
		if was_parried set_state(PS_PRATLAND)
		else set_state(has_hit ? PS_LAND : PS_LANDING_LAG)
	}
	break;
	
	case AT_FSTRONG:
	if window == 2 && window_timer == window_length {
		sound_play(asset_get("sfx_kragg_rock_land"))
	}
	break;
	
	case AT_FSTRONG_2:
	if window == 2 && window_timer == window_length {
		sound_play(asset_get("sfx_land_heavy"))
	}
	break;
	
	case AT_DSTRONG:
	if window == 2 && window_timer == window_length && !hitpause {
		sound_play(asset_get("sfx_ell_strong_attack_explosion"))
	}
	
	if window == 2 && window_timer == window_length {
		stance = 1
		var blade = instance_create(x, y+10, "obj_article1")
            blade.image_angle = 0
            blade.spawn_sfx = 1
            blade.wiggle_timer = 100
	}
	break;
	
	case AT_DSTRONG_2:
	if window == 2 && window_timer == window_length && !hitpause {
		sound_play(asset_get("sfx_zetter_downb"))
	}
	break;
	
	case AT_USTRONG:
	if window == 2 {
		if state_timer >= get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH) + 4 && state_timer < get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH) + 8 && !strong_down {
			window++
			window_timer = 0
		} else {
		
			if (window_timer + strong_charge) mod 8 == 4 && !hitpause sound_play(asset_get("sfx_spin"))
			if (window_timer + strong_charge) mod 4 == 1 && !hitpause {
				create_hitbox(AT_USTRONG, 1, x, y)
			}
		}
		
		
	}
	
	if window == 3 && window_timer == 0 destroy_hitboxes()
	
	if window >= 4 height_timer++;
    else height_timer = 0;
	break;
	
	case AT_USTRONG_2:
	if window >= 3 height_timer++;
    else height_timer = 0;
	break;
	
	case AT_DATTACK:
	if window == 1 && window_timer == window_length-1 sound_play(asset_get("sfx_swipe_medium2"))
	break;
	
	case AT_FTILT:
	if window == 2 && window_timer == 4 {
		stance = true
	}
	break;
	
	case AT_DAIR:
	if window == 1 && window_timer == window_length-1 sound_play(asset_get("sfx_swipe_medium2"))
	break;
	
	case AT_EXTRA_1:
	if window == 3 && has_hit && !hitpause && window_timer {
		can_attack = true
		move_cooldown[AT_EXTRA_1] = 6
	}
	break;
	
	case AT_FSPECIAL:
	if window == 2 && window_timer == window_length {
		stance = 1
	}
	//vsp = clamp(vsp, -1000, 4)
	//can_move = false
	break;
	
	case AT_NSPECIAL_2:
	//vsp = clamp(vsp, -1000, 4)
	//can_move = false
	break;
	
	case AT_FSPECIAL_2:
	if window == 1 && window_timer == 36 {
		sound_play(asset_get("sfx_ice_back_air"))
		pickup_alpha = 1
	}
	if window_timer >= 30 stance = 0
	
	break;
	
	case AT_USPECIAL:
	can_wall_jump = true
	if window < 5 can_move = false
	
	if window == 3 && window_timer == window_length {
		var _fx = spawn_hit_fx(x + 40*spr_dir, y, vfx_dspec)
			_fx.draw_angle = spr_dir*225
	}
	
	if window == 4 stance = 1
	
	if window == 2 && window_timer == window_length {
		if (special_down || special_pressed) {
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_GOTO, 3);
			if spr_dir == left_down || spr_dir == -right_down {
				spr_dir *= -1
			}
		}
	}
	
	if window == 3 && window_timer == window_length {
		var _sword = create_hitbox(AT_NSPECIAL, 1, x+20*spr_dir, y-15)
			_sword.grav = 0
			_sword.spr_dir = spr_dir
			_sword.hsp = 20*spr_dir
			_sword.vsp = 20
			_sword.is_uspecial = true
			_sword.kb_angle = -45
	}
	break;
	
	case AT_USPECIAL_2:
	can_wall_jump = true
	can_move = window > 2
	/*
	if window <= 2 {
	
		var sword_obj = instance_position(x, y-20, obj_article1)
		if sword_obj != noone && ("is_reckless" in sword_obj) && sword_obj.block {
			stance = 0
			attack = AT_NSPECIAL_AIR
			window = 0
			window_timer = 0
			state_timer = 0
			spr_dir = sword_obj.spr_dir
			x = sword_obj.x
			y = sword_obj.y + 60
			sword_obj.destroyed = true
			hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE);
			destroy_hitboxes()
		}
	}
	*/
	break;
	
	case AT_NSPECIAL_AIR: //grapple uspec
	if window <= 3 {
		can_move = false
	} else {
		can_move = true
	}
	if window == 2 && window_timer == window_length {
		//spr_dir *= -1
		//x += 10
		sound_play(asset_get("sfx_ori_stomp_spin"))
	}
	has_walljump = false
	can_wall_jump = false
	break;
	
	case AT_DSPECIAL:
	
	if window == 1 && window_timer == window_length {
		if !free spawn_base_dust(x, y, "dash_start", spr_dir)
		sound_play(sound_get("bar_swing_med1"))
	}
	can_move = false
	can_wall_jump = true
	if window == 2 && window_timer == window_length {
		var _fx = spawn_hit_fx(x + 45*spr_dir, y + 10, vfx_dspec)
			_fx.draw_angle = spr_dir*45
			
		sound_play(sound_get("bar_swing_med2"))
	}
	if window == 3 {
		if !free {
			window++
			window_timer = 0
			sound_play(asset_get("sfx_zetter_downb"))
			destroy_hitboxes()
			stance = true
			var blade = instance_create(x+70*spr_dir, y+2, "obj_article1")
	            blade.image_angle = spr_dir*45
	            blade.spawn_sfx = 1
	            blade.wiggle_timer = 100
		}
		
		if state_timer > 35 {
			can_jump = true
			can_shield = true
		}
	}
	if window == 4 {
		if free set_state(PS_IDLE_AIR)
		hsp = clamp(hsp, -8, 8)
	}
	break;
	
	case AT_DSPECIAL_2:
	if window == 1 && window_timer == window_length && !free {
		spawn_base_dust(x, y, "dash_start", spr_dir)
	}
	
	can_move = false
	can_wall_jump = true
	if window == 2 && window_timer == window_length {
		var _fx = spawn_hit_fx(x + 45*spr_dir, y + 10, vfx_dspec)
			_fx.draw_angle = spr_dir*45
		
		sound_play(sound_get("bar_swing_med2"))
	}
	if window == 3 {
		if !free {
			window++
			window_timer = 0
			sound_play(asset_get("sfx_zetter_downb"))
			destroy_hitboxes()
		}
		
		if state_timer > 35 {
			can_jump = true
			can_shield = true
		}
	}
	
	if window == 4 {
		if free set_state(PS_IDLE_AIR)
		hsp = clamp(hsp, -8, 8)
	}
	break;
	
	case AT_FTHROW:
	has_walljump = false
	if window == 1 && window_timer == window_length {
		spr_dir *= -1
		x += 10
		sound_play(asset_get("sfx_ori_stomp_spin"))
		stance = 1
		var blade = instance_create(x - 11 + 21*spr_dir, y-50, "obj_article1")
            blade.image_angle = spr_dir*90
            blade.spawn_sfx = 0
	}
	break;
	
	case AT_NSPECIAL:
	
	if state_timer <= 6 && !breversed {
        if (left_down && spr_dir == 1) || (right_down && spr_dir == -1) {
            spr_dir *= -1
            breversed = true
            hsp *= -0.5
        }
    }
    
	if window == 1 {
		if special_down strong_down = true;
		nspec_power = 10+(strong_charge*18/60)
		nspec_angle = 12-(strong_charge*5/60)
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, nspec_power*dcos(nspec_angle));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -nspec_power*dsin(nspec_angle));
		
		//pick up sword
		var sword_obj = collision_circle(x, y-15, 10, obj_article1, true, true)
		if sword_obj != noone && ("is_reckless" in sword_obj) && sword_obj.can_pickup && !nspec_multishot {
	        sound_play(asset_get("sfx_zetter_shine"))
	        instance_destroy(sword_obj)
	        nspec_multishot = true
	        sprite_index = sprite_get("nspecial_2")
	        set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_2"));
		}
	}
	
	if window == 2 && window_timer == 1 {
		sound_play(sound_get("ssbu_bow_loose"))
		if nspec_multishot {
			for (var i = 0; i < 2; i++) {
				var _proj = create_hitbox(AT_NSPECIAL, 1, x+50*spr_dir, y-44+(i*5))
					_proj.spr_dir = spr_dir
					_proj.hsp = nspec_power*dcos(nspec_angle+(i*4))*spr_dir
					_proj.vsp = -nspec_power*dsin(nspec_angle-(i*4))
			}
		} else {
			var _proj = create_hitbox(AT_NSPECIAL, 1, x+50*spr_dir, y-44)
			_proj.spr_dir = spr_dir
			_proj.hsp = nspec_power*dcos(nspec_angle)*spr_dir
			_proj.vsp = -nspec_power*dsin(nspec_angle)
		}
		
	}
	
	move_cooldown[AT_NSPECIAL] = 20
	break;
	
	case AT_FSPECIAL_AIR:
	if window == 2 && has_hit && !hitpause {
		can_jump = true
	}
	break;
}
#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;