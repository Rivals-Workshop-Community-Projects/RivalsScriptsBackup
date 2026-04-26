set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_fj_horse_neigh"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 9);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_land"));

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);