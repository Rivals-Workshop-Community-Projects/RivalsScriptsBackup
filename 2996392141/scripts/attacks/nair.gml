set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_TENSION_WHIFF_PENALTY, 3);

set_num_hitboxes(AT_NAIR, 4);

for (var i = 1; i <= 4; i++) {
    if (i == 1 || i == 2) {
        set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 6);
        set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_NAIR, i, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_NAIR, i, HG_HITPAUSE_SCALING, 0.2);
        set_hitbox_value(AT_NAIR, i, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, 0.4);
        set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_NAIR, i, HG_ANGLE, 361);
    }
    else {
        set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 4);
        set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
        set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_NAIR, i, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_NAIR, i, HG_HITPAUSE_SCALING, 0.6);
        set_hitbox_value(AT_NAIR, i, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_NAIR, i, HG_FINAL_BASE_KNOCKBACK, 2);
        set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, 0.4);
        set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_NAIR, i, HG_ANGLE, 361);
    }
}

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 44);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 44);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 26);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);