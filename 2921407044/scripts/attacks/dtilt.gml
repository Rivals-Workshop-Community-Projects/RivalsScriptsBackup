set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, 87, "Reference Ori Dtilt"); 

//Window 1 - Frame 0 - 1 - Start Up no Hitbox no movement
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 7);

//Widnow 2 - Frame 2 - Initial kick - Movement + light hitbox
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 2);

//Widnow 3 - Frame 2 - Between Hitboxes
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 7);

//Frame 12 hitbox active
//Window 4 - Frame 3 - Hitbox Active
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 5);

//Window 5 - Frames 4 - 6 - End Kick
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//Window 6 - Frames 7 - Sliding
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Window 7 - Frame 8 - Getting up
set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 7, AG_WINDOW_HSPEED_TYPE, 1); // Linear
set_window_value(AT_DTILT, 7, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//Hitbox Value
set_num_hitboxes(AT_DTILT,2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, 81, "Scoop");
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, get_window_value(AT_DTILT,2,AG_WINDOW_LENGTH));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 135);
set_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER, 0); // From Ori Dtilt
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1); // From Ori Dtilt
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 2); // From Ori Dtilt
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, hfx_feather);
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, hp_feather);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, 81, "Main");
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, get_window_value(AT_DTILT,4,AG_WINDOW_LENGTH));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70); // Ori Dtilt
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, hfx_feather);
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, hp_feather);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
