// DAIR BOUNCE
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dairbounce"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dairbounce_hurt"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 11);

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2)


set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("bounce"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
/*
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
*/
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -5.3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_1, 1);


set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1 )
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));




