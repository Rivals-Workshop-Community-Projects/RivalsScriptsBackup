set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 41);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 31);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_num_hitboxes(AT_USPECIAL, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 25);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 29);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 31);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 33);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH,  74);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 74);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);