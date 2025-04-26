set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);

set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_throw"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 9);


set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 7);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_2,4);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, vfx_m);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));


set_hitbox_value(AT_NSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 60);



set_hitbox_value(AT_NSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 60);



set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 115);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT, vfx_b);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

