set_attack_value(AT_FTILT, AG_CATEGORY, 0);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, 87, "Reference Clarien Ftilt"); 

// Window 1 - Startup - Frames 0 - 1
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);

// Window 2 - frame 2 - Moving forward
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 6);

// Window 3 - frame 3 - Active
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// Window 4 - Endlag - frames 4 - 6 
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);

//Hitbox 1 - end part of the swing
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));