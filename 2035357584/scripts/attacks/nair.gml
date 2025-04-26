set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//nair start
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

//nair active
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//nair end
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 6);

//hit1 right
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//hit1 left
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -18);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 51);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//hit2 right
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

//hit2 left
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -18);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 51);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 135);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

//hit3 right
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);

//hit3 left
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -18);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 51);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 135);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);