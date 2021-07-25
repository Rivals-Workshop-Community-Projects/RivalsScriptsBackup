set_attack_value(AT_NTHROW, AG_CATEGORY, 0);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("f_dattack"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("f_dattack_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);


set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NTHROW, 1);
//Sour
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .35);

