set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_frog_dstrong"));

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("SWE2"));

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 6);

set_num_hitboxes(AT_FAIR,3);

//Sourspot 
set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hit4"));


//Sweetspot
set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 115);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 3, HG_HIT_LOCKOUT, 10);