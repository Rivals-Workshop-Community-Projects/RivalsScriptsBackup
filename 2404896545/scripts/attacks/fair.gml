set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//Hit 1
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("one1"));

//Hit 2
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("one1"));

//Hit 3
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, sound_get("one1"));

//Hit 4
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, sound_get("one4"));

//End
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_FAIR,4);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 10);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 53);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 53);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 5);