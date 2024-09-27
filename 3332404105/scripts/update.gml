//updating stuff

//Base stuff
if (state_timer == 0){
    generic_timer = 0;
    generic_timer2 = 0;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    attacking_now = window;
}
else{
    attacking_now = 0;
}

if (misc_soundcooldown > 0){
    misc_soundcooldown -= 1;
    if (misc_soundcooldown == 1){
    	sound_stop(sfx_piss);
    }
}

//visuals

if (state_timer == 9 && state == PS_DOUBLE_JUMP || state_timer == 5 && state == PS_WALL_JUMP){
    sound_play(sound_get("flap"), false, false, 0.5)
}

if (attack == AT_DSPECIAL && attacking_now == 0){
    sound_stop(sfx_zilly1);
}
//color stuff

if (get_player_color(player) == 3){
    outline_color = [38, 203, 104];
}

init_shader();

//cool shading

if (cool_factor > 1 && hitpause == false){
    cool_factor -= 0.1
    vial_pulchritude += (cool_factor - 1) / 7.5
}
if (cool_factor < 1){
    cool_factor = 1;
}

if (cool_factor >  max_cool){
    cool_factor = max_cool;
}

if (hitpause == true && hitstop == hitstop_full){
    cool_factor += 0.025 + hitstop_full / 100;
}

if (strong_charge > 0 && attacking_now != 0 && 1 + 0.1 * strong_charge > cool_factor){
    cool_factor = 1 + 0.1 * strong_charge;
}

if (attack == AT_FSTRONG && attacking_now == 3 || attack == AT_USTRONG && attacking_now == 3 || attack == AT_DSTRONG && attacking_now == 3){
    cool_factor =  max_cool;
}

if (shades_wearing > 0){
    cool_factor = max_cool;
} else
if (shades_wearing != 0){
    shades_wearing = 0
}


//

if (generic_effect_cooldown > 0){
    generic_effect_cooldown -= 1;
}


//inventory management

if (inv_selection > 4 || inv_selection < 0){
    inv_selection = 0;
}

if (inv_count[inv_selection] <= 0 && inv_slot[inv_selection] != 0){
    inv_slot[inv_selection] = 0;
    inv_count[inv_selection] = 0;
}

if (inv_slot[inv_selection] != 0 && inv_slot[inv_selection] != inv_selection_unend){
    if (attack != AT_DSPECIAL_2 || attacking_now == 0){
        inv_selection_unend = inv_slot[inv_selection];
    }
}

if (is_special_pressed(DIR_NONE) && attack != AT_FSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL && attack != AT_USPECIAL || is_special_pressed(DIR_NONE) && attacking_now == 0 || move_cooldown[AT_FSPECIAL] != 0 && is_special_pressed(DIR_SIDE) && attack != AT_DSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_USPECIAL || move_cooldown[AT_FSPECIAL] != 0 && is_special_pressed(DIR_SIDE) && attacking_now == 0){
    if (inv_selection == 4){
        inv_selection = 0
    } else{
        inv_selection += 1;
    }
    vial_imagination += 1;
    clear_button_buffer(PC_SPECIAL_PRESSED);
    sound_play(sfx_shuffle);
}

if (inv_slot[inv_selection] == 0){
    move_cooldown[AT_FSPECIAL] = 4;
}

//ammo

if (ammo < 0 || ammo > 6){
    ammo = clamp(ammo, 0, 6);
}

if (ammo != 6){
    ammo_regen_timer += 1
    if (ammo_regen_timer >= 3000){
        ammo += 1
        ammo_regen_timer = 0
    }
}

if (weapon_locked > 0){
    weapon_locked -= 1;
}

//vials

//vim
if (vial_vim > vial_limit){
    vial_vim = vial_limit;
}

if (vial_vim != vial_base){
    vial_vim -= sign(vial_vim - vial_base) * 0.15;
}

if (attack_pressed != false){
    vial_vim += 0.2
}

//imagination

if (vial_imagination > vial_limit){
    vial_imagination = vial_limit;
}

if (vial_imagination != vial_base){
    vial_imagination -= sign(vial_imagination - vial_base) * 0.1;
}

if (state == PS_CROUCH && state_timer > 30 || state == PS_IDLE && state_timer > 60 || window != 0 && attacking_now == 0 || state == PS_WAVELAND){
    vial_imagination += 0.3
}

if (special_pressed != false){
    vial_imagination += 0.5
}

//pulchritude

if (vial_pulchritude > vial_limit){
    vial_pulchritude = vial_limit;
}

if (vial_pulchritude != vial_base){
    vial_pulchritude -= sign(vial_pulchritude - vial_base) * 0.05;
}

if (shield_pressed != false){
    vial_pulchritude += 0.5
}

move_cooldown[AT_NSPECIAL] = 10000000000;

//hitbox_boost
if (instance_exists(pHitBox)){
    with (pHitBox){
    	if (hitbox_timer == 0){
        	if (player_id == other.id && type == 1 && attack != AT_DTILT && attack != AT_USTRONG && attack != AT_FSTRONG && attack != AT_DSTRONG){
        	   if (attack != AT_FTILT && attack != AT_FAIR && attack != AT_BAIR || hbox_num != 2){
        	        kb_value = (kb_value ) / 2 + (kb_value * player_id.vial_imagination / 100) / 2;
        	        kb_scale = kb_scale * player_id.vial_pulchritude / 100;
        	        damage = round((damage) / 2 + (damage * player_id.vial_vim / 100) / 1.5);
        	    }
        	} else
        	if (player_id == other.id && type == 1){
        		if (attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FSTRONG){
        			if (hbox_num == 3){
        				kb_value = kb_value * 1 + player_id.strongallres[4] / 3;
        	        	kb_scale = kb_scale * 1 + player_id.strongallres[2] / 9;
        			}
        		}
        	}
    	}
    }
}
//intox 

if (intoxication > 499){
    intoxication =  499
}

if (intoxication < 0 || intoxication == -0){
    intoxication =  0
}

if (intox_level != floor(intoxication / 100)){
    intox_level = floor(intoxication / 100);
}

if (hitpause == false){
    vial_imagination += intox_level * 0.03;
}

if (intoxication > 0){
    intoxication -= 0.05;
    vial_imagination += intox_level / 3;
    if (state == PS_IDLE){
        intoxication -= 1;
    }
    ground_friction = 0.4 / intox_level
    knockback_adj = 1 + 0.1 * intox_level
} else{
    ground_friction = 0.4
    knockback_adj = 1
}

if (intoxication < 0){
    intoxication = 0;
}


if (intox_level >= 4){
    if (state == PS_DASH){
        hsp = 8 * spr_dir;
        window = 1;
        window_timer = 0;
        state = PS_ATTACK_GROUND;
        attack = AT_DATTACK;
    }
}

if (intox_level >= 2){
    with (pHitBox){
        if (player_id == other.id){
            kb_angle = random_func(1 + hbox_num, 360, true);
        }
    }
}

if (intox_level >= 4){
    if (attacking_now == 1 && window_timer == 0){
        var random_number = random_func_2(1,3, true);
        if (random_number == 2){
            spr_dir *= -1;
        }
    }
    if (attacking_now == 0 ){
        if (floor(state_timer / 3) == ceil(state_timer / 3)){
            inv_selection = random_func(2, 4, true);
        }
    }
}

//allegence

if (hitpause == false){
    allresometer[allegiance] += 2;
    if (allegiance != 4){
        allresometer[1] += (1 + sign(allegiance)) * (vial_pulchritude / 100);
    } else{
        allresometer[3] -= 1;
    }
    if (allegiance != 3){
        allresometer[2] += (1 + sign(allegiance)) * (vial_pulchritude / 100);
    } else{
        allresometer[4] -= 1;
    }
    if (allegiance != 1){
        allresometer[3] += (1 + sign(allegiance)) * (vial_pulchritude / 100);
    } else{
        allresometer[2] -= 1;
    }
    if (allegiance != 2){
    allresometer[4] += (1 + sign(allegiance)) * (vial_pulchritude / 100);
    } else{
        allresometer[1] -= 1;
    }
}

if (allresometer[1] > allresource_cost && allresource[1] < allresource_max && allresource_gain_spacing == 0){
    allresource[1] += 1;
    sound_play(asset_get("sfx_chest_open"));
    sound_play(sfx_all_weasel, 0, 0, 0.5);
    allresometer[1] -= allresource_cost;
    allresource_gain_spacing = 12;
    spawn_hit_fx(x, y - 48, vfx_allvis1);
} else if (allresometer[1] > allresource_cost){
    allresometer[1] = allresource_cost;
}

if (allresometer[2] > allresource_cost && allresource[2] < allresource_max && allresource_gain_spacing == 0){
    allresource[2] += 1;
    sound_play(asset_get("sfx_chest_open"));
    sound_play(sfx_all_clown, 0, 0, 0.5);
    allresometer[2] -= allresource_cost;
    allresource_gain_spacing = 12;
    spawn_hit_fx(x, y - 48, vfx_allvis2);
}else if (allresometer[2] > allresource_cost){
    allresometer[2] = allresource_cost;
}


if (allresometer[3] > allresource_cost && allresource[3] < allresource_max && allresource_gain_spacing == 0){
    allresource[3] += 1;
    sound_play(asset_get("sfx_chest_open"));
    sound_play(sfx_all_elf, 0, 0, 0.5);
    allresometer[3] -= allresource_cost;
    allresource_gain_spacing = 12;
    spawn_hit_fx(x, y - 48, vfx_allvis3);
}else if (allresometer[3] > allresource_cost){
    allresometer[3] = allresource_cost;
}

if (allresometer[4] > allresource_cost && allresource[4] < allresource_max && allresource_gain_spacing == 0){
    allresource[4] += 1;
    sound_play(asset_get("sfx_chest_open"));
    sound_play(sfx_all_hog, 0, 0, 0.5);
    allresometer[4] -= allresource_cost;
    allresource_gain_spacing = 12;
    spawn_hit_fx(x, y - 48, vfx_allvis4);
}else if (allresometer[4] > allresource_cost){
    allresometer[4] = allresource_cost;
}

if (allresource_gain_spacing > 0){
    allresource_gain_spacing -= 1;
}

if (left_pressed){
    allresometer[1] += 5
}

if (right_pressed){
    allresometer[3] += 5
}

if (down_pressed){
    allresometer[2] += 5
}

if (up_pressed){
    allresometer[4] += 5
}

if (attacking_now != 1 || attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG){
    allvisresource[1] = allresource[1];
    allvisresource[2] = allresource[2];
    allvisresource[3] = allresource[3];
    allvisresource[4] = allresource[4];
}

if (allegiance == 1 || allegiance == 5){
    fast_fall = 14 + (allresource[1] + 1) * 2;
    max_fall = 9 + (allresource[1] + 1) / 6;
} else{
    fast_fall = 14;
    max_fall = 9;
}


if (allegiance == 2 || allegiance == 5){
    gravity_speed = 0.5 - (allresource[2] + 1) / 40;
} else{
    gravity_speed = 0.5;
}

if (allegiance == 3 || allegiance == 5){
    max_djumps = 1 + allresource[3] + 1;
} else{
    max_djumps = 1
}


if (allegiance == 4 || allegiance == 5){
    knockback_adj = 1.1 - (allresource[4] + 1) / 10;
} else{
    knockback_adj = 1.1
}

if (summon_guy_kingdom != 0){
    summoned_guy = instance_create(summon_guy_x, summon_guy_y, "obj_article2");
    summoned_guy.player_id = id;
    summoned_guy.hsp = 0
    summoned_guy.vsp = -6
    summon_guy_kingdom = 0
}

//window
if (!instance_exists(window_art[0])){
    window_x[0] = x;
    window_y[0] = y;
} else{
    window_x[0] = window_art[0].x;
    window_y[0] = window_art[0].y;
}

if (!instance_exists(window_art[1])){
    window_x[1] = x;
    window_y[1] = y;
} else{
    window_x[1] = window_art[1].x;
    window_y[1] = window_art[1].y;
}

if (inv_slot[0] == 5 || inv_slot[1] == 5 || inv_slot[2] == 5 || inv_slot[3] == 5 || inv_slot[4] == 5){
    has_a_window = true;
} else{
    has_a_window = false
}
//vfx stuff
if (shield_pressed && sprite_index == sprite_get("intro")){
    body_hud = 0;
}

if (commuting_with_kindom == 1 && attacking_now != 2 || commuting_with_kindom == 1 && attacking_now != AT_DSPECIAL_2){
	spawn_hit_fx(x + 72 * spr_dir, y, vfx_poof);
	commuting_with_kindom = 0;
}

if (instance_exists(generic_effect)){
	if (generic_effect.sprite_index == sprite_get("intro_door_c")){
	    if (round(generic_effect.image_index) == 13 && generic_effect_cooldown == 0){
			sound_play(asset_get("sfx_blow_medium1"));
			generic_effect_cooldown = 4;
		}
		if (round(generic_effect.image_index) == 15 && generic_effect_cooldown == 0){
			sound_play(asset_get("sfx_blow_medium1"), false, false, 0.7, 1.2);
			generic_effect_cooldown = 4;
		}
	}
}

if (instance_exists(hit_fx_obj)){
    with (hit_fx_obj){
        if (variable_instance_exists(self, "player_id")){
            if (player_id == other.id){
                if (sprite_index == sprite_get("hfx_flash") || sprite_index == sprite_get("hfx_bigflash") || sprite_index == sprite_get("hfx_lock") || sprite_index == sprite_get("hfx_lock_c") || sprite_index == sprite_get("hfx_poof") || sprite_index == sprite_get("hfx_autoparry") || sprite_index == sprite_get("hfx_what") || sprite_index == sprite_get("hfx_-ify") || sprite_index == sprite_get("coffee_empty") || sprite_index == sprite_get("bust_shades_proj")){
                    if (instance_exists(hit_player)){
                        depth = hit_player.depth - 1 
                    }
                    else{
                        depth = -5
                    }
                    if (sprite_index != sprite_get("hfx_lock")){
                        uses_shader = 0;
                    }
                    if (sprite_index == sprite_get("coffee_empty") || sprite_index == sprite_get("bust_shades_proj")){
                        draw_angle += 25;
                        if (image_yscale > 0 && sprite_index != sprite_get("bust_shades_proj")){
                            spr_dir /= 1.05;
                            image_yscale /= 1.05;
                        }
                        if (hsp != 0){
                            hsp /= 1.05;
                        }
                    }
                    if (sprite_index == sprite_get("hfx_autoparry") || sprite_index == sprite_get("hfx_what")){
                        y -= 1;
                        if (spr_dir == -1){
                            spr_dir = 1;
                        }
                        if (step_timer > hit_length - 10){
                            image_yscale -= 0.1;
                            spr_dir -= 0.1;
                        }
                    }
                    if (step_timer == 1){
                        if (sprite_index == sprite_get("hfx_flash")){
                            x += random_func(10, 48, true) - 24;
                            y += random_func(11, 48, true) - 24;
                        }
                        if (sprite_index == sprite_get("hfx_-ify")){
                            sound_play(sound_get("zillyhoo_end"), false, false, 0.25, 5);
                            spr_dir = 1;
                        }
                    }
                }
                if (sprite_index == player_id.spr_tfx_bop || sprite_index == player_id.spr_tfx_kick || sprite_index == player_id.spr_tfx_pow || sprite_index == player_id.spr_tfx_thwak){
                    depth = -10;
                    spr_dir = 1;
                    hit_length = image_number * 2;
                    x = x + random_func(1, 3, true) - 1;
                    y = y + random_func(2, 3, true) - 1;
                }
                if (sprite_index == sprite_get("hfx_res1") || sprite_index == sprite_get("hfx_res2") || sprite_index == sprite_get("hfx_res3") || sprite_index == sprite_get("hfx_res4")){
                    if (step_timer < 12){
                        x += lengthdir_x((step_timer - 12) / 2, draw_angle - 90);
                        y += lengthdir_y((step_timer - 12) / 2, draw_angle - 90);
                    }
                    if (step_timer > 14){
                        image_alpha -= 0.1;
                    }
                }
            }
        }
    }
}

//hat store

if (hat_store > 9){
	hat_store = 9;
}

//sfx stuff
//airdodge

if (state == PS_WAVELAND){
    if (state_timer == 7){
        sound_stop(air_dodge_sound)
    }
}

if (prev_prev_state == PS_AIR_DODGE){
    sound_stop(air_dodge_sound)
}

//artdude_walk

if (get_player_color(player) == 7){
    if (state == PS_WALK && state_timer == 0){ 
        sound_play(sound_get("art_dude_walk"), true);
    }
    if (state == PS_DASH && state_timer == 0){
        sound_play(sound_get("art_dude_walk"), true, false, 1.1, 1.2);
    }
    if (prev_state == PS_WALK && state_timer == 0 && state != PS_WALK || prev_state == PS_DASH && state_timer == 0 && state != PS_DASH_TURN && state != PS_DASH || attacking_now == 1){
        sound_stop(sound_get("art_dude_walk"))
    }
}

//training

if (is_training_mode == 1){
    if (attack_down && taunt_pressed){
        attack = AT_TAUNT_2;
        window = 1;
        window_timer = 1;
    }
}