// STONE EDGE
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1); //Charging
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1); //Pulling rocks out
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1); //Sending rocks
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1); //Holding
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1); //Holding again
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_end"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG, 5);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 90);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 90);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, true);

