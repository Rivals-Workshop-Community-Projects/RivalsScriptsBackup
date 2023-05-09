set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 14);

//Active Sweetspot
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//Active Sourspot
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("HitHard2"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("HitLight2"));