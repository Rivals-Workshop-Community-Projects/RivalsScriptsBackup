set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT, 4);

//early hitbox
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 2); //cannot flinch

//main hitbox
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -105);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 82);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_may_whip2"));
// set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_UTILT, 2, HG_THROWS_ROCK, 1);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -105);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 7);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -105);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 7);

//final hitbox
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -105); 
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 92);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 58);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 55);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 5, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_may_whip1"));
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTILT, 5, HG_HIT_LOCKOUT, 7);