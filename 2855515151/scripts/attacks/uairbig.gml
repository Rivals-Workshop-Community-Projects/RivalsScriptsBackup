set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("uairbig"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("uairbig_hurt"));
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 4);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_3, 3);


set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -135);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 71);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, hfx_spark);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
//HITBOX 2
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -95);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 34);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 110);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//HITBOX 3

set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, -38);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -94);
set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 34);
set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 2);
/*
//HITBOX 4
set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 9);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 86);
set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 95);
set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, 2);
*/