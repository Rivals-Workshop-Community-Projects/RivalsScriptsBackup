set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 6);

for (var i = 0; i <= 6; i++) {
    if (i == 2 || i == 5) {
        set_hitbox_value(AT_UAIR, i, HG_DAMAGE, 9);
        set_hitbox_value(AT_UAIR, i, HG_HIT_SFX, i == 2 ? sound_get("sfx_anthem_sweetspot") : sound_get("sfx_sword_blow_heavy1"));
        set_hitbox_value(AT_UAIR, i, HG_VISUAL_EFFECT,  i == 2 ? hfx_sweetspot : hfx_large_up);
        set_hitbox_value(AT_UAIR, i, HG_BASE_HITPAUSE,  i == 2 ? 10 : 7);
        set_hitbox_value(AT_UAIR, i, HG_HITPAUSE_SCALING, i == 2 ? 1 : 0.8);
        set_hitbox_value(AT_UAIR, i, HG_EFFECT, i == 2 ? 30 : 0);
        set_hitbox_value(AT_UAIR, i, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_UAIR, i, HG_KNOCKBACK_SCALING, 0.7);
    }
    else {
        set_hitbox_value(AT_UAIR, i, HG_DAMAGE, 6);
        set_hitbox_value(AT_UAIR, i, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
        set_hitbox_value(AT_UAIR, i, HG_VISUAL_EFFECT, hfx_small_up);
        set_hitbox_value(AT_UAIR, i, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_UAIR, i, HG_HITPAUSE_SCALING, 0.4);
        set_hitbox_value(AT_UAIR, i, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_UAIR, i, HG_KNOCKBACK_SCALING, 0.6);
    }
    
    if (i >= 1 && i <= 3) {
        set_hitbox_value(AT_UAIR, i, HG_ANGLE, 90);
    }
    else {
        set_hitbox_value(AT_UAIR, i, HG_ANGLE, 80);
        set_hitbox_value(AT_UAIR, i, HG_ANGLE_FLIPPER, 6);
    }
}

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Inner Sourspot 1");
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 112);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 4);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Sweetspot 1");
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 142);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Outer Sourspot 1");
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -82);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 178);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 108);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);

set_hitbox_value(AT_UAIR, 4, HG_MUNO_HITBOX_NAME, "Inner Sourspot 2");
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 4);

set_hitbox_value(AT_UAIR, 5, HG_MUNO_HITBOX_NAME, "Sweetspot 2");
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -50);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 3);

set_hitbox_value(AT_UAIR, 6, HG_MUNO_HITBOX_NAME, "Outer Sourspot 2");
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -64);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 92);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 2);