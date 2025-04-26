set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 14);

//pull out
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 4);

//start hold
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//attack 1
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("bell"));
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, -4);

//attack 1 hold
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//attack 2 
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_SFX, sound_get("bell"));

//attack 2 hold
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 12);

//attack 3 
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_SFX, sound_get("bell"));

//attack 3 hold
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 15);

//miss
//miss attack 4
set_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_UTILT, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_SFX, sound_get("bell"));

//miss attack 4 hold
set_window_value(AT_UTILT, 10, AG_WINDOW_LENGTH, 22);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAME_START, 19);

//miss return
set_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAME_START, 20);

//hit
//hit attack 4
set_window_value(AT_UTILT, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_UTILT, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_SFX, sound_get("bell"));

//hit attack 4 hold
set_window_value(AT_UTILT, 13, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 13, AG_WINDOW_ANIM_FRAME_START, 27);

//hit return
set_window_value(AT_UTILT, 14, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 14, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_UTILT, 5);

//attack 1
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, 0.4);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);

//attack 2
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 290);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);

//attack 3
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 76);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 1);

//miss attack 4
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 9);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 4, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_UTILT, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 30);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_THROWS_ROCK, 0);

//hit attack 4
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 12);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 5, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_UTILT, 5, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_THROWS_ROCK, 0);

//munophone
set_hitbox_value(AT_UTILT, 4, HG_MUNO_HITBOX_NAME, "Combo Miss");
set_hitbox_value(AT_UTILT, 5, HG_MUNO_HITBOX_NAME, "Combo Hit");
