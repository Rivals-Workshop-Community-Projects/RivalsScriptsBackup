//a
if prev_free != free {
    prev_free = free;
}

if has_touched_grass {
    move_cooldown[AT_DSPECIAL] = 61;
    if (free && !hitpause && abs(right_down - left_down)) && !(state_cat == SC_HITSTUN || state_cat == SC_AIR_COMMITTED) && can_move {
        hsp = (right_down - left_down) * walk_speed * 1.25;
    }
    //spawn visuals n stuff
    if get_gameplay_time() mod 20 == 0 {
        var rand_x = -36 + ((random_func(3,72,true) + x) mod 72);
        var rand_y = -48 + ((random_func(5,52,true) + x) mod 52);
        var sparkle = spawn_hit_fx(x + rand_x,y + rand_y,vfx_dspecialboost);
        sparkle.depth = depth - 1;
    }
}
//manually reducing cooldowns cause the game doesn't do that for custom ones
if move_cooldown[AT_FSPECIAL_RED] > 0 {
    move_cooldown[AT_FSPECIAL_RED] -= 1;
}
if move_cooldown[AT_FSPECIAL_BLUE] > 0 {
    move_cooldown[AT_FSPECIAL_BLUE] -= 1;
}
if move_cooldown[AT_FSPECIAL_GREEN] > 0 {
    move_cooldown[AT_FSPECIAL_GREEN] -= 1;
}

if !free or state == PS_WALL_JUMP {
    pratphobia = false;
    if state != PS_ATTACK_GROUND {
        dspecial_failed = false;
    }
}

if pratphobia {
    move_cooldown[AT_USPECIAL] = 2;
}

if dspecial_failed && move_cooldown[AT_DSPECIAL] < 2 {
    move_cooldown[AT_DSPECIAL] = 2;
}

if dspecial_fail_buffer > 0 {
    dspecial_fail_buffer -= 1;
}

if fspec_jump_timer > 0 {
    fspec_jump_timer -= 1;
}

//nspecial tap
move_cooldown[AT_NSPECIAL] = 0;
if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) && joy_pad_idle {
    if special_pressed && nspecial_buffer >= 10 {
        axe_type += 1;
        if axe_type > 3 {
            axe_type = 0;
        }
        sound_play(asset_get("sfx_coin_collect"),false,noone,0.2,1.35);
        sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.55,1.65);
        if nspecial_buffer > 0 {
            nspecial_buffer -= 1;
        }
    }
    if special_down {
        if nspecial_buffer > 0 {
            nspecial_buffer -= 1;
        }
    }
    if !special_down {
        if nspecial_buffer < 10 {
            nspecial_buffer += 1;
        }
    }
} else {
    if nspecial_buffer < 10 {
        nspecial_buffer += 1;
    }
}
if special_down && nspecial_buffer <= 0 {
    set_attack(AT_NSPECIAL);
}
if nspecial_buffer != 10 {
    clear_button_buffer(PC_SPECIAL_PRESSED);
    nspecial_anim_buffer = 0;
} else {
    if nspecial_anim_buffer < 25 {
        nspecial_anim_buffer += 1;
    }
}
move_cooldown[AT_NSPECIAL] = 2;