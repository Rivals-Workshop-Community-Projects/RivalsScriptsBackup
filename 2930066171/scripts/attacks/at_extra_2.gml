//Cargo throws


set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("cargoThrow"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("cargoThrow_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);



set_num_hitboxes(AT_EXTRA_2, 3);

//Weak Forwards
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 25);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 12);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE,  45);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .7);

//Combo UPThrow
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 25);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 12);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE,  90);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .7);

//Strong Back Throw
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_EXTRA_2, 3, HG_WIDTH, 25);
set_hitbox_value(AT_EXTRA_2, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_EXTRA_2, 3, HG_PRIORITY, 12);
set_hitbox_value(AT_EXTRA_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE,  135);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_2, 3, HG_HITPAUSE_SCALING, .7);