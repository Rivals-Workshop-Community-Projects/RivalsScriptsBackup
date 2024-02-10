//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

// NOTE: Wall pull check for fspecial
// NOTE2: Make fspecial able to be attack canceled on the ground into other attacks (rather than its current popup)

switch(attack){
	case 2: // intro
		if window < get_attack_value(2, AG_NUM_WINDOWS) && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_kragg_roll_end"), false, noone, true, 1.2)
		} else if window == get_attack_value(2, AG_NUM_WINDOWS) && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_syl_dstrong"), false, noone, true, .9)
		}
		if (window <= get_attack_value(2, AG_NUM_WINDOWS)) hud_offset = 2000; // put hud away
		if (window == get_attack_value(2, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
	break;
    case AT_FTILT:
        if (window == 1 && window_timer == (has_rune("L")?4:6)) {
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.7, 1.15);
        }
    break;
    case AT_DTILT:
        if (window == 1 && window_timer == 1) {
            sound_play(asset_get("sfx_syl_ustrong"), false, noone, 0.7, 1.35);
        }
        if (window == 1 && window_timer == 6) {
            //sound_play(asset_get("sfx_swipe_weak2"), false, noone, 0.5, 1.1);
            sound_play(asset_get("sfx_leaves"), false, noone, 0.7, 1.25);
        }
    break;
    case AT_UTILT:
        if (window == 1 && window_timer > 13) || (window < 4 && window_timer <= 15){
            hud_offset = round(lerp(hud_offset, 190, 0.1))    
        }
        switch(window){
            case 1:
                if (window_timer == 10){
                    hsp = spr_dir*4
                    sound_play(asset_get("sfx_mol_flare_shoot"))
                }
            break;
            case 2:
                if ((window_timer mod 5)-2 == 0 && window_timer > 0 && window_timer < 12 && !hitpause){
                    sound_play(asset_get("sfx_mol_spark_explode2"));
                }
            break;
        }
    break;
    case AT_DATTACK:
        if (window == 1){
            var accel_interval = 0.5;
            hsp += accel_interval*spr_dir;
        }
        if (window == 1 && window_timer == 1){
            sound_play(asset_get("sfx_syl_ustrong_part1"), false, noone, 1, 1.5);
            sound_play(asset_get("sfx_may_root"), false, noone, 1, 1.4);
        }
    break;
    case AT_FSTRONG:
        set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 1/3 + (strong_charge / 200));
        set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_HSPEED, 7 + (strong_charge / 20));
        if window == 1 && window_timer == 2{
            sound_play(asset_get("sfx_ori_dtilt_perform"), false, noone, 0.9, 1.1);
            sound_play(sound_get("unt_summon"), false, noone, 1, 0.9);
        }
        if window == 2 && has_rune("L"){
            strong_charge += 1;
        }
        if window == 3 && window_timer == 2{
            sound_play(asset_get("sfx_ori_bash_use"));
            sound_play(asset_get("sfx_absa_uair"), false, noone, 0.7, 0.8);
        }
        if window <= 3{
            hud_offset = round(lerp(hud_offset, 50, 0.3));
        }
    break;
    case AT_DSTRONG:
        if window == 2 && has_rune("L"){
            strong_charge += 1;
        }
        if window == 3 && window_timer == 5{
            sound_play(asset_get("sfx_buzzsaw_throw"));
        }
        if window == 3 && window_timer == 2{
            sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 0.8);
        }
    break;
    case AT_USTRONG:
        if (window == 1 && window_timer == 8){
           //sound_play(asset_get("sfx_syl_ustrong_part1"));
           sound_play(asset_get("sfx_syl_nspecial"), false, noone, 0.4, 1.1);
           sound_play(asset_get("sfx_leaves"), false, noone, 0.7, 0.8);
        }
        if (window == 3 && window_timer == 1){
           //sound_play(asset_get("sfx_syl_ustrong_part1"));
           sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.6, 0.9);
        }
        if window >= 3{
            hud_offset = round(lerp(hud_offset, window == 3? 100 + (window_timer * 10):window_timer <= 8? 170:210 - (window_timer * 6), 0.5));
        }
    break;
    case AT_NAIR:
        if (window == 1 && window_timer == (has_rune("L")?4:6)){
            sound_play(asset_get("sfx_ori_uptilt_single"), false, noone, 0.7, 1.3);
        }
    if (window == 1 && window_timer == (has_rune("L")?7:11)){
        sound_play(asset_get("sfx_ell_dtilt2"), false, noone, 1, 1.1);
    }
    break;
    case AT_FAIR:
        switch(window){
            case 1:
                hud_offset = round(lerp(hud_offset, 50 + (window_timer * 5), 0.5));
                switch(window_timer){
                    case 4:
                        sound_play(asset_get("sfx_syl_ustrong_part1"), false, noone, 0.5);
                        //sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 0.8);
                        //sound_play(asset_get("sfx_syl_fspecial_bite"), false, noone, 0.5, 0.8);
                    break;
                }
            break;
        }
    break;
    case AT_BAIR:
        if window == 1 && window_timer == 2{
            sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.9, 1.1);
            flowey_bairloop = 1;
            set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
            set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
        }
        if window == 1 && window_timer == 7{
            sound_play(asset_get("sfx_abyss_hazard_hit"), false, noone, 0.7, 0.9);
        }
        if has_rune("I") && window == 3 && window_timer == 3 && flowey_bairloop == 1{
            window = 1;
            window_timer = 6;
            set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
            set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
            flowey_bairloop = 0;
            attack_end();
        }
    break;
    case AT_DAIR:
        if window == 1 && window_timer == 2{
            sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.9, 0.9);
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.2, 1.15);
        }
        if window == 3 && window_timer == 5{
            sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.9, 1.1);
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.2, 1.2);
        }
        /*if hitpause{
            can_fast_fall = false;
        }*/
    break;
    case AT_UAIR:
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_ori_grenade_hit_ground"), false, noone, 1.1, 1.2);
            sound_play(asset_get("sfx_ori_taunt2"), false, noone, 1.2, 0.9);
        }
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_ori_grenade_hit"), false, noone, 1.1, 1.2);
        }
        //if ((window == 1 && window_timer == 8) || (window == 2 && window_timer == 2)) && !hitpause{
        //    sound_play(asset_get("sfx_ori_spirit_flame_" + string(window)));
        //}
        hud_offset = round(lerp(hud_offset, 140, 0.5));
    break;
    case AT_NSPECIAL:
        switch (window) {
            case 1:
                if (window_timer == 2) {
                    sound_play(asset_get("mfx_xp"), false, noone, 0.5, 0.7);
                    sound_play(asset_get("sfx_ori_grenade_aim"), false, noone, 0.7, 1.9);
                }
                break;
            case 3:
                if (window_timer == 6 && !special_down && hitstop <= 0) {
                    create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
                    window = 5;
                    window_timer = 0;
                    sound_play(asset_get("sfx_ice_burst_up"), false, noone, 1, 1.2);
                    spawn_hit_fx( x + 44 * spr_dir, y - 24, small_leaf_hfx );
                }
                move_cooldown[AT_NSPECIAL] = 35;
                break;
            case 4:
                if (window_timer == 4) {
                    create_hitbox(AT_NSPECIAL, 2, x + 36 * spr_dir, y - 24);
                    if has_rune("G"){
                        rune_pellet1 = create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
                        rune_pellet2 = create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
                    }
                    sound_play(asset_get("sfx_ice_burst_up"), false, noone, 1, 1.4);
                    sound_play(asset_get("sfx_leaves"), false, noone, 0.5, 1);
                    spawn_hit_fx( x + 44 * spr_dir, y - 24, small_leaf_hfx );
                }
                move_cooldown[AT_NSPECIAL] = 80;
                break;
        }
    break;
    case AT_FSPECIAL:
        grav = 0.1;
        move_cooldown[AT_FSPECIAL] = 50;
        //vsp = clamp(1, -1, vsp);
        can_move = false;
        if was_parried{
            set_state(PS_PRATFALL);
        }
        if window == 1{
        	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
            hsp *= 0.75;
            vsp *= 0.75;
        }
        else if window == 2 || window == 3{
            if window == 2 && window_timer == 5 && hitstop <= 0 && flowey_vine == -4{
                flowey_vine = create_hitbox(AT_FSPECIAL, 1, x + 68 * spr_dir, y - 16);
                flowey_vineCheck = create_hitbox(AT_FSPECIAL, 3, x + 68 * spr_dir, y - 16);
            }
            //hsp = 0;
            //vsp = 0;
            with flowey_vine{
                if player_id == other && attack == AT_FSPECIAL && !other.hitpause{
                    x_pos += (15 - (3/4) * hitbox_timer) * spr_dir;
                }
                if (hitbox_timer > 20) {
                    image_xscale = 0;
                    image_yscale = 0;
                }
            }
            if (flowey_vineCheck != noone && instance_exists(flowey_vineCheck)) {
                flowey_vineCheck.x = flowey_vine.x + 10 * spr_dir;
                flowey_vineCheck.y = flowey_vine.y;
            }
            if instance_exists(grabp) && instance_exists(flowey_vine){
                grabp.hsp = 0;
                grabp.vsp = 0;
                grabp.spr_dir = -spr_dir;
                grabp.state = PS_FLASHED;
                grabp.free = true;
                grabp.x = flowey_vine.x + 20 * spr_dir;
                grabp.y = flowey_vine.y + 15;
                if flowey_vine.hitbox_timer >= 40{
                    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
                    window = 5;
                    window_timer = 0;
                    flowey_vineCheck.y -= 1000;
                    flowey_vineCheck.destroyed = true;
                    //enemy_pos = [grabp.x, grabp.y];
                    if grabp = flowey_save{
                        flowey_save.hsp = spr_dir * -5;
                        flowey_save.vsp = -7;
                        sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.6, 0.9);
                    }
                    else{
                        grabp.state = PS_FLASHED;
                    }
                }
            }
        }
        if window == 5 && window_timer < 7 && grabp != flowey_save{
            hsp = 0;
            vsp = 0;
            grabp.state = PS_FLASHED;
            grabp.x = x + 40 * spr_dir;
            grabp.y = y - 10;
        }
        if window == 5 && window_timer > 12 {
            can_jump = true;
            can_attack = true;
            if (djumps > 1) {
                djumps = 1;
            }
        }
    break;
    case AT_DSPECIAL:
        switch window{
            case 1:
                set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
                can_jump = false;
                if(window_timer == 8) sound_play(asset_get("sfx_kragg_rock_shatter"))
            break;
            case 2:
				set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
                can_jump = false;
                hsp = (spr_dir * (has_rune("B")? 8:5)) + ((has_rune("B")? 3:2) * (right_down - left_down));
                if special_pressed && window_timer > 1 {
                    window = 3;
                    window_timer = 0;
                    // sound_play(asset_get(""))
                }
                if shield_pressed || (!place_meeting(x + (spr_dir * 60), y + 10, (asset_get("par_block"))) && !place_meeting(x + (spr_dir * 60), y + 10, (asset_get("par_jumpthrough")))) || place_meeting(x + (spr_dir * 35), y, (asset_get("par_block"))){
                    window = 4;
                    window_timer = 0;
                }
            break;
            case 3:
				hud_offset = round(lerp(hud_offset, 180, 0.5));
                hsp *= 0.975;
                if(window_timer == 7) sound_play(asset_get("sfx_oly_uspecial_kick"))
                if has_rune("M"){
                    hsp = 0;
                    switch window_timer{
                        case 5:
                            if (place_meeting((x - (spr_dir * 90)), y + 10, (asset_get("par_block"))) || place_meeting(x - (spr_dir * 90), y + 10, (asset_get("par_jumpthrough")))) && !place_meeting(x - (spr_dir * 80), y, (asset_get("par_block"))){
                                create_hitbox(AT_DSPECIAL, 4, x - (110 * spr_dir), y - 82);
                            }
                            if (place_meeting((x + (spr_dir * 130)), y + 10, (asset_get("par_block"))) || place_meeting(x + (spr_dir * 130), y + 10, (asset_get("par_jumpthrough")))) && !place_meeting(x + (spr_dir * 110), y, (asset_get("par_block"))){
                                create_hitbox(AT_DSPECIAL, 4, x + (34 * spr_dir), y - 82);
                            }
                        break;
                        case 10:
                            if (place_meeting((x - (spr_dir * 162)), y + 10, (asset_get("par_block"))) || place_meeting(x - (spr_dir * 162), y + 10, (asset_get("par_jumpthrough")))) && !place_meeting(x - (spr_dir * 152), y, (asset_get("par_block"))){
                                create_hitbox(AT_DSPECIAL, 4, x - (182 * spr_dir), y - 82);
                            }
                            if (place_meeting((x + (spr_dir * 202)), y + 10, (asset_get("par_block"))) || place_meeting(x + (spr_dir * 202), y + 10, (asset_get("par_jumpthrough")))) && !place_meeting(x + (spr_dir * 182), y, (asset_get("par_block"))){
                                create_hitbox(AT_DSPECIAL, 4, x + (106 * spr_dir), y - 82);
                            }
                        break;
                    }
                }
                if has_hit{
                    set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
                }
            break;
            case 4:
                if window_timer > 8{
                    can_jump = true;
                }
            break;
        }
    break;
    case AT_DSPECIAL_AIR:
		can_move = false;
		can_fast_fall = false;
		if window == 1{
			hsp *= 0.85;
			vsp *= 0.85;
		}
		if window == 3{
			if(window_timer == 1 && !hitpause) sound_play(asset_get("sfx_kragg_rock_shatter"))
			attack_end();
			destroy_hitboxes();
			if window_timer = 12{
				set_attack(AT_DSPECIAL);
				window = 2;
				window_timer = 0;
			}
		}
		fall_through = (down_down == true? true:false);
    break;
    case AT_USPECIAL:
		if flowey_savecooldown || !flowey_saves_used{
			destroy_hitboxes();
            attack_end();
            set_state(free? PS_IDLE_AIR:PS_IDLE);
    	}
        if window == 1 && window_timer == (has_rune("L")?8:12) && !instance_exists(flowey_save){
            flowey_save = instance_create(x, y, "obj_article1");
            flowey_savecooldown = 10;
            destroy_hitboxes();
            attack_end();
            set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
        else if window == 2{
            vsp = -0.5;
            hsp *= 0.975;
            if window_timer == 5 && has_rune("F") && special_down{
                flowey_savejump += has_rune("L")? 1:0.5;
                window_timer = 0;
                if flowey_savejump >= 5{
                    window_timer = 5;
                }
            }
            if window_timer == 6{
                x = flowey_save.x;
                y = flowey_save.y - 0.1;
                if special_down{
                    vsp = -10 - flowey_savejump + flowey_save.vsp;
                    flowey_savejump = 0;
                }
                else{
                    vsp = (flowey_savejump == 0? -6:(-10 - flowey_savejump)) + flowey_save.vsp;
                    flowey_savejump = 0;
                }
                if right_down{
                    hsp = abs(hsp) + flowey_save.hsp;
                }
                else if left_down{
                    hsp = (abs(hsp) * -1) + flowey_save.hsp;
                }
                else{
                	hsp = flowey_save.hsp;
                }
                flowey_saves_used -= 1;
                spawn_hit_fx(x, y - 24, vfx_star);
                if "flowey_saveattack" in flowey_save{
                	instance_destroy(flowey_save.flowey_saveattack);
                }
                instance_destroy(flowey_save);
                //uspc_atkFall = 10;
                if (djumps > 1) {
                    djumps = 1;
                }
            }
        }
    break;
    case AT_TAUNT:
        move_cooldown[AT_TAUNT] = 2;
        if has_rune("N") && instance_exists(flowey_save){
            var fly_dist = point_distance(0, 0, hsp, vsp);
            var acceleration = 0.3;
            if !joy_pad_idle{
                flowey_save.hsp += lengthdir_x(acceleration, joy_dir);
                flowey_save.vsp += lengthdir_y(acceleration, joy_dir);
	        }
        }
        if state_timer == 1{
            sound_stop(sound_get("floweylaugh"));
            sound_play(sound_get("floweylaugh"), false, noone, 1.2, 1);
        }
        if state_timer == 210 || (state_timer >= 30 && !taunt_down){
            attack_end();
            destroy_hitboxes();
            set_state(free? PS_IDLE_AIR:PS_IDLE);
        }
    break;
    case AT_TAUNT_2:
        move_cooldown[AT_TAUNT_2] = 2;
        if window == 1 && window_timer == 28{
        	sound_play(sound_get("vineboom"));
        }
        if window == 2 && state_timer >= 50 && !taunt_down{
            window = 3;
            window_timer = 0;
        }
        if(window == 3 && genesis){
        	if(window_timer == 8 && !hitpause){
        		spawn_hit_fx(x + 25 * spr_dir, y - 5, HFX_ELL_FSPEC_HIT);
        		sound_play(asset_get("sfx_mol_norm_explode"));
        		create_hitbox(AT_TAUNT_2, 1, x + 25 * spr_dir, y - 5);
        	}
        }
    break;
	case 49:
		through_platforms = true;
		fall_through = true;
		can_fast_fall = false;
		can_move = false;
		switch window{
			case 1:
				flowey_final_strong_timer = 600;
				flowey_final_strong_cooldown = 0;
				hsp = 0;
				vsp = -3 + (window_timer * 0.05);
				if get_player_color(player) != 3{
					particles = [];
				}
			break;
			case 2:
				flowey_final_strong_timer--;
				flowey_final_strong_cooldown--;
				if (!joy_pad_idle){
					hsp += lengthdir_x(1, joy_dir) * 0.3;
					vsp += lengthdir_y(1, joy_dir) * 0.3;
				}
				else{
					hsp *= .8;
					vsp *= .8;
				}
				var fly_dir = point_direction(0,0,hsp,vsp);
				var fly_dist = point_distance(0,0,hsp,vsp);
				var max_speed = 8;
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				if (flowey_final_strong_timer <= 0 || special_pressed) && flowey_final_strong_cooldown <= 0{
					window = 3;
					window_timer = 0;
				}
			break;
			case 3:
				flowey_final_strong_timer--;
				hsp *= .9;
				vsp *= .9;
			break;
			case 4:
				flowey_final_strong_timer--;
				hsp *= .9;
				vsp *= .9;
				if window_timer == 6{
					window = flowey_final_strong_timer <= 0? 5:2;
					window_timer = 0;
					flowey_final_strong_cooldown = 60;
					attack_end();
				}
			break;
			case 5:
			flowey_final_strong_timer--;
			hsp *= .6;
			vsp *= .6;
			break;
		}
    break;
}

if has_rune("O") && instance_exists(flowey_save){
    with pHitBox{
        if "has_struck_save" not in self{
            has_struck_save = 0;
        }
        if has_struck_save != 1 && attack != AT_FSPECIAL && place_meeting(x, y, player_id.flowey_save){
            if x <= player_id.flowey_save.x{
                send_side = 1;
            }
            else{
                send_side = -1;
            }
            player_id.flowey_save.hsp = lengthdir_x(kb_value, kb_angle) * (hit_flipper == 3? send_side:other.spr_dir);
            player_id.flowey_save.vsp = lengthdir_y(kb_value, kb_angle);
            has_struck_save = 1;
        }
    }
}