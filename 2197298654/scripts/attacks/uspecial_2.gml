set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("nair"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, sound_get("nair"));

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, 35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 240);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, soundwave_effect);

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, 35);