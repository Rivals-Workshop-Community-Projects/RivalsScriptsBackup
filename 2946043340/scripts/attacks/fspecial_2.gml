set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL_2, 4);

//Initial Grab
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, dspecial_vfx);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 0);

//Sweetspot
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, hfx_wind_huge);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);

//Sourspot 1
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, hfx_wind_large);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);

//Sourspot 2
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 68);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, hfx_wind_large);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 1);


