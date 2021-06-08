set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Startup 2
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part3"));

//Active
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_bite"));


//Recovery
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

//Right Part
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2); 
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 34);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 115);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("bhit_medium_2"));

//Left Part
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2); 
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 26);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("bhit_medium_2"));

//2nd Hit
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2); 
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("bhit_medium_3"));
