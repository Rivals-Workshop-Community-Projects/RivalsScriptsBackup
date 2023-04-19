set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, string(uspecial_soft_armor + 2) + " Soft Armor during descent");

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_dedede_uspecial_rise"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -18);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_USPECIAL_2, 2, AG_MUNO_WINDOW_INVUL, -2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 999);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 45);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_USPECIAL_2, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Rising");
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Falling");
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 64);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Landing 1");
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 128);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Landing 2");
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 88);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_LOCKOUT, 12);

set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Stars");
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 32);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("star"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_LOCKOUT, 4);
