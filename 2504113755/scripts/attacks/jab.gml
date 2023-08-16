set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 6);


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag
//set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 10);



set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_JAB, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, plasma_line );
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 105);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, plasma_x );
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
