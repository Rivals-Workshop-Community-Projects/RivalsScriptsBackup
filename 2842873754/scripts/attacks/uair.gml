set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -2);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 16);
set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 16);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX,  sound_get("sfx_hammerhit_s"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -114);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX,  sound_get("sfx_hammerhit_s"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);

var i = 0;
repeat (6) {
    set_hitbox_value(AT_UAIR, 3 + i, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_UAIR, 3 + i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_UAIR, 3 + i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_UAIR, 3 + i, HG_WINDOW, 2);
    set_hitbox_value(AT_UAIR, 3 + i, HG_WINDOW_CREATION_FRAME, (i/2 + 1) * 2);
    set_hitbox_value(AT_UAIR, 3 + i, HG_LIFETIME, 2);
    set_hitbox_value(AT_UAIR, 3 + i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_UAIR, 3 + i, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_UAIR, 3 + i, HG_WIDTH, 8);
    set_hitbox_value(AT_UAIR, 3 + i, HG_HEIGHT, 34);
    set_hitbox_value(AT_UAIR, 3 + i, HG_SHAPE, 2);
    set_hitbox_value(AT_UAIR, 3 + i, HG_PRIORITY, 1);
    set_hitbox_value(AT_UAIR, 3 + i, HG_HITBOX_GROUP, i / 2);
    
    set_hitbox_value(AT_UAIR, 4 + i, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_UAIR, 4 + i, HG_PARENT_HITBOX, 2);
    set_hitbox_value(AT_UAIR, 4 + i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_UAIR, 4 + i, HG_WINDOW, 2);
    set_hitbox_value(AT_UAIR, 4 + i, HG_WINDOW_CREATION_FRAME, (i/2 + 1) * 2);
    set_hitbox_value(AT_UAIR, 4 + i, HG_LIFETIME, 2);
    set_hitbox_value(AT_UAIR, 4 + i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_UAIR, 4 + i, HG_HITBOX_Y, -114);
    set_hitbox_value(AT_UAIR, 4 + i, HG_WIDTH, 8);
    set_hitbox_value(AT_UAIR, 4 + i, HG_HEIGHT, 34);
    set_hitbox_value(AT_UAIR, 4 + i, HG_SHAPE, 2);
    set_hitbox_value(AT_UAIR, 4 + i, HG_PRIORITY, 1);
    set_hitbox_value(AT_UAIR, 4 + i, HG_HITBOX_GROUP, i / 2);
    i += 2;
}

set_hitbox_value(AT_UAIR, 15, HG_MUNO_HITBOX_NAME, "Final 1");
set_hitbox_value(AT_UAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 15, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 15, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 15, HG_HITBOX_Y, -124);
set_hitbox_value(AT_UAIR, 15, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 15, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 15, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 15, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 15, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UAIR, 15, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 15, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 15, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_UAIR, 15, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 15, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 15, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 15, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 15, HG_HIT_SFX, sound_get("sfx_hammerhit_l"));
set_hitbox_value(AT_UAIR, 15, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 16, HG_MUNO_HITBOX_NAME, "Final 2");
set_hitbox_value(AT_UAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 16, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 16, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 16, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 16, HG_HITBOX_Y, -88);
set_hitbox_value(AT_UAIR, 16, HG_WIDTH, 28);
set_hitbox_value(AT_UAIR, 16, HG_HEIGHT, 64);
set_hitbox_value(AT_UAIR, 16, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 16, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 16, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 16, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UAIR, 16, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 16, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_UAIR, 16, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UAIR, 16, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 16, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 16, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 16, HG_HIT_SFX, sound_get("sfx_hammerhit_l"));
set_hitbox_value(AT_UAIR, 16, HG_ANGLE_FLIPPER, 6);
