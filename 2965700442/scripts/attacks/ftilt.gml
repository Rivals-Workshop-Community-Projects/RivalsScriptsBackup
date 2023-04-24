set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 11);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_MISC_ADD, "Can be angled up or down.");
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_USES_ROLES, 1);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_MUNO_WINDOW_ROLE, 1);

//Normal Angle
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 2, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_GOTO, 11);
set_window_value(AT_FTILT, 4, AG_MUNO_WINDOW_ROLE, 3);

//Up Angle
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_GOTO, 11);

//Down Angle
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_FTILT, 8, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FTILT, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FTILT, 10, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 10, AG_WINDOW_GOTO, 11);

//Endlag
set_window_value(AT_FTILT, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 11, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FTILT, 11, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 11, AG_MUNO_WINDOW_ROLE, 3);

set_num_hitboxes(AT_FTILT, 9);

for (var i = 0; i <= 9; i++) {
    if (i == 1 || i == 4 || i == 7) {
        set_hitbox_value(AT_FTILT, i, HG_DAMAGE, 11);
        set_hitbox_value(AT_FTILT, i, HG_ANGLE, 361);
        set_hitbox_value(AT_FTILT, i, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FTILT, i, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_FTILT, i, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_FTILT, i, HG_HITPAUSE_SCALING, 0.9);
        set_hitbox_value(AT_FTILT, i, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
        set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT, hfx_sweetspot);
        set_hitbox_value(AT_FTILT, i, HG_EFFECT, 30);
    }
    else {
        set_hitbox_value(AT_FTILT, i, HG_PRIORITY, 2);
        set_hitbox_value(AT_FTILT, i, HG_DAMAGE, 8);
        set_hitbox_value(AT_FTILT, i, HG_ANGLE, 361);
        set_hitbox_value(AT_FTILT, i, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_FTILT, i, HG_KNOCKBACK_SCALING, 0.7);
        set_hitbox_value(AT_FTILT, i, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FTILT, i, HG_HITPAUSE_SCALING, 0.6);
        set_hitbox_value(AT_FTILT, i, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));
        set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT, hfx_small);
    }
}

//Normal Angle
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Sweetspot");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 96);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 4);

set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);

set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 128);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 96);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);

//Up Angle
set_hitbox_value(AT_FTILT, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 96);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 4);

set_hitbox_value(AT_FTILT, 5, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 5);

set_hitbox_value(AT_FTILT, 6, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 128);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 3);

//Down Angle
set_hitbox_value(AT_FTILT, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 7, HG_WINDOW, 9);
set_hitbox_value(AT_FTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_X, 92);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 7, HG_PRIORITY, 4);

set_hitbox_value(AT_FTILT, 8, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 8, HG_WINDOW, 9);
set_hitbox_value(AT_FTILT, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 8, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 8, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 8, HG_PRIORITY, 5);

set_hitbox_value(AT_FTILT, 9, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 9, HG_WINDOW, 9);
set_hitbox_value(AT_FTILT, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 9, HG_HITBOX_X, 112);
set_hitbox_value(AT_FTILT, 9, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FTILT, 9, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 9, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 9, HG_PRIORITY, 3);
