//fuck
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 7);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("sfx_slash"));

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_2, 7);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, -6);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HEIGHT, 130);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HIT_SFX, sound_get("sfx_monsterhit"));
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_VISUAL_EFFECT, 305);