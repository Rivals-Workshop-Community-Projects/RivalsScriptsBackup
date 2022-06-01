set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_fist_fire"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_uspecial_explode"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -9);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -13);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -38);

set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -7);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
