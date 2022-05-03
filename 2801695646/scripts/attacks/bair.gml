set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9); //19
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);


// Antic
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1); // DELETEME; Adding vspeed doesn't allow fastfall. Unsatisfying.
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);

// Attack
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Linger
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// Endlag
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 11); //16
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_BAIR, 4);


// Initial - Sweetspot
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130); //140
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.2); //0.05
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 305 );
//set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

// Initial - Sourspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 38);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 130); //140
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.2); //0.05
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.6);
//set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 302);
//set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

// Lingering - Sweetspot
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 17);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.2); //0.05
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 305);
//set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 1);

// Lingering - Sourspot
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 17);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 34);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.1); //0.05
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 302);
//set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 1);
