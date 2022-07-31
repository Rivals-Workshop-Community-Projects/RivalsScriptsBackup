set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_metal_hit_weak"));

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, -12);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
//set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED, 20);

set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 18);
//set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("sfx_drill_land"));
/*set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 1);*/


set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));