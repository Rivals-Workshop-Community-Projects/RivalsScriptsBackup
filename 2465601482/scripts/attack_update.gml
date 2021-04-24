// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR ){
    trigger_b_reverse();
}
var fast_bump = false;
if attack == AT_NSPECIAL {
    if has_rune("F") {
        can_jump = true;
        can_attack = true;
        can_special = true;
    }
    if window == 3 || attack_pressed {
        item_held = item_pulling;
        window = 3;
        if can_fast_bump && item_pulling == "bumper" && free && attack_pressed {
            fast_bump = true;
        }
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    
}
if item_held != "none" && item_attack == false {
    if fast_bump || window == 2 {
        var done = false;
        switch attack {
            case AT_NTHROW:
                var item = create_hitbox(AT_NSPECIAL,1,round(x-spr_dir*20*player_scale),round(y-20*player_scale));
                item.soft_dropped = true;
                item.thrown_dir = "down";
                done = true;
                break;
            case AT_FTHROW:
                var item = create_hitbox(AT_NSPECIAL,1,round(x-spr_dir*20*player_scale),round(y-20*player_scale));
                item.hsp = 15*spr_dir;
                item.vsp = -5;
                item.soft_dropped = false;
                item.thrown_dir = "x";
                done = true;
                break;
            case AT_DTHROW:
                var item = create_hitbox(AT_NSPECIAL,1,round(x-spr_dir*20*player_scale),round(y-20*player_scale));
                item.vsp = 13;
                item.soft_dropped = false;
                item.thrown_dir = "down";
                done = true;
                break;
            case AT_UTHROW:
                var item = create_hitbox(AT_NSPECIAL,1,round(x+spr_dir*20*player_scale),round(y-40*player_scale));
                item.vsp = -20;
                item.soft_dropped = false;
                item.thrown_dir = "up";
                done = true;
                break;
        }
        if fast_bump {
            var item = create_hitbox(AT_NSPECIAL,1,round(x-spr_dir*20),round(y-20*player_scale));
            item.soft_dropped = true;
            item.thrown_dir = "down";
            done = true;
            can_fast_bump = false;
        }
        if done {
            item.sprite_index = sprite_get(`item_held_${item_held}`);
            item.is_what = item_held;
            if item_held == "bumper" bumper_id = item;
            item.spr_dir = sign(spr_dir);
            item.spin = true;
            item.num = get_id(item_held);
            with item script_execute(item.num);
            item_attack = true;
            item_held = "none";
            item_held_type = 0;
            clear_button_buffer(PC_SPECIAL_PRESSED);
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
    }
}

if attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_FSPECIAL_2 {
    if special_down {
        attack_down = true;
        strong_down = true;
    } else {
        attack_down = false;
        strong_down = false;
    }
}
if attack == AT_DAIR {
    can_fast_fall = false;
    can_wall_jump = true;
    if has_rune("A") && has_hit {
        can_jump = true;
        djumps = 0;
        can_attack = true;
        can_special = true;
    }
    if !free destroy_hitboxes();
}
if attack == AT_NAIR && !free && !was_parried {
    set_state(PS_IDLE);
}
if attack == AT_JAB && was_parried {
    was_parried = false;
}
if attack == AT_USTRONG && window == 2 {
    target_scale = 2 + 2*has_rune("I");
    scale_timer = 180 + strong_charge*2 + 300*has_rune("C");
    if window_timer == 2 sound_play(has_rune("I") ? sound_get("megaman") : sound_get("grow"),has_rune("I"));
    check_hitboxes = true;
    check_scale = true;
}
if attack == AT_DSTRONG && window == 2 {
    metal_timer = 180 + strong_charge*2 + 300*has_rune("C");
    init_shader();
    if window_timer == 2  sound_play(has_rune("N")? sound_get("starman"):sound_get("metal_equip"),has_rune("N"));
    check_hitboxes = true;
    check_metal = true;
}
if attack == AT_FSTRONG && window == 2 {
    curry_timer = 240 + strong_charge*4 + 300*has_rune("C");
    check_hitboxes = true;
    check_curry = true;
}
if item_held == "pop" && (attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG) && window == 1 && window_timer < 40 {
    window_timer = 55;
    item_held = "none";
}
if (attack == AT_USPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_FSPECIAL_2) && window == 4 {
    if special_pressed {
        window = 1
        window_timer = 0;
    } else if !special_down && strong_charge < 15 {
        window = 5;
        window_timer = 4;
    } 
    
}
if has_rune("K") && curry_timer > 0 && has_hit {
    can_jump = true;
    can_attack = true;
    can_special = true;
    can_strong = true;
    can_shield = true;
}
if attack == AT_TAUNT_2 && !special_down && window < 3 {
    window = 3
    window_timer = 1
}
if attack == AT_TAUNT_2 && window == 2 {
    with oPlayer if other != self {
        var relative_x = (x - other.x) * other.spr_dir;
        var relative_y = (y - other.y);
        if relative_x > 0 && relative_x < 350 && abs(relative_y) < 75 {
            hsp += other.spr_dir;
        }
    }
}
#define get_id(name)
    switch name {
        case "beamsword":
            return init_beamsword;
            break;
        case "boomerang":
            return init_boomerang;
            break;
        case "superscope":
            return init_superscope;
            break;
        case "bumper":
            return init_bumper;
            break;
        case "pop":
            return init_pop;
            break;
        case "subspace_bomb":
            return init_bomb;
            break;
        case "squeaky_hammer":
            return init_hammer;
            break;
        case "gust_bellows":
            return init_bellows;
            break;
        default:
            return init_beamsword;
    }
#define init_beamsword()
    return;
#define init_boomerang()
    y-=10
    start_returning = false;
    if !soft_dropped {
        var joy_pad_still = false;
        var joy_direction = 0;
        var pl_spr_dir = 0;
        with player_id {
            joy_pad_still = joy_pad_idle;
            joy_direction = round(aiming_dir/45)*45;
            pl_spr_dir = spr_dir;
        }
        if !joy_pad_still {
            hsp = lengthdir_x(35,joy_direction);
            vsp = lengthdir_y(35,joy_direction);
        } else {
            hsp = 35*pl_spr_dir;
            vsp = 0;
        }
    }
    return;
#define init_superscope()
    return;
#define init_bumper()
    y += 5;
    bumper_health = 3;
    bumper_cooldown = 30;
    return;
#define init_pop()
    return;
#define init_bomb()
    bug_fx = hit_fx_create(sprite_get("shadow_bug_inverse"),60);
    bug_fx2 = hit_fx_create(sprite_get("shadow_bug"),60);
    grow_fx = hit_fx_create(sprite_get("subspace_hole_grow"),24);
    return;    
#define init_hammer()
    var test_squeaky = false;
    with player_id test_squeaky = !has_rune("O");
    squeaky = test_squeaky;
    return; 
#define init_bellows()
    sprite_index = sprite_get("gust_bellows_dropped");
    return;