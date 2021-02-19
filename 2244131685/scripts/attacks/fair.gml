set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_CATEGORY, 1);

// Startup FAIR 1
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);

// Active Frames FAIR
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Endlag FAIR 1
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME, 4);

// Startup FAIR 2
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 7);

// Active Frames FAIR 2
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

// Endlag FAIR 2
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_FRAME, 4);

// Startup FAIR 3
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);

// Active Frames FAIR 3
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 8, AG_WINDOW_HSPEED, -0.50);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 9);

// Endlag FAIR 3
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 7);

// Hit 1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);

// Hit 2
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 1);