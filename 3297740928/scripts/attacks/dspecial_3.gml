set_attack_value(AT_DSPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_3, AG_SPRITE, sprite_get("dspecial3"));
set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_3, AG_AIR_SPRITE, sprite_get("dspecial3"));
set_attack_value(AT_DSPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("dspecial3_hurt"));
set_attack_value(AT_DSPECIAL_3, AG_USES_CUSTOM_GRAVITY, true);

//startup
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_SFX, sound_get("sfx_absorbingvortex"));
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//hold
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.15);

//endlag
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

set_num_hitboxes(AT_DSPECIAL_3, 1);

set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_3, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_TECHABLE, 1);