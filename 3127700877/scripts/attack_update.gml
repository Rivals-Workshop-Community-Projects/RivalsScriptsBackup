// attack_update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#every-frame
// Runs every frame while your character is attacking.

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_DSPECIAL_AIR) {
    trigger_b_reverse();
}

var window_end = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch(attack){
    
    case AT_DATTACK:
        if (window == 1 && window_time_is (window_end)) {
            sound_play(asset_get("sfx_frog_uspecial_spin"), false, noone, 1, 2);
            sound_play(asset_get("sfx_frog_uspecial_spin"), false, noone, 1, 2);
            sound_play(asset_get("sfx_ell_drill_loop"), false, noone, .4, 1);
            sound_play(asset_get("sfx_ell_drill_loop"), false, noone, .4, .5); 
            sound_play(asset_get("sfx_spin_longer"), false, noone, 1, 2);
        }
        set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 30 * spr_dir);
        set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 30 * spr_dir);
        set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 30 * spr_dir);
        set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 30 * spr_dir);
    break;
    
    case AT_FTILT:
    if(get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME)){
    	if (is_attack_pressed(DIR_RIGHT) && spr_dir == 1) || (is_attack_pressed(DIR_LEFT) && spr_dir == -1){
    		window++;
    		window_timer = 0;
    	}
    }
    break;
    
    case AT_DAIR:
    set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 130 - 30 * !has_hit);
    can_fast_fall = false;
    if(window == 1){
        if(vsp > 0){
            vsp = -4;
        }
        vsp *= .9;
        hsp *= .9;
    }
    if(window == 2){
        can_wall_jump = true;
        if(!free && !hitpause){
            sound_play(asset_get("sfx_zetter_downb"));
            window = 3;
            window_timer = 0;
            spawn_base_dust(x - 30, y, "dash_start", 1);
            spawn_base_dust(x + 30, y, "dash_start", -1);
        }
    }
    break;
    
    case AT_FSTRONG:
    if(window == 1 && window_timer == 1 && !hitpause){
        sound_play(asset_get("sfx_syl_fspecial_bite"), false, false, true, 0.85);
    }
    break;
    case AT_USTRONG:
    if (window == 1) {
        if(window_timer == 1 && !hitpause) ustrong_charge_sound = sound_play( asset_get("sfx_frog_fspecial_charge_loop"), true, noone, 1, .7);
    }
    if (window == 2) {
        if(window_timer == window_end && !hitpause) sound_stop (ustrong_charge_sound);
    }
    break;
    case AT_DSTRONG:
    if(window == 2 && window_time_is(window_end)){
        if(instance_exists(sludge_puddle_id) && point_distance(x, y, x, sludge_puddle_id.y) < 2 && point_distance(x, y, sludge_puddle_id.x, y) <= 64){
            sludge_puddle_id.state = 69;
            sludge_puddle_id.state_timer = 0;
            sludge_puddle_id = noone;
            dstrong_mobile = true;
            set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 36);
            set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 32);
            sound_play(asset_get("sfx_orca_absorb"));
        }
    }
    if(window == 3){
        if(dstrong_mobile){
            if(left_down) hsp--;
            if(right_down) hsp++;
            hsp = clamp(hsp, -5, 5);
        }
        if(window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause){
            sound_play(asset_get("sfx_syl_fspecial_bite"), false, false, true, 0.85);
        }
        if(window_timer == window_end && !hitpause){
        	if right_strong_down || (right_down && strong_down) spr_dir = 1;
        	if left_strong_down || (left_down && strong_down) spr_dir = -1;
        }
        // if(dstrong_mobile && window_timer == window_end && !hitpause){
        //     sludge_puddle_id = instance_create(x, y, "obj_article1");
        // }
    }
    if(window == 4  && window_timer == window_end && !hitpause){
    	hsp = 7 * spr_dir;
    }
    if(window == 7  && window_timer == window_end/2 && !hitpause){
    	hsp = -6.75 * spr_dir;
    }
    break;
    
    case AT_NSPECIAL_AIR:
    if(window > 1 && window < 5){
        can_move = false;
        can_fast_fall = false;
		var rad_joy_dir = degtorad(joy_dir);
		var flight_speed = 6 + has_rune("F");
		var turning_speed = .5;
		
		move_cooldown[AT_NAIR] = 20 * (nair_spins <= 0);
		
		set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_TYPE, 7 * (nair_spins > 0));
		
		if(!joy_pad_idle && !hitpause)
		{
			// Teleport in direction of stick
			var targethsp = cos(rad_joy_dir) * flight_speed;
			var targetvsp = sin(rad_joy_dir) * -flight_speed;
			
			if(hsp > targethsp) hsp -= turning_speed else hsp += turning_speed;
			if(vsp > targetvsp) vsp -= turning_speed else vsp += turning_speed;
		} else if(!hitpause) {
		    hsp *= .97;
		    vsp *= .97;
		}
		
		if(window == 3){
		    fall_through = true;
		    if(!hitpause && window_timer == window_end){
		        set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, attack_down * 9);
		        if(attack_down) nair_spins++;
		        if(nair_spins > nair_spins_max){
		            set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
		        }
		        if(nair_spins%3 != 2){
		            set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 99);
		            set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 99);
		        } else {
		            reset_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW);
		            reset_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW);
		        }
		        set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 14);
		    }
		}
    }
    break;
    
    
    case AT_NSPECIAL:
    break;
    case AT_FSPECIAL:
    move_cooldown[AT_FSPECIAL] = 90;
    can_fast_fall = false;
    if(vsp > 0) vsp *= .9;
    hsp *= .9;
    if(window == 2){
        if(window_time_is(1)){
            geyser_spawn_x = nearest_ground(x + 80 * spr_dir, y);
            geyser_spawn_y = y;
            prev_g_x = geyser_spawn_x;
            prev_g_y = geyser_spawn_y;
            if(geyser_spawn_x != url) geyser_indicator_sound = sound_play(asset_get("sfx_bubblemouth"), false, false, true, .6);
        }
        if(geyser_spawn_x == url){
            window = 3;
            window_timer = 0;
            geyser_fail = true;
        } else {
            if((window_timer < 10 || special_down) && !hitpause){
                while(position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) || position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))) geyser_spawn_y--;
                while(geyser_spawn_y < get_stage_data(SD_BOTTOM_BLASTZONE_Y) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))){
                    geyser_spawn_y++;
                }
                if((position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) || position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))) && window_timer >= 10){
                    geyser_spawn_x += 7 * spr_dir;
                }
                if(geyser_spawn_y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
                    geyser_spawn_x = prev_g_x;
                    geyser_spawn_y = prev_g_y;
                }
                prev_g_x = geyser_spawn_x;
                prev_g_y = geyser_spawn_y;
            }
            if(!special_down && window_timer >= 10){
                window = 3;
                window_timer = 0;
            }
        }
    }
    if(window == 3){
        if(window_timer == 1 && geyser_spawn_x != url){
            sludge_geyser_id = instance_create(geyser_spawn_x, geyser_spawn_y, "obj_article2");
        }
        if(window_timer == window_end && geyser_fail && !hitpause){
        	vsp = -4 * free;
        	window = 5;
        	window_timer = 0;
        }
    }
    if(window == 4){
        if(window_timer == 1){
            sound_stop(geyser_indicator_sound);
            // if(geyser_fail){
            //     sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
            //     spawn_hit_fx(x + 80 * spr_dir,  y - 140, vfx_sludge_smallest);
            //     spawn_hit_fx(x + 80 * spr_dir,  y - 80, vfx_sludge_smallest);
            //     spawn_hit_fx(x + 80 * spr_dir,  y - 20, vfx_sludge_smallest);
            // }
        }
        // geyser 2
        if(has_rune("H") && !geyser_fail && window_timer == 2){
            geyser_spawn_x = nearest_ground(geyser_spawn_x + 120 * spr_dir, geyser_spawn_y);
            if(geyser_spawn_x != url){
                while(position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) || position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))) geyser_spawn_y--;
                while(geyser_spawn_y < get_stage_data(SD_BOTTOM_BLASTZONE_Y) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))){
                    geyser_spawn_y++;
                }
                if(geyser_spawn_y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
                   geyser_spawn_x = url;
                }
            } else {
                geyser_fail = true;
                sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 140, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 80, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 20, vfx_sludge_smallest);
            }
            if(geyser_spawn_x != url){
                sludge_geyser_id = instance_create(geyser_spawn_x, geyser_spawn_y, "obj_article2");
            } else {
                geyser_fail = true;
                sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 140, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 80, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 120 * spr_dir,  y - 20, vfx_sludge_smallest);
            }
        }
        
        // geyser 3
        if(has_rune("H") && !geyser_fail && window_timer == 12){
            geyser_spawn_x = nearest_ground(geyser_spawn_x + 120 * spr_dir, geyser_spawn_y);
            if(geyser_spawn_x != url){
                while(position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) || position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))) geyser_spawn_y--;
                while(geyser_spawn_y < get_stage_data(SD_BOTTOM_BLASTZONE_Y) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_block")) && 
                !position_meeting(geyser_spawn_x, geyser_spawn_y, asset_get("par_jumpthrough"))){
                    geyser_spawn_y++;
                }
                if(geyser_spawn_y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
                   geyser_spawn_x = url;
                }
            } else {
                geyser_fail = true;
                sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
                spawn_hit_fx(prev_g_x + 240 * spr_dir, prev_g_y - 140, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 240 * spr_dir, prev_g_y - 80, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 240 * spr_dir, prev_g_y - 20, vfx_sludge_smallest);
            }
            if(geyser_spawn_x != url){
                sludge_geyser_id = instance_create(geyser_spawn_x, geyser_spawn_y, "obj_article2");
            } else {
                geyser_fail = true;
                sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
                spawn_hit_fx(prev_g_x + 240 * spr_dir,  prev_g_y - 140, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 240 * spr_dir,  prev_g_y - 80, vfx_sludge_smallest);
                spawn_hit_fx(prev_g_x + 240 * spr_dir,  prev_g_y - 20, vfx_sludge_smallest);
            }
        }
    }
    if(window == 5){
    	if(window_timer == 1){
    		sound_stop(geyser_indicator_sound);
    		if(geyser_fail){
                sound_play(asset_get("sfx_watergun_fire"), false, false, true, .6);
                spawn_hit_fx(x + 80 * spr_dir,  y - 140, vfx_sludge_smallest);
                spawn_hit_fx(x + 80 * spr_dir,  y - 80, vfx_sludge_smallest);
                spawn_hit_fx(x + 80 * spr_dir,  y - 20, vfx_sludge_smallest);
            }
    	}
    }
    
    break;
    case AT_USPECIAL:
    can_wall_jump = true;
    can_fast_fall = (hitpause ? old_vsp >= 0 : vsp >= 0);
    	if (window == 1 && window_timer == 1 && !hitpause) {
    	    sound_play(asset_get("sfx_orca_absorb"), false, false, 1, .6);
    	}
    	if(window == 2 && window_timer >= 20){
			// if(shield_pressed){
			// 	y -= 40;
			// 	vsp = -6;
			// 	spawn_hit_fx(x, y, vfx_sludge_small);
			// 	sound_play(asset_get("sfx_frog_dstrong"));
			// 	set_state(PS_PRATFALL);
			// 	hud_offset = 0;
			// 	hsp = clamp(hsp, -4, 4);
			// }
    	}
    	if(window == 3 && !hitpause){
			if(window_timer == 8) set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 10);
			if(!free){
				window = 4;
				window_timer = 0;
				destroy_hitboxes();
				sound_play(sound_get("sfx_sludgehit_heavy"));
                
                if(!has_rune("B") && instance_exists(sludge_puddle_id) && point_distance(x, y, x, sludge_puddle_id.y) < 2 && point_distance(x, y, sludge_puddle_id.x, y) <= 64){
                    sludge_puddle_id.state = 69;
                    sludge_puddle_id.state_timer = 0;
                    sludge_puddle_id = noone;
                    sound_play(asset_get("sfx_swish_medium"));
                    
                    var r_box = create_hitbox(AT_USPECIAL, 7, x + 40 * spr_dir, y - 20);
                    var l_box = create_hitbox(AT_USPECIAL, 8, x - 40 * spr_dir, y - 20);
                    l_box.spr_dir = -spr_dir;
                    l_box.draw_xscale = -spr_dir;
                }
                if(has_rune("B")){
                    var r_box = create_hitbox(AT_USPECIAL, 7, x + 40 * spr_dir, y - 20);
                    var l_box = create_hitbox(AT_USPECIAL, 8, x - 40 * spr_dir, y - 20);
                    l_box.spr_dir = -spr_dir;
                    l_box.draw_xscale = -spr_dir;
                }
           }
       }
    break;
    case AT_DSPECIAL:
    move_cooldown[AT_DSPECIAL] = 50;
    if(window == 1 && window_time_is(window_end)){
        if(instance_exists(sludge_puddle_id)){
            sludge_puddle_id.state = 99;
            sludge_puddle_id.state_timer = 0;
            sludge_puddle_id = noone;
        }
        sludge_puddle_id = instance_create(x, y, "obj_article1");
        sound_play(asset_get("sfx_frog_dstrong"), false, false, true, .9);
        sound_play(asset_get("sfx_orcane_fspecial_pud"), false, false, true, .9);
        sound_play(asset_get("sfx_waterhit_medium"), false, false, true, .9);
        sludge_puddle_id.splash_box = create_hitbox(AT_DSPECIAL, 1, sludge_puddle_id.x, sludge_puddle_id.y - 15);
    }
    break;
    case AT_DSPECIAL_AIR:
    can_fast_fall = false;
    move_cooldown[AT_DSPECIAL] = 60;
    // if(window == 1 && window_time_is(1)){
    //     sound_play(asset_get("sfx_ori_dsmash_skitter_sein"), false, false, true, .9);
    // }
    // if(window == 2 && window_timer == 1 && !hitpause){
    //     create_hitbox(AT_DSPECIAL_AIR, 1, x, get_stage_data(SD_TOP_BLASTZONE_Y) - 20);
    // }
    break;
    case AT_TAUNT:
    if(window == 1 && window_time_is(1)){
        sound_play( sound_get ("rhubarb_taunt_v3"), false, noone, 2, 1);
        sound_play( asset_get ("sfx_land_heavy"), false, noone, 2, 1);
        sound_play( asset_get ("sfx_fishing_rod_land"), false, noone, 1, 1);
        sound_play( asset_get ("sfx_swipe_weak2"), false, noone, 1, 1);
    }
    if(window == 2 && window_time_is(window_end)){
        sound_play( asset_get ("sfx_waterhit_weak"), false, noone, 1, 1.5);
        sound_play( asset_get ("sfx_watergun_splash"), false, noone, .5, 1.5);
    }
    break;
}

if(has_rune("E") && !screen_wrapped && ((attack == AT_USPECIAL && window == 3) || (attack == AT_DAIR && window == 2)) && y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - vsp * 2){
    sound_play(asset_get("sfx_frog_dstrong"));
    sound_play(asset_get("sfx_frog_gong_hit"));
    spawn_hit_fx(x, y - 100, vfx_sludge_large_2);
    x = room_width/2;
    y = get_stage_data(SD_TOP_BLASTZONE_Y);
    screen_wrapped = true;
    spawn_hit_fx(x, y + 100, vfx_sludge_large_2);
}

#define nearest_ground(orig_x, orig_y) 
var _xx = orig_x;

var step = 8;
var bottom = get_stage_data(SD_BOTTOM_BLASTZONE_Y)
var found_ground = false;

for (var i = 0; i < 1 + (false /* <- fspecial can be used offstage rune*/ * 100); i++)
{
   _xx = orig_x + step * i;
   var solid_col = collision_line(_xx, orig_y, _xx, bottom, asset_get("par_block"), true, true)
   var plat_col = collision_line(_xx, orig_y, _xx, bottom, asset_get("par_jumpthrough"), true, true)
   var solid_test = !position_meeting(_xx, orig_y - 2, asset_get("par_block"))
   var plat_test = !position_meeting(_xx, orig_y - 2, asset_get("par_jumpthrough"))
   if (solid_col && solid_test)
   || (plat_col && plat_test)
   {
       found_ground = true;
       break;
   }
}

return (found_ground ? _xx : url);

    
    
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
    
    
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
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