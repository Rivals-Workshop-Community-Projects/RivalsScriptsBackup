// attack_update
enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
//B - Reversals

// if attack == AT_FAIR && window == 2 && window_timer == 1 {
//     hsp = max(hsp * spr_dir, 12) * spr_dir;
//     last_x -= spr_dir * 12
// }

if ((attack == AT_EXTRA_1 && window == 1 && window_timer < 7) || (attack == AT_NAIR && has_hit)) && !free {
    //do_a_fast_fall = false;
    set_attack(AT_EXTRA_2);
    move_cooldown[AT_NAIR] = 50;
} else if (attack == AT_EXTRA_1 && !free) {
    set_state(PS_LANDING_LAG);
}

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// if (attack == AT_DATTACK && has_hit && hitpause && window < 3) {
//     can_attack = true;
// }
if (window == 2 && !shotgun_blast_vfx_used && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2) {
    var vfx = spawn_hit_fx(x,y,shotgun_blast_vfx);
    vfx.depth -= 30;
    //shake_camera(4.0, 20);
    shotgun_blast_vfx_used = true;
    sound_play(sound_get("shotgun_blast"));
    shotgun_firing = false;
    // if !has_rune("B") {
    //     move_cooldown[AT_FSPECIAL] = 360;
    // }
}
if attack == AT_FSPECIAL {
    //if (!special_down) shotgun_special_down = false;
    // can_shield = !has_rune("B");
    if !shotgun_loaded {
        if shield_pressed  && window == 1 {
            shotgun_special_down = false;
            window = 2;
            window_timer = 0;
        }
        if has_rune("B") && window == 1 && !hitpause && !free {
            window_timer += abs(hsp) + 1;
            if window_timer >= 150 {
                window_timer = 150;
            }
        }
        if window == 2 || (window == 1 && !shotgun_special_down) {
            if (window != 2) window_timer = 0;
            window = 2;
            shotgun_loaded = shotgun_special_down;
            if shotgun_loaded {
                shotgun_loaded_when = get_gameplay_time() + 15;
                sound_play(sound_get("shotgun_load"));
            }
        }
    } 
}

if attack == AT_DAIR && window == 3 && window_timer == 1 && has_hit && up_down {
    vsp = -10;
    // hsp *= 0.95;
    y --;
    move_cooldown[AT_DAIR] = 20;
}

if attack == AT_BAIR && window == 3 && window_timer == 1 && has_hit && !just_fast_fall {
    vsp = -6;
    hsp = spr_dir * -2;
}

if attack == AT_EXTRA_1 && window == 1 {
    // x += spr_dir * 0.5;
    if has_hit_id != noone && has_hit_id.state != PS_DEAD && has_hit_id.state != PS_RESPAWN && has_hit_id.state != PS_SPAWN {
        has_hit_id.x = (x + 50 * spr_dir) * 0.5 + (has_hit_id.x * 0.5);
        has_hit_id.y = y + 5 + max(5-window_timer,0)*sin(get_gameplay_time());
        nair_hit_player = has_hit_id;
    }
    move_cooldown[AT_NAIR] = 30;
}

if attack == AT_EXTRA_1 && window == 2 {
    move_cooldown[AT_NAIR] = 30;
    if has_hit_id != noone && has_hit_id.hitpause && has_hit_id.state != PS_DEAD && has_hit_id.state != PS_RESPAWN && has_hit_id.state != PS_SPAWN {
        has_hit_id.x = x + 50 * spr_dir;
        has_hit_id.y = y + 5;
        nair_hit_player = has_hit_id;
    }
    //force_depth = 1;
}

if attack == AT_USPECIAL {
    
    if window == 1 {
        if (shield_down) uspecial_cancel_into_flap = true;
        if uspecial_cancel_into_flap && !hitstop && window_timer >= get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) - 1{
            set_attack(AT_USPECIAL_2);
        }
        // if !special_down && window_timer > {
        //     window = 2;
        //     window_timer = 0;
        // } 
        if !joy_pad_idle {
            var locked_dir = get_locked_dir(joy_dir);
            var xl = lengthdir_x(1,joy_dir);
            spr_dir = xl == 0 ? spr_dir : sign(xl);
            set_hitbox_value(AT_USPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(40,locked_dir)*spr_dir);
            set_hitbox_value(AT_USPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(40,locked_dir));
        }
    }
    can_wall_jump = true;
    // if window == 2 {
    //     perch_state = _.PS_NA;
    // }
    var anchor_out = false;
    var anchor_hooked = false;
    with pHitBox if !anchor_out && player_id == other.id && attack == AT_USPECIAL {
        anchor_out = true;
        if "anchor_phase" in id && anchor_phase == 2 {
            anchor_hooked = true
        }
    }
    if window == 3 {
        
        // if special_down && perch_target != noone {
        //     set_attack(AT_NSPECIAL_2)
        // }
        
        if !anchor_out {
            window = 4;
            if instance_exists(uspecial_box_id_to_delete) {
                instance_destroy(uspecial_box_id_to_delete);
            }
            uspecial_box_id_to_delete = noone;
        } else if !uspecial_spawned_box && anchor_hooked {
            uspecial_spawned_box = true;
            uspecial_box_id_to_delete = create_hitbox(AT_USPECIAL, 2, x, y);
        }
    }
    
    if (!anchor_out || perch_state == _.PS_HANGING || (perch_state == _.PS_NA && !anchor_hooked)) && instance_exists(uspecial_box_id_to_delete) {
        instance_destroy(uspecial_box_id_to_delete);
        uspecial_box_id_to_delete = noone;
    }
}
if attack == AT_NSPECIAL_2 {
    fall_through = true;
    
    if !hitstop switch (window) {
        case 3:
            hsp *= 0.9;
            vsp *= 0.9;
            break;
        case 4:
            hsp *= 0.95;
            vsp *= 0.95;
            break;
    }
    
}

if attack == AT_NSPECIAL && perched_nspecial_entry_buffer > 0 && perch_target != noone && perch_state == _.PS_HANGING {
    attack_end();
    set_state(PS_IDLE_AIR);
    set_attack(AT_NSPECIAL);
}


if attack == AT_FSPECIAL_AIR {
    if was_parried && window != 3 {
        window = 3;
    } else {
        can_jump = window == 2;// || has_hit;
        can_move = window == 3;
        can_shield = true;
        
        if shield_pressed {
            shotgun_spark_charge = 0;
        }
        
        var doesnt_exist = shotgun_spark_hitbox == noone || !instance_exists(shotgun_spark_hitbox);
        var should_exist = dot_product(hsp,vsp,hsp,vsp) > 36 && window == 2 && !free;
        if doesnt_exist && should_exist {
            shotgun_spark_hitbox = create_hitbox(AT_FSPECIAL_AIR, 1, x, y);
        } else if !doesnt_exist && !should_exist {
            instance_destroy(shotgun_spark_hitbox);
        }
        
        if should_exist {
            var count = random_func_2(0, 3, true);
            while count > 0 {
                var motion = spawn_hit_fx(x - 30 + random_func_2(count * 2 + 2, 60, false), y - 60 + random_func_2(count * 2 + 3, 60, false), motion_spark_vfx);
                motion.depth = depth - 1;
                count -= 1;
            }
        }
        
        if !free {
            shotgun_sparks += abs(hsp);
            var iteration = 0;
            
            if shotgun_sparks > 2 {
                sound_play(sound_get("spark"), false, 0, .5, 1 + clamp(shotgun_spark_charge / shotgun_spark_fullcharge, 0,1));
                shotgun_sparks -= 2;
                var ground = spawn_hit_fx(x + spr_dir * -10, y, ground_spark_vfx);
                ground.depth = depth - 1;
                ground.spr_dir = hsp == 0 ? spr_dir : sign(hsp);
                // var flying = spawn_hit_fx(x +spr_dir * -15, y - 5, flying_spark_vfx);
                // flying.hsp = -spr_dir * 3;
                // flying.vsp = -3;
                // flying.depth = depth - 1;
            }
            
            while (shotgun_sparks > 6) {
                shotgun_sparks -= 6;
                var flying = spawn_hit_fx(x +spr_dir * -15, y - 5, flying_spark_vfx);
                flying.hsp = -spr_dir * ( -3 + random_func(iteration, 6, false));
                flying.vsp = ( -3 + random_func(iteration + 1, 6, false));
                flying.depth = depth - 1;
                iteration += 2;
            }
            shotgun_spark_charge = min(shotgun_spark_fullcharge + shotgun_spark_extra_charge, shotgun_spark_charge + abs(hsp) * 2.0);
        }
        
        if shotgun_spark_charge >= shotgun_spark_fullcharge {
            
            if attack_pressed {
                shotgun_spark_charge = 0;
                shotgun_firing = true;
                attack_end();
                set_attack(AT_FSPECIAL_2);
            } else if jump_pressed {
                
                vsp -= jump_speed;
                can_jump = false;
                window = 3;
                window_timer = 0;
                shotgun_loaded = true;
                shotgun_loaded_when = get_gameplay_time() + 15;
                shotgun_spark_charge = 0;
                sound_play(sound_get("shotgun_load"));
            }
        }
    }
}

// if attack == AT_TAUNT && !taunt_down && !hitpause && state_timer > 18 {
//     set_state(PS_IDLE);
// }

// if attack == AT_DSPECIAL && !hitpause && window == 2 && window_timer == 1 {
//     instance_create(x,y, "obj_article1");
// }

#define is_valid_parrot_perch(obj_id)
    return variable_instance_exists(obj_id, "_parrot_perch_identifier_") && obj_id._parrot_perch_identifier_;

#define get_locked_dir(from_dir)
    var angle_dist = 15;
    var angle_chosen = from_dir;
    with obj_article2 if (is_valid_parrot_perch(id)) {
        var this_angle_to = point_direction(other.x,other.y-30,x,y);
        var d = abs(angle_difference(from_dir,this_angle_to));
        if d < angle_dist {
            angle_dist = d;
            angle_chosen = this_angle_to;
        }
    }
    
    return angle_chosen;