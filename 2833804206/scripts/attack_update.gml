// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL_AIR){
    trigger_b_reverse();
}

if attack == AT_UTILT || attack == AT_BAIR {
    height_timer++;
}

if attack == AT_UAIR && window >= 2 {
    height_timer++;
}

//remove charge windows
if strong_throw {
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
} else {
    reset_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW);
    reset_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW);
    reset_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW);
}

if attack == AT_NSPECIAL {
    move_cooldown[AT_NSPECIAL] = 10
}

if attack == AT_DSPECIAL {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_watergun_splash"))
        sound_play(asset_get("sfx_troupple_swipe"))
        var _w = 4
        for (var i = -_w/2; i < _w/2; i++) {
            instance_create((round((x+64*spr_dir)/8)*8) + i*8,y, "obj_article1")
        }
    }
    
    if window == 2 {
        if window_timer == 10 && !hitpause {
            var _w = 4
            for (var i = -_w/2; i < _w/2; i++) {
                instance_create((round((x+32*spr_dir)/8)*8) + i*8,y, "obj_article1")
            }
        }
        if window_timer == 15 && !hitpause {
            var _w = 10
            for (var i = -_w/2; i < _w/2; i++) {
                instance_create((round((x-20*spr_dir)/8)*8) + i*8,y, "obj_article1")
            }
        }
        if window_timer == 20 && !hitpause {
            var _w = 4
            for (var i = -_w/2; i < _w/2; i++) {
                instance_create((round((x-64*spr_dir)/8)*8) + i*8,y, "obj_article1")
            }
        }
        if window_timer == window_length && !hitpause {
            spr_dir *= -1
        }
    }
    move_cooldown[AT_DSPECIAL] = 20
    move_cooldown[AT_DSPECIAL_AIR] = 20
}

if attack == AT_DSPECIAL_AIR {
    if window == 1 && !free {
        attack = AT_DSPECIAL
        hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
    }
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_watergun_splash"))
        sound_play(asset_get("sfx_troupple_swipe"))
    }
    
    move_cooldown[AT_DSPECIAL] = 20
    move_cooldown[AT_DSPECIAL_AIR] = 20
    if window == 2 && window_timer < 16 vsp = clamp(vsp - 0.5, -5, 2)
    
    if window == 2 && !hitpause && window_timer mod 6 == 1 {
        create_hitbox(AT_DSPECIAL_AIR, 5, x, y-20)
    }
}

if attack == AT_DATTACK {
    if window == 3 {
        if window_timer == 4 && attack_down {
            window = 4
            window_timer = 0
            create_hitbox(AT_DATTACK, 4, x, y)
        }
    }
    
    //loop window
    if window == 4 {
        if (window_timer == 4 || window_timer == window_length) && !hitpause {
            create_hitbox(AT_DATTACK, 4, x, y)
        }
        
        if attack_down && window_timer == window_length {
            window_timer = 0
        }
        
        if state_timer mod 12 == 6 && !hitpause {
            sound_play(asset_get("sfx_ell_drill_loop"))
        }
        
    }
}

if attack == AT_JAB {
    if has_hit && window == 4 {
        can_jump = true
    }
}

if attack == AT_FSTRONG {
    if strong_throw {
        if window < 5 {
            vsp = 0
            hsp = clamp(hsp, -1, 1)
        }
        if window <= 3 {
            with oPlayer if id != other.id && r2_grabbed == other.id {
                x = lerp(x, other.x + 50*other.spr_dir, 0.3)
                y = lerp(y, other.y - 4, 0.6)
            }
            
        }
    }
    
    if window == 1 {
        set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 7 + (strong_charge/4));
        set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0.6 + (strong_charge/60));
        //set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_FRICTION, 0.6 + (strong_charge/60));
        
        if strong_charge > 0 && strong_charge mod 12 == 1 {
            sound_play(asset_get("sfx_spin"))
        }
    }
    move_cooldown[AT_FSTRONG] = 20
}

if attack == AT_DSTRONG {
    if strong_throw {
        if window < 4 {
            vsp = 0
            hsp = clamp(hsp, -1, 1)
        }
        if window == 1 {
            with oPlayer if id != other.id && r2_grabbed == other.id {
                x = lerp(x, other.x + 50*other.spr_dir, 0.3)
                y = lerp(y, other.y - 12, 0.6)
            }
            
        } else if window == 2 {
            with oPlayer if id != other.id && r2_grabbed == other.id {
                x = lerp(x, other.x + 50*other.spr_dir, 0.3)
                y = lerp(y, other.y - 30, 0.6)
            }
            
        }
    }
    
    if window == 2 && window_timer == window_length-1 sound_play(asset_get("sfx_ell_cooldown"))
}

if attack == AT_USTRONG {
    if window == 1 {
        hsp = clamp(hsp, -14, 14)
    }
    if strong_throw {
        if window < 4 {
            vsp = 0
            hsp = clamp(hsp, -1, 1)
        }
        if window <= 2 {
            with oPlayer if id != other.id && r2_grabbed == other.id {
                x = lerp(x, other.x + 60*other.spr_dir, 0.3)
                y = lerp(y, other.y - 2, 0.6)
            }
        }
    }
}

if attack == AT_USPECIAL {
    if window > 1 can_wall_jump = true
    if window == 2 {
        for (var i = 0; i < 2; i++) {
            var rand_x = x + random_func(i*2, 16, true) - 8 + (i*20 - 10)
            var rand_y = y + random_func(i*3, 6, true) - 6
            var _fx = spawn_hit_fx(rand_x, rand_y, vfx_smoke)
                _fx.depth = -10
        }
        
        if !left_down && right_down {
            hsp = clamp(hsp+0.2, -5, 5)
        }
        if left_down && !right_down {
            hsp = clamp(hsp-0.2, -5, 5)
        }
        
        if shield_pressed {
            window = 3
            window_timer = 0
            endlag_cancel = true
        }
    }
    /*
    if window == 3 {
        if has_hit && !endlag_cancel {
            can_attack = true
            move_cooldown[AT_USPECIAL] = 1000000000
        }
    }
    */
}

if attack == AT_FSPECIAL {
    //on oil detection
    var on_oil = false
    if !free with obj_article1 if player_id == other.id {
        if other.y == y && other.x >= obj_l && other.x <= obj_r {
            on_oil = true
        }
    }
    
    if window == 2 {
        if on_oil {
            hsp = 22*spr_dir
            if window_timer mod 1 == 0 {
                spawn_hit_fx(x, y, vfx_fspec_oil)
            }
        } else {
            hsp = 14*spr_dir
        }
    }
    
    var jc_active = ((window == 2 || (window == 3 && window_timer < 6)) && on_oil)
    
    if jump_pressed && jc_active {
        set_state(PS_JUMPSQUAT)
        fspec_jc = true;
        create_hitbox(AT_FSPECIAL, 2, x, y)
        create_hitbox(AT_FSPECIAL, 3, x, y)
    }
    
    can_fast_fall = false
    if window == 1 && window_timer == 1 {
        sound_play(asset_get("sfx_ell_utilt_fire"))
    }
    if window == 1 && window_timer == window_length {
        sound_play(asset_get("sfx_blink_dash"))
    }
    
    if window <= 3 {
        can_wall_jump = true
    }
    
    //opponent is grabbed
    if window == 4 {
        can_move = false
        with oPlayer if id != other.id && r2_grabbed == other.id {
            x = lerp(x, other.x + 80*other.spr_dir, 0.3)
            y = lerp(y, other.y - 4, 0.6)
        }
        
        //strong throws
        if window_timer > 12 {
            if is_input_pressed(DIR_DOWN) {
                attack = AT_DSTRONG
                window = 1
                window_timer = 0
                strong_throw = true
                hurtboxID.sprite_index = get_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE);
            } else if is_input_pressed(DIR_UP) {
                attack = AT_USTRONG
                window = 1
                window_timer = 0
                strong_throw = true
                hurtboxID.sprite_index = get_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE);
            } else if (is_input_pressed(DIR_RIGHT) && spr_dir == 1) || (is_input_pressed(DIR_LEFT) && spr_dir == -1) || (is_input_pressed(DIR_NONE)) {
                attack = AT_FSTRONG
                window = 1
                window_timer = 0
                strong_throw = true
                hurtboxID.sprite_index = get_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE);
            }
        }
        
        hsp = lerp(hsp, 0, free ? 0.02 : 0.04)
        vsp = lerp(vsp, 0, 0.2)
        
        if has_hit {
            vsp = 0
        }
        
        hsp = clamp(hsp, -10, 10)
    }
    //release
    if window == 5 {
        if window_timer == 1 {
            with oPlayer if id != other.id && r2_grabbed == other.id {
                hitpause = false
                hitstop = 0
                old_vsp = -8
                vsp = -8
                r2_grabbed = 0
            }
        }
    }
    
    if window == 3 && free && window_timer == window_length && !has_hit {
        set_state(PS_PRATFALL)
    }
    
    move_cooldown[AT_FSPECIAL] = 20
    
    //40px ledge snap
    if (window == 2 || window == 3) && !has_snapped && free && place_meeting(x + hsp, y, asset_get("par_block")) {
        for (var i = 0; i < 40; i++) {
            if (!place_meeting(x + hsp, y-(i+1), asset_get("par_block"))) {
                y -= i;
                has_snapped = true;
                break;
            }
        }
    }
}

#define is_input_pressed(dir)
var strong_inputs = 0
switch dir {
    case DIR_LEFT:
    strong_inputs = left_strong_pressed
    break;
    
    case DIR_RIGHT:
    strong_inputs = right_strong_pressed
    break;
    
    case DIR_UP:
    strong_inputs = up_strong_pressed
    break;
    
    case DIR_DOWN:
    strong_inputs = down_strong_pressed
    break;
}
return (strong_inputs || is_attack_pressed(dir) || is_special_pressed(dir) || is_strong_pressed(dir));