// shader_start();
// if(eruption_stored){
//     var palNum = get_player_color(player);
//     var blend_r = get_color_profile_slot_r(palNum, 6);
//     var blend_g = get_color_profile_slot_g(palNum, 6);
//     var blend_b = get_color_profile_slot_b(palNum, 6);
//     set_color_profile_slot( palNum, 3, blend_r, blend_g, blend_b );
// } else {
//     var palNum = get_player_color(player);
//     var blend_r = get_color_profile_slot_r(palNum, 3);
//     var blend_g = get_color_profile_slot_g(palNum, 3);
//     var blend_b = get_color_profile_slot_b(palNum, 3);
//     set_color_profile_slot( palNum, 3, blend_r, blend_g, blend_b );
// }
// shader_end();

if(state == PS_SPAWN && taunt_down){
	aether_alt_input = true;
}

var rof = variable_instance_exists(self, "superTrue");

//RoF
if(rof){
	knockback_adj = .9;
	knockback_scaling = 1.2;
	if superTrue == 1 {
		superTrue = 0;
		rofSuperTimer = 750;
		var hfx = spawn_hit_fx(x, y - char_height/2, swirl_quick);
		hfx.depth = depth - 1;
		sound_play(asset_get("sfx_rag_whip"));
		sound_play(asset_get("sfx_burnconsume"));
		shake_camera(4, 20);
	}
}

//rune H
if(has_rune("L")){
	rofSuperTimer = 750;
	eruption_stored = 1;
}

var eruption_reset = false;
if(eruption_stored == -1){
    var eruption_reset = true;
}

with(pHitBox){
    if(player_id == other && type == 1){
        if(effect >= 200 && effect <= 203){
            eruption_reset = false;
        }
    }
}

if(eruption_reset && eruption_stored == -1){
    eruption_stored = 0;
}

if(state == PS_LANDING_LAG && eruption_stored){
	eruption_stored = 0;
}

// var no_erupt_attack = (attack != AT_JAB && attack != AT_FSPECIAL && attack != AT_NTHROW && attack != AT_FTHROW && attack != AT_UTHROW && attack != AT_DTHROW
// && attack != AT_EXTRA_1 && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL && attack != AT_USPECIAL);

// if(state_timer == 0 && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && eruption_stored && (no_erupt_attack || did_whiff)){
//     eruption_stored = 0;
// }

if((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && state == PS_JUMPSQUAT){
    with(obj_article2){
    	if(variable_instance_exists(self, "is_ike_eruption") && state != 420){
    		if(place_meeting(x, y, other.hurtboxID)){
    			state = 420;
    			state_timer = 0;
    			image_index = 0;
    			other.eruption_stored = 1;
    			sound_play(asset_get("sfx_burnend"));
    		}
    	}
    }
}

init_shader();

for(var i = 0; i < 3; i++){
	if(instance_exists(eruption_instances[i])){
		if(eruption_instances[i].state == 420){
			eruption_instances[i] = noone;
		}
	} else {
		eruption_instances[i] = noone;
	}
}

if(!eruption_instances[0]){
	eruption_instances[0] = eruption_instances[1];
	eruption_instances[1] = eruption_instances[2];
	eruption_instances[2] = noone;
}
if(!eruption_instances[1]){
	eruption_instances[1] = eruption_instances[2];
	eruption_instances[2] = noone;
}

if(eruption_stored){
    generate_particles(fx_fire, x, y-32, 0, depth+1, 11, 11, (random_func(75, 5, true)-2)/4, -1);
    if (get_gameplay_time() % 2 == 0){
        generate_particles(fx_fire, x, y-40, 0, depth+1, 7, 9, (random_func(75, 5, true)-2)/4, -1.5);
    }
}

if(attack = AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	damage_scaling = !super_armor;
	damage_scaling_reset = true;
} else if(damage_scaling_reset){
	damage_scaling = 1;
	damage_scaling_reset = false;
}

if(doing_fspecial > 0){
    doing_fspecial--;
}

if(back_throw_turn_around_turbo_mode_fix > 0){
    back_throw_turn_around_turbo_mode_fix--;
}

if(eruption_stored){
    eruption_stored_timer++;
    if(eruption_stored_timer % 50 == 10){
        take_damage(player, player, 1);
        var hfx = spawn_hit_fx(x, y - char_height/2, small_quick);
        hfx.depth = depth - 1;
        hfx.store_damage = true;
        sound_play(asset_get("sfx_burnapplied"));
    }
} else {
    eruption_stored_timer = 0;
}

var straight_aether = get_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED);
with(oPlayer){
    if(!clone){
        if(aether_quick_grab == other && !hitpause){
            hsp = 0;
            if(straight_aether == 0){
            	hsp = -1.5 * other.spr_dir;
            }
            if(aether_quick_grab_crouch_cancel_prevention_id == 1 && !got_crit){
                vsp = -13;
            }
            aether_quick_grab = noone;
        }
        if(aether_spin_grab == other){
            if(hitpause){
                var hsped = lengthdir_x(point_distance(x,y,other.x+40*other.spr_dir,other.y-10)/5,point_direction(x,y,other.x+40*other.spr_dir,other.y-10));
        		var vsped = lengthdir_y(point_distance(x,y,other.x+40*other.spr_dir,other.y-10)/5,point_direction(x,y,other.x+40*other.spr_dir,other.y-10));
        		x += hsped;
        		y += vsped;
            } else {
                aether_spin_grab = noone;
            }
        }
        if(hit_player_obj != other){
            if(aether_quick_grab == other){
                aether_quick_grab = noone;
            }
            if(aether_spin_grab == other){
                 aether_spin_grab = noone;
            }
        }
        if(grab_spiked && instance_exists(hit_player_obj)){
            if((hitpause && hit_player_obj.url != other.url) || state != PS_HITSTUN || (!hitpause && state == PS_HITSTUN && state_timer >= calculated_hitstun && y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 100)){
                grab_spiked = false;
                if(!hitpause && state == PS_HITSTUN && state_timer >= calculated_hitstun && y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 100){
                    state_timer = calculated_hitstun;
                    hitstun = calculated_hitstun;
                    hitstun_full = calculated_hitstun;
                    vsp = -7;
                    sound_play(asset_get("sfx_forsburn_consume_fail"), false, false, 200);
                }
            }
        }
        if(grab_up_spiked && instance_exists(hit_player_obj)){
            if((hitpause && hit_player_obj.url != other.url) || state != PS_HITSTUN || (!hitpause && state == PS_HITSTUN && y < get_stage_data(SD_TOP_BLASTZONE_Y) + char_height + hsp * 2)){
                if(!hitpause && state == PS_HITSTUN && y < get_stage_data(SD_TOP_BLASTZONE_Y) + char_height + hsp * 2 && !got_crit){
                    y -= vsp;
                }
            }
        }
        
        var attack_state_check = (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR);
        var attack_release_check = ((other.attack == AT_FTHROW || other.attack == AT_NTHROW || other.attack == AT_UTHROW || other.attack == AT_DTHROW || other.attack == AT_EXTRA_1)
        && !other.hitpause && ((other.window == 2 && other.attack != AT_NTHROW) || (other.window == 4 && other.attack == AT_NTHROW)) && other.window_timer == 0);
        var early_release_check = (other.state != PS_ATTACK_AIR && other.state != PS_ATTACK_GROUND);
        var dead = (state == PS_DEAD || state == PS_RESPAWN);
        
        if(ike_got_grabbed_id == other){
            hitpause = true;
            hitstop = 1;
            hitstop_full = 1;
            set_state(PS_HITSTUN);
            hurtboxID.dodging = true;
            if(attack_state_check){
                if(other.attack == AT_DSPECIAL_2 && other.window == 4){
                    x = other.x + other.hsp + 25 * other.spr_dir;
                    y = other.y;
                }
                if(other.attack == AT_NTHROW && other.window > 1){
                    var hsped = lengthdir_x(point_distance(x,y,other.x-40*other.spr_dir,other.y-10)/5,point_direction(x,y,other.x-40*other.spr_dir,other.y-10));
            		var vsped = lengthdir_y(point_distance(x,y,other.x-40*other.spr_dir,other.y-10)/5,point_direction(x,y,other.x-40*other.spr_dir,other.y-10));
            		x += hsped;
            		y += vsped;
                } else if(other.attack == AT_DTHROW || other.attack == AT_EXTRA_1){
                    var hsped = lengthdir_x(point_distance(x,y,other.x+20*other.spr_dir,other.y-30)/5,point_direction(x,y,other.x+20*other.spr_dir,other.y-30));
            		var vsped = lengthdir_y(point_distance(x,y,other.x+20*other.spr_dir,other.y-30)/5,point_direction(x,y,other.x+20*other.spr_dir,other.y-30));
            		x += hsped;
            		y += vsped;
                }
            }
            if(attack_state_check && attack_release_check) || early_release_check || dead {
                ike_got_grabbed_id = noone;
                hurtboxID.dodging = false;
            }
        }
    }
}

if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_FSPECIAL){
    sound_stop(sound_get("sfx_prepare" + string(player)));
    quick_draw_charge = 0;
}

if(rof){
	if(rofSuperTimer > 0){
		initial_dash_speed = 6;
		dash_speed = 6.5;
		
		max_jump_hsp = 99; //the maximum hsp you can have when jumping from the ground
		air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
		jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
		air_accel = .4;
		
		wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	} else {
		initial_dash_speed = rof_initial_dash_speed;
		dash_speed = rof_dash_speed;
		
		air_max_speed = rof_air_max_speed;
		jump_change = rof_jump_change;
		air_accel = rof_air_accel;
		
		wave_land_adj = rof_wave_land_adj;
		max_jump_hsp = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED)/1.5;
		if(state == PS_DOUBLE_JUMP && abs(hsp) > max_jump_hsp){
			hsp = max_jump_hsp * spr_dir;
		}
	}
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
	set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
} else {
	max_jump_hsp = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED)/2;
}

if(attack == AT_DSPECIAL && window == 2 && super_armor){
    countering = true;
} else {
    countering = false;
}

var the_throws = (attack != AT_NTHROW && attack != AT_FTHROW && attack != AT_UTHROW && attack != AT_DTHROW && attack != AT_EXTRA_1 && attack != AT_DSPECIAL_2);
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && the_throws){
    throw_plat = noone;
}
if(throw_plat == noone || !instance_exists(throw_plat)){
    on_throw_plat = false;
}

var temp_hbox = noone;
var make_ftilt = false;
with(pHitBox){
    if(player_id == other){
        //eruption
        
        if(player_id.eruption_stored){
            switch(effect){
                case 100:
                {
                    hit_effect = other.hfx_eruption_large;
                    effect = 200;
                    damage += 5;
                    kb_scale += .15; 
                    hitpause += 3;
                    hitpause_growth += .2;
                    if(has_rune("L")){
                    	kb_scale += .1; 
                    }
                }
                break;
                case 101:
                {
                    hit_effect = other.hfx_eruption_small;
                    effect = 201;
                    damage += 5;
                    kb_scale += .15; 
                    hitpause += 3;
                    hitpause_growth += .2;
                    if(has_rune("L")){
                    	kb_scale += .1; 
                    }
                }
                break;
                case 102:
                {
                    hit_effect = other.hfx_eruption_large;
                    effect = 202; 
                }
                break;
                case 103:
                {
                    effect = 203;
                    hit_effect = other.hfx_eruption_small;
                }
                break;
            }
        }
        
        if(attack == AT_USPECIAL && (hbox_num == 1 || hbox_num == 9)){
            temp_hbox = self;
        }
        
        //eruption ftilt projectile
        if(attack == AT_FTILT && hbox_num == 1 && player_id.eruption_stored && player_id.hitpause == false && !variable_instance_exists(self, "can_proj")){
            var make_ftilt = true;
            can_proj = false;
            other.eruption_stored = -1;
            // length = 0;
            // sound_play(asset_get("sfx_burnend"));
        } else if(attack == AT_FTILT && hbox_num == 1 && place_meeting(x, y, obj_article2) && player_id.hitpause == false && !variable_instance_exists(self, "can_proj")){
            var eruption = instance_place(x, y, obj_article2);
            if(variable_instance_exists(eruption, "is_ike_eruption") && eruption.state != 420){ 
                eruption.state = 420;
                eruption.state_timer = 0;
                eruption.image_index = 0;
                var make_ftilt = true;
                can_proj = false;
                // length = 0;
                sound_play(asset_get("sfx_burnend"));
            }
        }
        
        
        //aether sword
        if(attack == AT_USPECIAL && (hbox_num == 9 || hbox_num == 11)){
            if(instance_exists(other.aether_sword)){
                x_pos = -point_distance(other.x + other.hsp, other.y, other.aether_sword.x + other.aether_sword.hsp, other.y) - 5;
                y_pos = point_distance(other.x, other.y + other.vsp, other.x, other.aether_sword.y + other.aether_sword.vsp);
                if(other.x + other.hsp < other.aether_sword.x + other.aether_sword.hsp){
                    x_pos = (x_pos + 10) * -1;
                }
                if(other.y + other.vsp > other.aether_sword.y + other.aether_sword.vsp){
                    y_pos *= -1;
                }
            }
        }
        
        //counter magnet hands
        if(attack == AT_DSPECIAL_2){
            if(other.ike_grabbed_id != noone && instance_exists(other.ike_grabbed_id)){
                for(var i = 0; i < 20; i++){
                    can_hit[i] = (i == other.ike_grabbed_id.player);
                }
            }
        }
        
        //held utilt
        if(attack == AT_UTILT && hitbox_timer >= 8){
        	image_yscale = 20/200;
        	y_pos = -82;
        }
        
        //taunt
        if(attack == AT_EXTRA_2 && hitbox_timer == 0){
        	sound_play(asset_get("sfx_birdclap"));
        }
    } else {
        
    }
}

with(obj_article2){
	if(variable_instance_exists(self, "is_ike_eruption") && state != 420){
		if(place_meeting(x, y, temp_hbox)){
			state = 420;
			state_timer = 0;
			image_index = 0;
			other.eruption_stored = 1;
			other.uspecial_pratless = true;
			sound_play(asset_get("sfx_burnend"));
		}
	}
}

if(make_ftilt){
    var hbox = create_hitbox(AT_FTILT, 2, x, y);
    hbox.x = x + hbox.x_pos;
    hbox.y = y + hbox.y_pos;
}

if(rof || has_rune("L")){
	if(rofSuperTimer > 0){
		rofSuperTimer--;
		eruption_stored = true;
		eruption_stored_timer = 2;
		if(rof){
			infinite_eruptions = true;
		}
		if(!rofSuperTimer){
			infinite_eruptions = false;
		}
	}
}

if(has_rune("D")){
	infinite_eruptions = true;
}

if(has_rune("L") && eruption_stored){
	initial_dash_speed = 6;
	dash_speed = 6.5;
	
	max_jump_hsp = 99; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = .4;
	
	wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
}

//Yoinked from Bar Reygard
//usage: generate_particles(hit_fx_name, x, y, angle, depth, random_spread_x, random_spread_y, hsp, vsp, dir)
#define generate_particles
/// generate_particles(fx_name, fx_x, fx_y, fx_angle = 0, fx_depth = -1, fx_spread_x = 0, fx_spread_y = 0, fx_hsp = 0, fx_vsp = 0, fx_dir = 0)
{
    var fx_name = argument[0], fx_x = argument[1], fx_y = argument[2];
var fx_angle = argument_count > 3 ? argument[3] : 0;
var fx_depth = argument_count > 4 ? argument[4] : -1;
var fx_spread_x = argument_count > 5 ? argument[5] : 0;
var fx_spread_y = argument_count > 6 ? argument[6] : 0;
var fx_hsp = argument_count > 7 ? argument[7] : 0;
var fx_vsp = argument_count > 8 ? argument[8] : 0;
var fx_dir = argument_count > 9 ? argument[9] : 0;

    var part_x = (random_func(24, floor(fx_spread_x/2), true)-floor(fx_spread_x/4))*fx_spread_x;
    var part_y = (random_func(25, floor(fx_spread_y/2), true)-floor(fx_spread_y/4))*fx_spread_y;
    var random_fx = random_func(26, 3, true);

    fx_name = spawn_hit_fx(fx_x+part_x, fx_y+part_y, fx_name);
    fx_name.spr_dir = -spr_dir;
    if (depth != 0) fx_name.depth = fx_depth;
    else fx_name.depth = 3;
    if (fx_angle == -1)
    {
        var random_angle = random_func(6, 360,true);
        fx_name.draw_angle = random_angle;
    }
    else if (fx_angle >= 0) fx_name.draw_angle = fx_angle;
    fx_name.hsp = fx_hsp;
    fx_name.vsp = fx_vsp;
    if (fx_dir == 0)
    {
        var random_dir = random_func(7, 2, true);
        if (random_dir == 0) random_dir = -1;

        fx_name.spr_dir = random_dir;
    }
    else fx_name.spr_dir = fx_dir;
    
}