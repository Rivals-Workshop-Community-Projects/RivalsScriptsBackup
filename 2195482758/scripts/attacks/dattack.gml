set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack_air"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_HURTBOX_AIR_SPRITE, sprite_get("dattack_air_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

// Spin 1
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10); // 6
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .05);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

// Spin 2
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .08);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .08);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Spin 3
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GRAVITY, .1);

// Spin 4
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GRAVITY, .1);

// Spin 5
set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GRAVITY, .2);

// Spin 6
set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_GRAVITY, .2);

// Spin 7
set_window_value(AT_DATTACK, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_GRAVITY, .3);


// end
set_window_value(AT_DATTACK, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DATTACK, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_CUSTOM_GRAVITY, .8);


set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 67);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 18);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6.5); // 6.5
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .02);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 0.01);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, -10);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);


set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_DATTACK,4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK,4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK,4, HG_WINDOW, 8);
set_hitbox_value(AT_DATTACK,4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK,4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK,4, HG_HITBOX_X, 27);
set_hitbox_value(AT_DATTACK,4, HG_WIDTH, 84);
set_hitbox_value(AT_DATTACK,4, HG_HEIGHT, 36);
set_hitbox_value(AT_DATTACK,4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK,4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK,4, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK,4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DATTACK,4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DATTACK,4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK,4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK,4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK,4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK,4, HG_HITBOX_GROUP, -1);