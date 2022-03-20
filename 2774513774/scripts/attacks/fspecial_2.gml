set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -96);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));