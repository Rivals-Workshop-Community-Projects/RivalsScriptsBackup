//set_attack
uspecial_cancel_into_flap = shield_down;
started_attack_free = free;
uspecial_spawned_box = false;
ftilt_boost = true;
set_hitbox_value(AT_USPECIAL,1,HG_PROJECTILE_HSPEED,0);
set_hitbox_value(AT_USPECIAL,1,HG_PROJECTILE_VSPEED,-40);
// i wish these enums would carry between scripts
// ...this repetition kind of ruins half the point...
enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}



// // i now understand why ranno's DSPECIAL is labeled as his NSPECIAL
// // but i do not forgive you dan
// // unlike you, this sinner does not get money for making rivals content
if attack == AT_FSPECIAL {
    attack = AT_DSPECIAL;
} else if attack == AT_DSPECIAL {
    clear_button_buffer(PC_SPECIAL_PRESSED);
    attack = AT_FSPECIAL_AIR;
    shotgun_special_down = true;
    shotgun_blast_vfx_used = false;
}

// if attack == AT_FSPECIAL {
//     attack = AT_FSPECIAL_AIR;
//     shotgun_blast_vfx_used = false;
// }

if attack == AT_TAUNT {//&& !shield_down {
    attack = AT_TAUNT_2;
}

if shotgun_loaded {
    shotgun_firing = true;
    attack = AT_FSPECIAL_2;
    shotgun_loaded = false;
    outline_color = [0,0,0];
    init_shader();
    return;
}
// if attack == AT_NSPECIAL_2 && perch_state == _.PS_GRAPPLING  && perch_target != noone && perch_target.object_index == pHitBox {
//     instance_destroy(perch_target)
//     do_nspecial2_setup(x + get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED) * spr_dir, y + get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED))
// }
if (attack == AT_NSPECIAL && perched_nspecial_exit_buffer > 0 && perch_target == noone) || attack == AT_NSPECIAL_2 {
    do_nspecial2_setup(perched_nspecial_exit_buffer_perch_target.x, perched_nspecial_exit_buffer_perch_target.y);
} else if (attack == AT_NSPECIAL) && free && (perch_state == _.PS_HANGING) && perch_target != noone {//&& perch_target.object_index == obj_article2 {
    decay_perch_target();
    do_nspecial2_setup(perch_target.x, perch_target.y);
} else if attack == AT_NSPECIAL && free && perch_target == noone {
    if has_airborne_perch_available {
        has_airborne_perch_available = false;
    } else {
        move_cooldown[AT_NSPECIAL] = 2;
    }
    perched_nspecial_entry_buffer = 6;
}


#define do_nspecial2_setup(tx, ty)
    var p_spr_dir = spr_dir;
    spr_dir = sign(tx - x);
    if (spr_dir == 0) spr_dir = p_spr_dir;
    var dir = point_direction(x, y, tx, ty);
    // set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, spr_dir * lengthdir_x(16, dir));
    // set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, lengthdir_y(16, dir));
    set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, spr_dir * lengthdir_x(28, dir));
    set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, lengthdir_y(28, dir));
    
    var hb_dir = round(point_direction(0,0,spr_dir * (tx - x), ty - y) / 5.0) * 5.0;
    
    
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, hb_dir);
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, hb_dir);
    set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, hb_dir);
    
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, spr_dir * lengthdir_x(40, dir));
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, lengthdir_y(40, dir));
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, spr_dir * lengthdir_x(-40, dir));
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, lengthdir_y(-30, dir));
    set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, 0);
    
    // hsp = get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED);
    // vsp = get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED);
    
    state = PS_ATTACK_AIR;
    var d = clamp_distance(120,x,y,tx,ty);
    // if perch_target.object_index == obj_article2 {
        x = d[0];
        y = d[1];
    // }
    hsp = 0;
    vsp = 0;
    perch_target = noone;
    perch_cooldown = 60;
    attack = AT_NSPECIAL_2;
    free = true;
    
#define decay_perch_target()
    if "hp" in perch_target {
        perch_target.hp -= 80;
        if perch_target.hp < 80 {
            perch_target.hp = -5;
        }
    }
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
#define point_distance_sq(x1, y1, x2, y2)
    var dx = x1 - x2;
    var dy = y1 - y2;
    return dx * dx + dy * dy;