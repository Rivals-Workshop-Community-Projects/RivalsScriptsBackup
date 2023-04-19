set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("rockfspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 13);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("rockfspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("rockfspecial_hurt"));

//start up
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

//active
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

//whiff
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 1);

//transition to attacks
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 7);

//active 2
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//recovery 4
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 20);

//start up 5
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 7);

//active 5
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 24);

//recovery 5
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 25);

//start up 6
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_SFX_FRAME, 5);

//active 6
set_window_value(AT_FSPECIAL_2, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 11, AG_WINDOW_ANIM_FRAME_START, 29);

set_window_value(AT_FSPECIAL_2, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 12, AG_WINDOW_ANIM_FRAME_START, 30);

//recovery 6
set_window_value(AT_FSPECIAL_2, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 13, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 13, AG_WINDOW_ANIM_FRAME_START, 31);

set_num_hitboxes(AT_FSPECIAL_2, 6);

//set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 5);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("sf_hit1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, sound_get("sf_hit1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, sound_get("sf_hit1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, sound_get("sf_hit5"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.76);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, sound_get("sf_hit3"));