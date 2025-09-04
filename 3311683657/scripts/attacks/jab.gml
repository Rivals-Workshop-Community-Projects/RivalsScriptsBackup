set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);


set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 14);


set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hfx_ori_fspec_boom);
//set_hitbox_value(AT_JAB, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_EFFECT, 23);