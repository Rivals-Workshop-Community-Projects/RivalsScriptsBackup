//update

timer++

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);

//char height
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_UTILT:
        var end_char_height = 160;
        if window != 3 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
        
        case AT_UAIR:
        var end_char_height = 110;
        if window != 4 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 6), 6), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 16), 16), start_char_height, end_char_height);
        }
        break;
        
        case AT_BAIR:
        var end_char_height = 80;
        if window != 3 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
    }
}

//crawl
if state == PS_CROUCH && state_timer > 6 && sprite_index == sprite_get("crouch") {
    if hsp == 0 {
        crouch_sfx_state = 0
    }
    if (spr_dir == 1 && right_down && !left_down) || (spr_dir == -1 && !right_down && left_down) {
        if crouch_sfx_state == 0 && hsp != 0 {
            crouch_sfx_state = 1
        }
        hsp = 2*spr_dir
    }
} else {
    crouch_sfx_state = 0
}

if crouch_sfx_state == 0 {
    sound_stop(sound_get("r2_crawl"))
} else if crouch_sfx_state == 1 {
    sound_play(sound_get("r2_crawl"), false, noone, 0.7)
    crouch_sfx_state = 2
}

if !r2_oil_timer_increment {
    with oPlayer if id != other.id {
        r2_oil_timer_increment = true
        
        if r2_oiled && (!(r2_burning || state == PS_HITSTUN) || r2_oil_timer < 30) {
            r2_oil_timer--
            if r2_oil_timer <= 0 {
                r2_oiled = false
            }
        }
    }
}

r2_oil_timer_increment = false

if !free || state == PS_WALL_JUMP || state == PS_HITSTUN {
    move_cooldown[AT_USPECIAL] = 0
}

with oPlayer if ("activated_kill_effect" in self) && ("id" in self) && id != other.id {
    if activated_kill_effect {
        r2_burning = false
    }
    if r2_burning && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) {
        if hitpause <= 0 {
            r2_burning_timer++
            if r2_burning_timer mod 8 == 4 {
                sound_play(asset_get("sfx_burnend"))
            }
            /*
            if r2_burning_timer mod 4 == 1 {
                with other {
                    spawn_hit_fx(other.x, other.y, vfx_smoke)
                }
            }
            */
            if r2_burning_timer >= r2_burning_delay {
                r2_burning = false
                r2_burning_timer = 0
                r2_oiled = false
                r2_oil_timer = 0
                with other {
                    create_hitbox(AT_EXTRA_1, 1, other.x, other.y)
                }
            }
        }
    } else {
        r2_burning = false
        r2_burning_timer = 0
    }
    
    if state == PS_DEAD || state == PS_RESPAWN {
        r2_burning = false
        r2_burning_timer = 0
        r2_oiled = false
        r2_oil_timer = 0
    }
    
    if r2_oiled && r2_oil_timer > 30 && !free {
        with other if timer mod 2 == 0 {
            var _w = 8
            for (var i = -_w/2; i < _w/2; i++) {
                instance_create((round(other.x/8)*8) + i*8, floor(other.y), "obj_article1")
            }
        }
    }
}

with oPlayer if id != other.id && r2_grabbed == other.id {
    hitstop = 6
    hitstop_full = 6
}

if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    with oPlayer if id != other.id && r2_grabbed == other.id {
        r2_grabbed = 0
    }
}

num_puddles = 0
with obj_article1 if player_id == other.id {
    other.num_puddles++
}
//print(num_puddles)

//hitbox puddle interaction
with pHitBox if ("attack" in self) && player_id == other.id && ((attack == AT_USPECIAL) || (attack == AT_FSTRONG && hbox_num == 3) || (attack == AT_DSPECIAL && hbox_num == 3)) {
    var force = false
    if attack == AT_DSPECIAL && hbox_num == 3 {
        force = true
    }
    with obj_article1 if player_id == other.player_id && decay_timer == 0 {
        var col_width = 40
        if (force || (other.x >= obj_l - (col_width/2) && other.x <= obj_r + (col_width/2))) && collision_rectangle(obj_l, y-4, obj_r, y+10, other.id, true, true) {
            split_pos = clamp(floor(other.x), obj_l, obj_r)
        }
    }
}
/*
if !shield_down {
    with oPlayer if state == PS_RESPAWN && id != other.id {
        state_timer = 0
        hsp = 0
        vsp = 0
    }
}
*/

