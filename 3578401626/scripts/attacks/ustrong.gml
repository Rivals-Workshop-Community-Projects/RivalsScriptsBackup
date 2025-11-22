set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("box_break"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 5);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 86);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -180);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sfx_hit6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 43);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sfx_hit4);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -98);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -132);

//it good for your spleen
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 120);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("jitb_lid"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_AIR_FRICTION, 0.05);
