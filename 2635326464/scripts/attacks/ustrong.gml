set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("BananaThrow"));

set_num_hitboxes(AT_USTRONG,1);

set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Bob-omb");

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 900);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bob_omb"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("bob_omb_hurt"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -18);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_FRICTION, 1.5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("bob_omb_hurt"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);

//Explosion

set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Explosion");

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 140);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -59);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 141);

set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC_ADD, "Launch distance has 3 charge levels. Hspeed values are 4, 5 and 6, while Vspeed values are -16, -17 and -18. Angle flipper changes to 3 after bouncing (sending away from the explosion).");
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)));