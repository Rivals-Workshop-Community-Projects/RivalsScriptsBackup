//update

if get_gameplay_time() mod 4 == 0 nspecial_color = nspecial_colors[random_func(3, array_length(nspecial_colors), true)]

    magic_hue_offset+=magic_hue_speed;
    magic_hue_offset=magic_hue_offset mod 255; //keeps hue_offset within the 0-255 range
	magic_color_rgb = make_color_rgb (48, 147, 230 );
	magic_hue = (color_get_hue(magic_color_rgb)+magic_hue_offset) mod 255; //finds the hue and shifts it
	magic_color_hsv=make_color_hsv(magic_hue,color_get_saturation(magic_color_rgb),color_get_value(magic_color_rgb));

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
with hit_fx_obj {
	if hit_fx == other.hfx_small or hit_fx == other.hfx_tiny or hit_fx == other.hfx_big or hit_fx == other.hfx_toadie_grab or hit_fx == other.ustrong_smallhfx[0] or hit_fx == other.ustrong_smallhfx[1] or hit_fx == other.ustrong_bighfx[0] or hit_fx == other.ustrong_bighfx[1] {
		depth = other.depth +1
	}
}

if nspec_fully_charged {
	if get_gameplay_time() mod 4 == 0 {
		var type =  random_func(9, array_length(part_shapes), true)
		var yy = bbox_top+random_func(4, bbox_bottom-bbox_top, false)
		var xx = (bbox_left-2)+random_func(5, (bbox_right+2)-(bbox_left-2), false)
		with spawn_hit_fx(xx, yy, part_shapes[type]) {
			hsp = lengthdir_x(random_func(2,2,false), 90)
			vsp = lengthdir_y(random_func(1,2,false), 90)
			if get_gameplay_time() mod 8 == 0 depth = other.depth-1
		}		
	}
	
	var spd = 0.1
	var timer = sin(get_gameplay_time() * spd)
	var offset = 0.3;
	var strength = 0.2
	
	var color = merge_color(c_black, /*#*/$ffddd0, (strength*timer) + offset)
	outline_color = [color_get_red(color), color_get_green(color), color_get_blue(color)]
} else {
	outline_color = [0,0,0]
}
init_shader()


switch state {
    case PS_DASH:
    case PS_DASH_TURN:
        if (state_timer % 5 == 0 && hsp != 0){
            spawn_hit_fx(x - 16*spr_dir, y - 12 + (random_func(0, 36, true) - 36), nspecial_trail);
        }
    break;
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
        if (state_timer % 5 == 0 && hsp != 0){
            spawn_hit_fx(x - 16*spr_dir, y - 12 + (random_func(0, 36, true) - 36), nspecial_trail);
        }
        //if (state_timer == 3){
        //	sound_play(sound_get("poof"), false, noone, 0.5, 1.5);
        //}
    break;
}

if (!is_attacking){
	nspecial_loops = 0;
	sound_stop(nspec_loop_sfx);
	nspec_loop_timer = 0;
	nspec_is_casting = false;
	sound_stop(dspec_laugh);
}

if (nspec_loop_timer == 166){
	sound_stop(nspec_loop_sfx);
	nspec_loop_sfx = sound_play(sound_get("magic_charge_loop"), true, noone, 1.5);
}

if (!nspec_fully_charged && nspecial_charge >= nspecial_max_charge){
	nspec_fully_charged = true;
	white_flash_timer = 10;
	spawn_hit_fx(x - (42 * spr_dir),y-68,vfx_charge_stored).depth = depth - 2
	sound_play(sound_get("sfx_delta_full_charge"));
	
}

 if (nspec_small_cooldown > 0){
 	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
 	nspec_small_cooldown--;
 } else {
 	reset_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW);
 }

if (state == PS_AIR_DODGE){
	if (window == 0){
		airdodge_pos_x = floor(x);
		airdodge_pos_y = floor(y);
		//print("hud size setting: " + string(get_local_setting(SET_HUD_SIZE)));
		//print("hud name setting: " +string(get_local_setting(SET_HUD_NAMES)));
	}
	if (window == 1){
		draw_indicator = false;
		if (window_timer == 0){
			airdodge_pos_x = x;
			airdodge_pos_y = y;
			sound_play(sound_get("poof"), false, noone, 0.8, 1.2);
			sound_play(asset_get("sfx_forsburn_disappear"));
			spawn_hit_fx(x, y, poof_disappear);
		}
	}
	if (window == 2){
		if (window_timer == 0){
			sound_play(asset_get("sfx_forsburn_reappear"));
			sound_play(asset_get("sfx_bubblepop"));
		}
		if (window_timer == 3){
			spawn_hit_fx(x, y, poof_reappear);
		}
	}
}

if (state_timer == 1) && (!hitpause) {
    switch (state){
        case PS_FIRST_JUMP:
        var range = 0.1;
        var pitch_offset = range - (random_func(3, range*20, 1)/10);
        
        sound_play(sound_get("jump"), false, noone, 0.85, 1 + pitch_offset);
        break;
        case PS_DOUBLE_JUMP:
        var range = 0.1;
        var pitch_offset = range - (random_func(3, range*20, 1)/10);
        
        sound_play(sound_get("jump2"), false, noone, 0.85, 1 + pitch_offset);
        break;
    }
}

if (state == PS_PARRY && state_timer == 0 && !hitpause){
    var parry_shine = spawn_hit_fx(x, y, parry_vfx);
	parry_shine.follow_id = self;
	parry_shine.follow_time = 8;
}

with (hit_fx_obj) if (player_id == other) {
	if (hit_fx == other.dtilt_linger || hit_fx == other.nair_linger1 || hit_fx == other.nair_linger2
	|| hit_fx == other.jab1_linger || hit_fx == other.jab2_linger || hit_fx == other.jab3_linger || hit_fx == other.fair_linger || hit_fx == other.utilt_linger
	|| hit_fx == other.uair_linger){
	    depth = player_id.depth+1;
	}
	if (hit_fx == other.parry_vfx || hit_fx == other.ftilt_linger || hit_fx == other.bair_low || hit_fx == other.bair_mid || hit_fx == other.bair_high
	|| hit_fx == other.dair_linger || hit_fx == other.poof_disappear || hit_fx == other.poof_reappear || hit_fx == other.fspec_poof_start || hit_fx == other.fspec_poof_end
	|| hit_fx == other.dstrong_poof_start || hit_fx == other.dstrong_poof_end || hit_fx == other.fstrong_linger){
	    depth = player_id.depth-1;

	}
	    if (hit_fx == other.fstrong_linger || hit_fx == 253 || hit_fx == 143 || hit_fx == other.bobomb_explosion){
	    	uses_shader = 0;
	    }
}

update_particles()

//trailer specific stuff lol
/*
if (trailer_mode){
	go_through = true;
	visible = false;
	if (state == PS_WALK_TURN && state_timer == 0){
	with (oPlayer) if (url == 3456622676){
		set_state(PS_WALK_TURN);
		}
	}
}

if (trailer_mode && !reveal_mode){
	if (is_attacking){
		trailer_mode = false;
		reveal_mode = true;
		with (oPlayer) take_damage(player, -1, 200)
		x += 12*spr_dir;
		sound_play(sound_get("poof"), false, noone, 0.8, 1.2);
		sound_play(asset_get("sfx_bubblepop"));
		spawn_hit_fx(x, y, poof_disappear);
		visible = true;
	}
}

if (reveal_mode){
	if (is_attacking && attack == AT_USPECIAL) {
		set_window_value(attack, 3, AG_WINDOW_LENGTH, 9999999);
		if (window == 3 && window_timer == 60){
			end_match();
		}
	}
	with (oPlayer) {
	if (url == 3456622676){
			visible = false;
			go_through = true;
			invincible = true;
			invince_timer = 999999999;
		} else if self != other {
			if (state == PS_RESPAWN) state = PS_DEAD;
		}
	}
}*/
#define update_particles


for (var i = 0; i < ds_list_size(kamek_particles_obj.particles); i++) {
	var part = kamek_particles_obj.particles[| i]
	
	kamek_particles_obj.particles[| i].x += kamek_particles_obj.particles[| i].hsp;
	kamek_particles_obj.particles[| i].y += kamek_particles_obj.particles[| i].vsp;
	
	kamek_particles_obj.particles[| i].hsp += kamek_particles_obj.particles[| i].xaccel
	kamek_particles_obj.particles[| i].vsp +=kamek_particles_obj.particles[| i].yaccel
	
	if "vspmax" in part and kamek_particles_obj.particles[| i].vsp > kamek_particles_obj.particles[| i].vspmax {
		kamek_particles_obj.particles[| i].vsp = kamek_particles_obj.particles[| i].vspmax
	}
	
	kamek_particles_obj.particles[| i].angle +=kamek_particles_obj.particles[| i].torque
	kamek_particles_obj.particles[| i].lifetime--;
	
	if kamek_particles_obj.particles[| i].lifetime <= 0 {
		ds_list_delete(kamek_particles_obj.particles, i)
		i--;
	}
}

