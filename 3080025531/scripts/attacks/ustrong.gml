set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Windup
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

// Slash1
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Windup
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 4);

// Slash2
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, -3);

// Ending
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 5);

// Swing 1
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -94);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sfx_fe_hit3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

// Swing1 - bubble
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

// Swing1 - bubble 2: the squeakwal
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 20);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 120);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);

// Swing1 - Sword
//set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
//set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
//set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -30);
//set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -70);
//set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
//set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 50);
//set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
//set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
//set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 135);
//set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.6);
//set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
//set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sfx_fe_hit1);
//set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);


// Swing 2 - Sweet
//set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
//set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
//set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
//set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -110);
//set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 70);
//set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 30);
//set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
//set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
//set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.9);
//set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.9);
//set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sfx_aa_stab);
//set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);
//

// Swing2 - Trail
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sfx_fe_hit2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);

// Swing2 - Sword
//set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 5);
//set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
//set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, -36);
//set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -78);
//set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 30);
//set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 60);
//set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
//set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 4);
//set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 135);
//set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0.5);
//set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, sfx_fe_hit2);
//set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 2);

// Swing2 - Sword2
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -46);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 22);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sfx_fe_hit2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 2);