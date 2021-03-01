set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("one3"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 2);

//Going forwards
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("one4"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 19);

//Jump on hit
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("two2"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

