
set_attack_value(AT_TRICK_AIR, AG_CATEGORY, 1);
set_attack_value(AT_TRICK_AIR, AG_SPRITE, sprite_get("tair"));
set_attack_value(AT_TRICK_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TRICK_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_TRICK_AIR, AG_HURTBOX_SPRITE, sprite_get("tair_hurt"));


set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TRICK_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_TRICK_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TRICK_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TRICK_AIR, 2, AG_WINDOW_ANIM_FRAME_START,5);
set_window_value(AT_TRICK_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TRICK_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_TRICK_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_TRICK_AIR, 7);

//Initial Sourspot
set_hitbox_value(AT_TRICK_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 1, HG_HITBOX_X, 75);
set_hitbox_value(AT_TRICK_AIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_TRICK_AIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_TRICK_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TRICK_AIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_TRICK_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_TRICK_AIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TRICK_AIR, 1, HG_HITBOX_GROUP, 0);

//Initial Sweetspot
set_hitbox_value(AT_TRICK_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 2, HG_HITBOX_X, 125);
set_hitbox_value(AT_TRICK_AIR, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TRICK_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_TRICK_AIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_TRICK_AIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_TRICK_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TRICK_AIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_TRICK_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_TRICK_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_TRICK_AIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_TRICK_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK_AIR, 2, HG_HITBOX_GROUP, 0);

//Middle Sourspot
set_hitbox_value(AT_TRICK_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_TRICK_AIR, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_TRICK_AIR, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_TRICK_AIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_TRICK_AIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_TRICK_AIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_TRICK_AIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_TRICK_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_TRICK_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_AIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TRICK_AIR, 3, HG_HITBOX_GROUP, 0);

//Middle Sweetspot
set_hitbox_value(AT_TRICK_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_TRICK_AIR, 4, HG_HITBOX_X, 125);
set_hitbox_value(AT_TRICK_AIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TRICK_AIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_TRICK_AIR, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_TRICK_AIR, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_TRICK_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_TRICK_AIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_TRICK_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_TRICK_AIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_TRICK_AIR, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_TRICK_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK_AIR, 4, HG_HITBOX_GROUP, 0);

//Late Sourspot
set_hitbox_value(AT_TRICK_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TRICK_AIR, 5, HG_HITBOX_X, 68);
set_hitbox_value(AT_TRICK_AIR, 5, HG_HITBOX_Y, 30);
set_hitbox_value(AT_TRICK_AIR, 5, HG_WIDTH, 100);
set_hitbox_value(AT_TRICK_AIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_TRICK_AIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_AIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_TRICK_AIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_TRICK_AIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_TRICK_AIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_AIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TRICK_AIR, 5, HG_HITBOX_GROUP, 0);

//Middle Sweetspot
set_hitbox_value(AT_TRICK_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_AIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK_AIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TRICK_AIR, 6, HG_HITBOX_X, 115);
set_hitbox_value(AT_TRICK_AIR, 6, HG_HITBOX_Y, 25);
set_hitbox_value(AT_TRICK_AIR, 6, HG_WIDTH, 55);
set_hitbox_value(AT_TRICK_AIR, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_TRICK_AIR, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_TRICK_AIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_TRICK_AIR, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_TRICK_AIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_AIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_AIR, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_TRICK_AIR, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_TRICK_AIR, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_TRICK_AIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK_AIR, 6, HG_HITBOX_GROUP, 0);
