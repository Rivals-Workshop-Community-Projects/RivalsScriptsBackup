//update

if (state_timer == 0 && prev_state == PS_ATTACK_AIR && attack == AT_NSPECIAL_2 && free && !hitstop){
    y += 30;
}

if !free {
    claw_launch = true;
    has_airborne_perch_available = true;
}
if perch_target == noone {
    perch_state = _.PS_NA;
}

if jump_down && vsp > 0  && state_cat == SC_AIR_NEUTRAL {
    vsp = min(vsp, 3);
}

if instance_exists(swinging_anchor)  && !special_down {
    swinging_anchor.kill_this_thing = true;
}

if state == PS_CROUCH {
    hsp *= 0.7;
    jump_speed = crouch_jump_speed;
} else if state == PS_IDLE || state == PS_IDLE_AIR || state == PS_WALK || state == PS_DASH {
    jump_speed = standard_jump_speed;
}
enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
if state == PS_PRATFALL {
    perch_state = _.PS_NA;
    perch_target = noone;
}
switch (perch_state) {
    case _.PS_NA: // not interacting with perches
        perch_target = noone;
        rope_length = 0;
        // if false {
        //     perch_x = x;
        //     perch_y = y;
        // }
            last_x = x;
            last_y = y;
        if perch_target == noone && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && !hitpause && window == 3 && window_timer == 1 {
            instance_create(x,y - 60,"obj_article1");
        }
        break;
    case _.PS_PULLING: // creating a perch
        last_x = x;
        last_y = y;
        
        break;
    case _.PS_GRAPPLING: // shooting anchor or reeling self into a perch
        if !instance_exists(perch_target) || state_cat == SC_HITSTUN {
            perch_state = _.PS_NA;
            perch_target = noone;
            //break; // is this valid? let's find out!
        }
        
        // if (special_pressed) {
        //     set_attack(AT_NSPECIAL_2);
            
        // }
        
        rope_length =point_distance(x,y-30,perch_target.x,perch_target.y) - 2;// max(rope_length -10,0);
        if dot_product(x - perch_target.x, y - perch_target.y, get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED) * spr_dir, get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED)) > 0 || rope_length < 80 || (!free && perch_target.y > y) {
            perch_state = _.PS_NA
            if perch_target.object_index != obj_article2 {
                
                if (free && perch_target.hook_timer < 5 && perch_target.grabbed_wall && !down_down) {
                    set_attack(AT_USPECIAL_2);
                } else if free && started_attack_free {
                    set_state(PS_PRATFALL);
                    var clamped_pratfall_speed = clamp_distance(15, 0, 0, hsp, vsp);
                    hsp = clamped_pratfall_speed[0];
                    vsp = clamped_pratfall_speed[1];
                    old_hsp = clamped_pratfall_speed[0];
                    old_vsp = clamped_pratfall_speed[1];
                    
                } else {
                    hsp += 0.1 * get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED) * spr_dir;
                    vsp += 0.1 * get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED);
                }
            }
            perch_target = noone
        }
        // if rope_length < 80 || (!free && perch_target.y > y) {
        //     if !jump_down || perch_target.object_index == pHitBox {
        //         perch_state = _.PS_NA;
        //         if perch_target.object_index == pHitBox && state != PS_RESPAWN && state != PS_DEAD && state != PS_SPAWN {
        //             set_state(PS_PRATFALL);
        //             instance_destroy(perch_target);
        //         }
        //         perch_target = noone;
        //     } else {
        //         perch_state = _.PS_HANGING;
        //     }
        // }
        // if (rope_length < 80) {
        //     if(!jump_down && state_cat == SC_AIR_NEUTRAL) || !free || perch_target.object_index == oPlayer {
        //         perch_state = _.PS_NA;
        //         perch_target = noone;
        //     } else {
        //         perch_state = _.PS_HANGING;
        //     }
        // }
    case _.PS_HANGING: // hanging from a perch
        // djumps = 0;
        perched_nspecial_exit_buffer = perched_nspecial_buffer_max;
        if fast_falling && !just_fast_fall {
            last_y -= 5;
        }
        if instance_exists(perch_target) && "hp" in perch_target && perch_target.hp < 0 {
            perch_state = _.PS_NA;
            perch_target = noone;
            set_state(PS_PRATFALL);
        }
        if !hitpause && ((perch_state == _.PS_HANGING && !jump_down)  || !instance_exists(perch_target) || point_distance(0,0,hsp_buffer,vsp_buffer) > 7 || state == PS_AIR_DODGE || state_cat == SC_HITSTUN) {
            
            if state != PS_PRATFALL {
                if has_rune("A") {
                    var launch_amt = point_distance_sq(hsp,vsp,0,0);
                    perchstun = floor(clamp(0.00004*launch_amt*launch_amt, 0, 8));
                } else {
                    perchstun = 1;
                }
            } 
            perch_state = _.PS_NA;
            if perch_target != noone && "hitstop_remaining" in perch_target {
                perch_target.hitstop_remaining = perchstun;
            }
            if perch_target != noone && "hp" in perch_target && perch_target.hp < 80 {
                perch_target.hp = -5;
            }
            perch_target = noone;
            if state_cat != SC_HITSTUN {
                if has_rune("D") {
                    hsp *= 0.7;
                    vsp *= 0.7;
                } else {
                    hsp *= 0.6;
                    vsp *= 0.6;
                }
            }
            sound_play(sound_get("ungrab_perch"));
        } else if !hitpause && instance_exists(perch_target) {
            perched_nspecial_exit_buffer_perch_target = {
                "x" : perch_target.x,
                "y" : perch_target.y
            }
            var clamped = clamp_distance(max(rope_length,perch_state == _.PS_HANGING ? 120 : 80),perch_target.x,perch_target.y+30,x,y);
            
            x = round(clamped[0]);
            y = round(clamped[1]);
            
            can_move = false;
            fall_through = true;
            
            var dx = clamped[0] - last_x;
            var dy = clamped[1] - last_y;
            hsp = dx;
            if x == perch_target.x {
                hsp += spr_dir;
            }
            vsp = dy;
            
            var c = clamp_distance(25,0,0,hsp,vsp);
            hsp = c[0];
            vsp = c[1];
            
            if perch_state == _.PS_HANGING  && perch_target.object_index == obj_article2 {
                perch_target.hit_x += (x - perch_target.x) * 0.05;
                perch_target.hit_y += (y - perch_target.y) * 0.05;
            }
            last_x = clamped[0] - hsp_buffer;
            last_y = clamped[1] - vsp_buffer - (1.4 - 1.4 * fast_falling) * (perch_state == _.PS_HANGING) + 0.65 * (perch_state == _.PS_GRAPPLING);
            if perch_state == _.PS_HANGING {
                var rope_taut = point_distance(x,y,perch_target.x,perch_target.y) > 110;
                last_x -= perch_accel_rate*lengthdir_x((1 - joy_pad_idle)*max(0.05,min(abs(hsp),1.5)),joy_dir);
                if rope_taut {
                    last_y -= perch_accel_rate*lengthdir_y(1.5*(1 - joy_pad_idle),joy_dir);
                }
            }
            if ("sleep_simulation" in perch_target) {
                
                perch_target.sleep_simulation = 0;
            }
        }
        if instance_exists(perch_target) && "hp" in perch_target {
            perch_target.hp --;
        }
        break;
}

if shotgun_loaded {
    can_parry = false;
    has_rock = true;
    // if (state == PS_PARRY_START) {
    //     set_state(prev_state);
    //     state_timer = prev_state_timer;
    //     clear_button_buffer(PC_SHIELD_PRESSED);
    // }
    
    var col = get_shotgun_loaded_outline_color(get_gameplay_time() - shotgun_loaded_when)
    outline_color = [color_get_red(col),color_get_green(col),color_get_blue(col)];
    init_shader();
    
    if get_gameplay_time() - shotgun_loaded_when > 300 {
        shotgun_backfired_hasnt_hit = true;
        shotgun_loaded = false;
        outline_color = [0,0,0];
    }
    
    
} else {
    has_rock = false;
    
    var col = get_shotgun_charging_outling_color(shotgun_spark_charge)
    outline_color = [color_get_red(col),color_get_green(col),color_get_blue(col)];
    init_shader();
    
}

if shotgun_backfired_hasnt_hit {
    // print("hye");
        var hbox = create_hitbox(AT_FSPECIAL_2, 4, x, y);
        // hbox.type = 2;
        hbox.x = x;
        hbox.y = y - 30;
        hbox.player = 0;
        // print(hbox.can_hit);
        for (var i = 1; i <= 4; i ++)
            hbox.can_hit[i] = i == player;
}
// print(shotgun_firing);
hsp_buffer = 0;
vsp_buffer = 0;
sp = special_pressed;
jb = (jump_pressed && !jp);
jp = jump_pressed;
just_fast_fall = fast_falling;
perch_cooldown -= perch_cooldown > 0;

perched_nspecial_entry_buffer -= perched_nspecial_entry_buffer > 0;
perched_nspecial_exit_buffer  -= perched_nspecial_exit_buffer  > 0;
if !hitpause {
    
    shotgun_spark_charge = max(0,shotgun_spark_charge - shotgun_spark_fullcharge / shotgun_spark_dissipate);
    if perchstun && !in_perchstun {
        
        if perchstun == 1 {
            perchstun = 0;
            var pdsq = point_distance_sq(0,0,hsp,vsp)
            if pdsq > 25 spawn_perchstun_vel(15, pdsq < 180);
        } else {
            in_perchstun = true;
            perchstun_hsp = hsp;
            perchstun_vsp = vsp;
            dismount_vfx_full();
        }
        
    }
    if in_perchstun {
        hsp = perchstun_hsp * 0.1;
        vsp = perchstun_vsp * 0.1;
    }
    if in_perchstun && perchstun <= 0 {
        in_perchstun = false;
        hsp = perchstun_hsp;
        vsp = perchstun_vsp;
    }
    perchstun -= perchstun > 0;
}

if (get_match_setting(SET_HITBOX_VIS)) {
    with pHitBox if player == other.player {
        if attack == AT_FSPECIAL_2 && hbox_num == 3
            sprite_index = sprite_get("spark_hitbox");
        else if attack == AT_FSPECIAL_AIR && hbox_num == 2 
            sprite_index = sprite_get("spark_circle_hitbox");
    }
}

#define dismount_vfx_full()
    if perchstun_vfx_dir_override < 0 {
        spawn_perchstun_vel(15, perchstun <= 4)
    } else {
        spawn_perchstun_vfx(perchstun_vfx_dir_override, perchstun <= 4)
        perchstun_vfx_dir_override = -1;
    }

#define spawn_perchstun_vel(frames_ahead, small)
    var xoff_in_some_frames = frames_ahead * hsp * 0.7;
    var yoff_in_some_frames = frames_ahead * (vsp + frames_ahead * gravity_speed) * 0.7;
    var vfx = spawn_hit_fx(x,y - 30, small ? dismount_perch_vfx_small : dismount_perch_vfx);
    vfx.draw_angle = point_direction(0,0,xoff_in_some_frames, yoff_in_some_frames);
    vfx.spr_dir = 1;

#define spawn_perchstun_vfx(dir,small) 
    var vfx = spawn_hit_fx(x,y - 30, small ? dismount_perch_vfx_small : dismount_perch_vfx);
    vfx.spr_dir = 1;
    vfx.draw_angle = dir;
    
#define get_shotgun_charging_outling_color(spark_charge)
    if spark_charge >= shotgun_spark_fullcharge return $FFFFFF;
    return merge_color($000000, $00AAFF, clamp(spark_charge / shotgun_spark_fullcharge, 0, 1 ));

#define get_shotgun_loaded_outline_color(elapsed_time)
    // DESMOS IS A BLESSING
    var cursed_curve = 0;
    if has_rune("C") {
        cursed_curve = 60 / (elapsed_time + 5) - 0.5; // fade and stay faded
    } else {
        // fade... then start blinking until kaboom
        cursed_curve = max(60 / (elapsed_time + 5) - 0.5, 0.000009 * elapsed_time * elapsed_time * sin(exp(0.014*elapsed_time)));
    }
    var lerp_amt = clamp(cursed_curve, 0.0, 1.0);
    // var modified_elapsed_time = x(0.1 * elapsed_time + 5, 0.01);
    // var lerp_amt = -cos(modified_elapsed_time + 60/modified_elapsed_time) * 0.5 + 0.5;
    return merge_color($000000, $00AAFF, lerp_amt);
#define point_distance_sq(x1, y1, x2, y2)
    var dx = x1 - x2;
    var dy = y1 - y2;
    return dx * dx + dy * dy;
#define clamp_distance(distance, anchor_x, anchor_y, free_x, free_y)
    var dsq = point_distance_sq(anchor_x,anchor_y,free_x,free_y);
    if (dsq < distance * distance || distance < 0) return [free_x,free_y];
    var d = sqrt(dsq);
    var dif_x = free_x - anchor_x;
    var dif_y = free_y - anchor_y;
    var mult = distance / d;
    dif_x *= mult;
    dif_y *= mult;
    return [anchor_x + dif_x, anchor_y + dif_y];
#define clamp_length_to(distance, anchor_x, anchor_y, free_x, free_y)
    var d = point_distance(anchor_x,anchor_y, free_x, free_y);
    if (d < 0.01) return [free_x,free_y];
    
    var dif_x = free_x - anchor_x;
    var dif_y = free_y - anchor_y;
    var mult = distance / d;
    dif_x *= mult;
    dif_y *= mult;
    return [anchor_x + dif_x, anchor_y + dif_y];