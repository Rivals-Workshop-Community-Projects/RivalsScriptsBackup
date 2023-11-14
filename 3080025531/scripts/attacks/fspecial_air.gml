set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

// READY
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//SPIN 1
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 5);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, sfx_swinglight2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 7);

//SPIN 2 (loopable in attack_update)
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_INVINCIBILITY, 2);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//Final
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, sfx_swingheavy2);

// End
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_FSPECIAL_AIR, 7);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 88);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 88);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);