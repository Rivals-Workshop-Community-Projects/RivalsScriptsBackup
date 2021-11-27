set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//start/charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("chains"));

//spikeup
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);

//atk1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));

//atk2
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);

//atk3
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);

//end
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//end2
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

//chain
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX, sound_get("elli_chains"));

//true end
set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);


set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("hit_spikes"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("hit_spikes"));
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("shoot_wambam"));

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("hit_spikes"));
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("hit_spikes"));
set_hitbox_value(AT_DSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("shoot_wambam"));

//chain
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("slash"));

//chain
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, sound_get("slash"));





















