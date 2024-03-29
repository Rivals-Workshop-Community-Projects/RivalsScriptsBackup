set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);


set_num_hitboxes(AT_NSPECIAL_AIR, 0);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_lv1_angle"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_lv2_angle"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_lv3_angle"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 14);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DRIFT_MULTIPLIER, 1);



