set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 15);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

//Base
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 9);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sora_formchange"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 30);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 30);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 30);

//Valor
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_GOTO, 30);

//wisdom
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX, sound_get("wisdom_jab_finisher"));
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_GOTO, 30);

//master
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 42);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, djump_sound);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_GOTO, 12);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 54);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, sound_get("OB_swipemedium1"));
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_GOTO, 30);

//final
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_DSPECIAL, 6);

//valor
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("KB_hitmedium2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hfx[0]);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 300);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("KB_hitheavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, hfx[0]);


//wisdom
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("KB_hitmedium1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, hfx[0]);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("KB_hitheavy1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, hfx[0]);


//master
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, -34);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("OB_hitheavy2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, hfx[8]);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 33);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, -76);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 150);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("sora_thunder4"));
