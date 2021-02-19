set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// Startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

// Spin Frames
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 17);

// Sword Swipe
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 7);

// Endlag
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 5);

// Front Hit 1
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 110);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);

// Back Hit 1
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -46);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 1);

// Front Hit 2
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 1);

// Back Hit 2
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, -52);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 86);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM, 1);

// Big Swipe
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 11);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 56);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.40);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_PARTICLE_NUM, 1);
