set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 9);

for (var i = 0; i <= 9; i++) {
    if (i == 2 || i == 5 || i == 8) {
        set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 13);
        set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, i == 5 ? sound_get("sfx_anthem_sweetspot") : sound_get("sfx_sword_blow_heavy1"));
        set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT,  i == 5 ? hfx_sweetspot : hfx_large_up);
        set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE,  i == 5 ? 12 : 8);
        set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, i == 5 ? 1 : 1);
        set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, i == 5 ? 9 : 8);
        set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING,  i == 5 ? 1.1 : 1.25);
        set_hitbox_value(AT_USTRONG, i, HG_EFFECT, i == 5 ? 30 : 0);
    }
    else {
        set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 7);
        set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
        set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, hfx_small_up);
        set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, 0.9);
        set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 8.5);
        set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING, 0.9);
    }
    
    if (i >= 1 && i <= 6) {
        set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 90);
    }
    else {
        set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 100);
    }
}


set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Inner Sourspot 1");
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);

set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Sweetspot 1");
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 72);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);

set_hitbox_value(AT_USTRONG, 3, HG_MUNO_HITBOX_NAME, "Outer Sourspot 1");
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 104);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);

set_hitbox_value(AT_USTRONG, 4, HG_MUNO_HITBOX_NAME, "Inner Sourspot 2");
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);

set_hitbox_value(AT_USTRONG, 5, HG_MUNO_HITBOX_NAME, "Sweetspot 2");
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 176);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);

set_hitbox_value(AT_USTRONG, 6, HG_MUNO_HITBOX_NAME, "Outer Sourspot 2");
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, -12);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -94);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 228);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 122);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);

set_hitbox_value(AT_USTRONG, 7, HG_MUNO_HITBOX_NAME, "Inner Sourspot 3");
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, -42);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 72);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);

set_hitbox_value(AT_USTRONG, 8, HG_MUNO_HITBOX_NAME, "Sweetspot 3");
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, -56);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 96);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 72);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 3);

set_hitbox_value(AT_USTRONG, 9, HG_MUNO_HITBOX_NAME, "Outer Sourspot 3");
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, -72);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 128);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 72);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 2);