set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial"));

//cargo
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 90);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 12);

//land
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//endlag
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);

//BALLIN
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 24);

//cancelled mid air
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL_2, 3);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Landing Throw");
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8); 
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10); 
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.9); 
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Ballin'");
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 280);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Cargo Throw");
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 4); 
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SDI_MULTIPLIER, 0.5);