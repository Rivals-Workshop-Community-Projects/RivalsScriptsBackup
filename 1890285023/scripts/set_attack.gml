//set_attack

if (attack == AT_NSPECIAL) {
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 2 + (2 * runeD) + random_func(0, 3, false));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4 - random_func(1, 4, false));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("food" + string(1 + random_func(2, 4, true))));
    in_air = false;
    if (free) {
        in_air = true;
    }
}

if (attack == AT_FSPECIAL) {
    judge_outcome = 1 + random_func(6, 9, true);
    if (runeE) {
        if (judge_outcome < 8) {
            judge_outcome = 1;
        }
        else {
            judge_outcome = 9;
        }
    }
    reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT);
    switch (judge_outcome) {
        case 1:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
        break;
        case 2:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .2);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
        break;
        case 3:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 150);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
        break;
        case 4:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 30);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 10);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
        break;
        case 5:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 30);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 22);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
        break;
        case 6:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 30);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 3);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
        break;
        case 7:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
        break;
        case 8:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 80);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 14);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .8);
            set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 11);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 21);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
        break;
        case 9:
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("taunt"));
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 30);
            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 2);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 20);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_fish_collect"));
        break;
    }
}

if (attack == AT_USPECIAL && move_cooldown[attack] == 0) {
    spawn_hit_fx(x, y, trampoline);
    y -= 16;
}

if (attack == AT_DSPECIAL && move_cooldown[attack] == 0) {
    if (oil_charge == 3) {
        attack = AT_DSPECIAL_RELEASE;
        set_attack(AT_DSPECIAL_RELEASE);
    }
    else {
        hsp *= .5;
        vsp = 0;
        set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 0);
        if (can_stall) {
            reset_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY);
            can_stall = false;
        }
    }
}

if (attack == AT_DSPECIAL_RELEASE) {
    oil_charge = 0;
    oil_damage[3] = floor(8 + ((oil_damage[0] + oil_damage[1] + oil_damage[2]) / 2));
    set_hitbox_value(AT_DSPECIAL_RELEASE, 1, HG_DAMAGE, oil_damage[3]);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 1, HG_BASE_KNOCKBACK, oil_damage[3] / 2);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 1, HG_KNOCKBACK_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 1, HG_BASE_HITPAUSE, floor(3 + (oil_damage[3] / 2)));
    set_hitbox_value(AT_DSPECIAL_RELEASE, 1, HG_HITPAUSE_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 2, HG_DAMAGE, oil_damage[3]);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 2, HG_BASE_KNOCKBACK, oil_damage[3] / 2);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 2, HG_KNOCKBACK_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 2, HG_BASE_HITPAUSE, floor(3 + (oil_damage[3] / 2)));
    set_hitbox_value(AT_DSPECIAL_RELEASE, 2, HG_HITPAUSE_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 3, HG_DAMAGE, oil_damage[3]);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 3, HG_BASE_KNOCKBACK, oil_damage[3] / 2);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 3, HG_KNOCKBACK_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 3, HG_BASE_HITPAUSE, floor(3 + (oil_damage[3] / 2)));
    set_hitbox_value(AT_DSPECIAL_RELEASE, 3, HG_HITPAUSE_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 4, HG_DAMAGE, oil_damage[3]);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 4, HG_BASE_KNOCKBACK, oil_damage[3] / 2);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 4, HG_KNOCKBACK_SCALING, oil_damage[3] / 10);
    set_hitbox_value(AT_DSPECIAL_RELEASE, 4, HG_BASE_HITPAUSE, floor(3 + (oil_damage[3] / 2)));
    set_hitbox_value(AT_DSPECIAL_RELEASE, 4, HG_HITPAUSE_SCALING, oil_damage[3] / 10);
}