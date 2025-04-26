set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//startup 1
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8)
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_delta_swipe4"))


//startup 2
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);


//active
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);

//endlag
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hfx_small)