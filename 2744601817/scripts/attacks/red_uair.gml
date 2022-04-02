set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY	, 1);

//startup
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 2);//10
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//startup 2
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("rdair"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 18);//10
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -11);


//Active
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 8);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_VSPEED, 8);


//Grounded
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 4);//10
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_EXTRA_2, 2);

set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -8*2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -13*2);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 36*2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 17*2);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));