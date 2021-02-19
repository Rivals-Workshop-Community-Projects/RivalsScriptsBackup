// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_RELEASE || (attack == AT_USPECIAL && window_timer < 3)) {
    trigger_b_reverse();
}

//Jab
if (attack == AT_JAB) {
    was_parried = false;
    if (window == 2 && window_timer > 2) {
        can_attack = true;
        attack_end();
    }
}

//Dash attack
if (attack == AT_DATTACK) {
    hsp = 0;
    if (window == 1 && window_timer < 4 && up_strong_pressed) {
        attack = AT_USTRONG;
        set_attack(AT_USTRONG);
        hsp = 10 * spr_dir;
    }
    if (!hitpause && window == 2 && (window_timer == 1 || window_timer == 11 || window_timer == 21)) {
        hsp = 40 * spr_dir;
    }
    if (window_timer < 30) {
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
}

//Strongs
if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && runeG) {
    super_armor = false;
    if (window == 1) {
        super_armor = true;
    }
}

//Down Strong
if (attack == AT_DSTRONG && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !attack_down && !strong_down && !down_strong_down && runeH) {
    sound_play(asset_get("sfx_kragg_rock_shatter"));
}

//Neutral B
if (attack == AT_NSPECIAL) {
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && runeL) {
        create_hitbox(attack, 2, x + (34 * spr_dir), y - 64);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 2 + (2 * runeD) + random_func(3, 3, false));
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4 - random_func(4, 4, false));
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("food" + string(1 + random_func(5, 4, true))));
    }
    if (window == 2 && window_timer > 15 && window_timer < 21 && special_pressed && !was_parried) {
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 2 + (2 * runeD) + random_func(0, 3, false));
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4 - random_func(1, 4, false));
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("food" + string(1 + random_func(2, 4, true))));
        window = 1;
        window_timer = 0;
        attack_end();
    }
    if (in_air && !free && !was_parried) {
        set_state(PS_LAND);
    }
}

//Side B
if (attack == AT_FSPECIAL) {
    can_move = false;
    can_fast_fall = false;
    draw_indicator = false;
    if (window == 2) {
        switch (judge_outcome) {
            case 1:
                if (window_timer == 1 && !hitpause) {
                    take_damage(player, -1, 1);
                }
            break;
            case 5:
                if (window_timer mod (3) == 0 && !hitpause) {
                    if (window_timer == 12) {
                        reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER);
                        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 80);
                        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
                        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
                        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
                    }
                    attack_end();
                    destroy_hitboxes();
                    create_hitbox(AT_FSPECIAL, 1, x, y);
                    create_hitbox(AT_FSPECIAL, 2, x, y);
                }
                if (window_timer == 15) {
                    destroy_hitboxes();
                }
            break;
            case 7:
                if (window_timer < 8 && !hitpause) {
                    take_damage(player, -1, -1);
                }
            break;
        }
    }
    if (window > 1 && judge_outcome == 9) {
        lightning_fx++;
    }
}

//Up B
if (attack == AT_USPECIAL) {
    move_cooldown[attack] = 9999;
    can_move = false;
    can_fast_fall = false;
    if (window == 1 && runeM) {
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
    if (window == 2) {
        if (runeM && !hitpause) {
            can_attack = true;
            can_special = true;
            can_jump = true;
            can_wall_jump = true;
            can_shield = true;
        }
        if (window_timer == 1 && !hitpause) {
            hsp = 4 * spr_dir;
            vsp = -13 - (3 * runeI);
            if (right_down) {
                hsp += 2;
                vsp += 2 * spr_dir;
            }
            if (left_down) {
                hsp -= 2;
                vsp -= 2 * spr_dir;
            }
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && special_down && !was_parried) {
            set_state(PS_ATTACK_AIR);
            set_attack(AT_PARACHUTE);
        }
        if (window_timer > 15) {
            can_move = true;
        }
        if (!free) {
            set_state(PS_LAND);
        }
    }
}

//Parachute
if (attack == AT_PARACHUTE) {
    if (window > 1 && !hitpause) {
        can_fast_fall = false;
        can_attack = true;
        can_special = true;
        can_jump = true;
        can_wall_jump = true;
        can_shield = true;
    }
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        create_hitbox(attack, 1, x, y);
    }
    if (window == 2) {
        vsp = min(vsp, 2);
        if (down_pressed) {
            destroy_hitboxes();
            window = 3;
            window_timer = 0;
        }
    }
    if (!free) {
        set_state(PS_LAND);
    }
    if (was_parried) {
        set_state(PS_PRATFALL);
    }
}

//Down B
if (attack == AT_DSPECIAL) {
    can_move = false;
    can_fast_fall = false;
    if (!runeF) {
        move_cooldown[attack] = 20;
        move_cooldown[AT_DSPECIAL_2] = 20;
    }
    if (window == 2) {
        with (asset_get("pHitBox")) {
            if (player != other.player && type == 2 && point_distance(x, y, other.x + (30 * other.spr_dir), other.y - 30) < 60 + (40 * other.runeJ)) {
                with (other.id) {
                    if (x < other.x) {
                        spr_dir = 1;
                    }
                    else {
                        spr_dir = -1;
                    }
                    orig_knock = 0;
                    should_make_shockwave = false;
                    oil_charge++;
                    oil_damage[oil_charge - 1] = other.damage;
                    if (runeO) {
                        oil_charge = 3;
                        oil_damage[0] = other.damage;
                        oil_damage[1] = other.damage;
                        oil_damage[2] = other.damage;
                    }
                    window = 3;
                    window_timer = 0;
                    other.destroyed = true;
                }
            }
        }
        if (right_down) {
            spr_dir = 1;
        }
        if (left_down) {
            spr_dir = -1;
        }
        if (!special_down) {
            window = 4;
            window_timer = 0;
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            window_timer = 0;
        }
    }
    if (window == 3) {
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (!special_down || oil_charge == 3) {
                window = 4;
                window_timer = 0;
            }
            else {
                window = 2;
                window_timer = 0;
            }
        }
    }
}

if (attack == AT_DSPECIAL_RELEASE && !runeF) {
    move_cooldown[attack] = 20;
    move_cooldown[AT_DSPECIAL] = 20;
}