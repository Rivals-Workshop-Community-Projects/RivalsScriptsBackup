set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NSPECIAL, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 43);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 0); 

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("jarhurt"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("jarhurt"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.11);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);


set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0); 
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 1);  
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

