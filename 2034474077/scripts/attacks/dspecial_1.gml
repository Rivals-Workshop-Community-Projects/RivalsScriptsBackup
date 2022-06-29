set_attack_value(AT_DSPECIAL_1, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_1, AG_SPRITE, sprite_get("dspecial_1"));
set_attack_value(AT_DSPECIAL_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_1, AG_AIR_SPRITE, sprite_get("dspecial_1"));
set_attack_value(AT_DSPECIAL_1, AG_HURTBOX_SPRITE, sprite_get("dspecial_1_hurt"));

set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL_1, 1, AG_WINDOW_SFX_FRAME, 5);
//leap
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
//swing startup
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_SFX_FRAME, 3);

//falling down
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSPECIAL_1, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL_1, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_1, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//land
set_window_value(AT_DSPECIAL_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_1, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_1, 6, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSPECIAL_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_1, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_1, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_1, 7, AG_WINDOW_ANIM_FRAME_START, 14);


set_num_hitboxes(AT_DSPECIAL_1, 3);
//initial hit
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//fall
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_WIDTH, 41);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_ANGLE, 275);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//land
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_WINDOW, 12);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_WIDTH, 83);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HEIGHT, 13);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL_1, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_1, 3, HG_HITBOX_GROUP, -1);