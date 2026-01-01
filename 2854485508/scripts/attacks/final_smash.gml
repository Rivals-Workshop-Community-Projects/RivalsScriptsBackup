set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_HAS_LANDING_LAG, 1);
set_attack_value(49, AG_LANDING_LAG, prat_land_time);
set_attack_value(49, AG_OFF_LEDGE, 1);

//Startup (Getting on top of the gate)
set_window_value(49, 1, AG_WINDOW_LENGTH, 10);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(49, 2, AG_WINDOW_LENGTH, 30);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 2);

//Active (Spawning the dudes)
set_window_value(49, 3, AG_WINDOW_LENGTH, 120);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(49, 4, AG_WINDOW_LENGTH, 8);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(49, 5, AG_WINDOW_TYPE, 7);
set_window_value(49, 5, AG_WINDOW_LENGTH, 20);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(49, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(49, 5, AG_WINDOW_VSPEED, -6);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(49, 6, AG_WINDOW_LENGTH, 45);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(49, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, prat_fall_accel);

set_num_hitboxes(49, 0);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Youkai");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 180);
set_hitbox_value(49, 1, HG_PRIORITY, 4);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 35);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_DISTANCE, -1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 10);