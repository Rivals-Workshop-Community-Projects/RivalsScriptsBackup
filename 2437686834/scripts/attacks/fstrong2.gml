set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 1);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong2"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);


set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1)
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_FSTRONG_2,1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

//Pooka
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 200);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 42);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE_FLIPPER, 5);