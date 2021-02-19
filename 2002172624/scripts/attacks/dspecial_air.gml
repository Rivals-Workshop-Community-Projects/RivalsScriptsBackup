set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);

//startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);

//plop
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("Briggs_Blop"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);

//endlag
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_DSPECIAL_AIR, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 37);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 2);


set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3700);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 122);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 104);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 0);


set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("catrun"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, sprite_get("catrun_hurt"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTENDED_PARRY_STUN, true);

