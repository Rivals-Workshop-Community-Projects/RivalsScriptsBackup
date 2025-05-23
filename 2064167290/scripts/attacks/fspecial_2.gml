//FSPECIAL_2
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("dairbounce"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dairbounce_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
/*
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 3);
*/

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 2);

// start
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("bounce"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);



set_num_hitboxes(AT_FSPECIAL_2, 0);


set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW,2 )
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME,5); 
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW,2 )
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME,6); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));