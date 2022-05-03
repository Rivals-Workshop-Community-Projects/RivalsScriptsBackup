set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 69);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, med_effect);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hammer_med"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -11);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 137);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, med_effect);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("hammer_med"));

//set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
//set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
//set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 34);
//set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 46);
//set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 32);
//set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 30);
//set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
//set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
//set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 275);
//set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
//set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, spike_effect);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
//set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("hammer_slam"));