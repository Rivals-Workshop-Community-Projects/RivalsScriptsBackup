set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 5);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 0);
//set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW,2 )
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW,2 )
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW,2 )
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 5, HG_HIT_LOCKOUT, 3);
//set_hitbox_value(AT_NAIR, 5, HG_TECHABLE, 1);





