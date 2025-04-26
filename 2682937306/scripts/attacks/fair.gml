
// ANCIENTPOWER F

set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR, 1);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_AIR_FRICTION, -1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, rock_break);