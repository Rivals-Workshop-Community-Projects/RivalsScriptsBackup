set_attack_value(42, AG_CATEGORY, 2);
set_attack_value(42, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(42, AG_NUM_WINDOWS, 4);
set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(42, AG_HAS_LANDING_LAG, 1);
set_attack_value(42, AG_LANDING_LAG, 6);

//Slide Jump Start
set_window_value(42, 1, AG_WINDOW_TYPE, 1);
set_window_value(42, 1, AG_WINDOW_LENGTH, 2);
set_window_value(42, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(42, 1, AG_WINDOW_ANIM_FRAME_START, 8);

//Slide Jump
set_window_value(42, 2, AG_WINDOW_TYPE, 1);
set_window_value(42, 2, AG_WINDOW_LENGTH, 6);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(42, 2, AG_WINDOW_HSPEED, 8);
set_window_value(42, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(42, 2, AG_WINDOW_VSPEED, -6); // -7
set_window_value(42, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(42, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(42, 3, AG_WINDOW_TYPE, 1);
set_window_value(42, 3, AG_WINDOW_LENGTH, 10);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(42, 4, AG_WINDOW_TYPE, 1);
set_window_value(42, 4, AG_WINDOW_LENGTH, 6);
set_window_value(42, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(42, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(42, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(42, 2);

set_hitbox_value(42, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(42, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(42, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 1, HG_WINDOW, 2);
set_hitbox_value(42, 1, HG_LIFETIME, 5);
set_hitbox_value(42, 1, HG_HITBOX_X, 15);
set_hitbox_value(42, 1, HG_HITBOX_Y, -26);
set_hitbox_value(42, 1, HG_WIDTH, 55);
set_hitbox_value(42, 1, HG_HEIGHT, 40);
set_hitbox_value(42, 1, HG_SHAPE, 0);
set_hitbox_value(42, 1, HG_PRIORITY, 2);
set_hitbox_value(42, 1, HG_DAMAGE, 4);
set_hitbox_value(42, 1, HG_ANGLE, 40);
set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(42, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(42, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(42, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(42, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(42, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(42, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(42, 2, HG_WINDOW, 3);
set_hitbox_value(42, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(42, 2, HG_LIFETIME, 5);
set_hitbox_value(42, 2, HG_HITBOX_X, 15);
set_hitbox_value(42, 2, HG_HITBOX_Y, -14);
set_hitbox_value(42, 2, HG_WIDTH, 60);
set_hitbox_value(42, 2, HG_HEIGHT, 40);
set_hitbox_value(42, 2, HG_SHAPE, 0);
set_hitbox_value(42, 2, HG_PRIORITY, 2);
set_hitbox_value(42, 2, HG_DAMAGE, 4);
set_hitbox_value(42, 2, HG_ANGLE, 40);
set_hitbox_value(42, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(42, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(42, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(42, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(42, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(42, 2, HG_HIT_LOCKOUT, 1);
