set_attack_value(AT_TRICK_2_AIR, AG_CATEGORY, 2);
set_attack_value(AT_TRICK_2_AIR, AG_SPRITE, sprite_get("tair"));
set_attack_value(AT_TRICK_2_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TRICK_2_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_TRICK_2_AIR, AG_HURTBOX_SPRITE, asset_get("tair_hurt"));


set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_TRICK_2_AIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_VSPEED, 10);
set_window_value(AT_TRICK_2_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_TRICK_2_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TRICK_2_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TRICK_2_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_TRICK_2_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_TRICK_2_AIR, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TRICK_2_AIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TRICK_2_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 21);

set_num_hitboxes(AT_TRICK_2_AIR, 5);

//Dive (Air Hit)
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HITBOX_Y, 30);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_ANGLE, -40);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_TRICK_2_AIR, 1, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_ANGLE, -40);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_TRICK_2_AIR, 2, HG_GROUNDEDNESS, 2);

//Dive (GroundHit)
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HITBOX_Y, 30);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 3, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 4, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HITBOX_X, 46);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_WIDTH, 130);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HEIGHT, 66);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK_2_AIR, 5, HG_HITBOX_GROUP, 1);