set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_MISC, "Sweetspot can spike at ledge. It funi")
// startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);

// start movement
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);

/// active
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

/// endlag
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//HITBOXES----------------------------------------------------------------------
set_num_hitboxes(AT_FTILT, 2);

// Normal Hit
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Hitbox 1");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 0);

// Sweetspot Bonk
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Bonk Sweetspot");
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_MISC, "It make funny bonk sound.
Use to end carreers.");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 24);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 300);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("bonk"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 0);