//Tri-shot. Internal move ID: 30

set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("ice_beam"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DSPECIAL_2, 3);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("trishot_proj_straight"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("trishot_proj_straight"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 10);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("trishot_proj_up"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("trishot_proj_up"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_VSPEED, -10)

set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("trishot_proj_down"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, sprite_get("trishot_proj_down"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_VSPEED, 10)
