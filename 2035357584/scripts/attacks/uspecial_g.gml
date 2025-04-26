set_attack_value(AT_USPECIAL_G, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_G, AG_SPRITE, sprite_get("uspecialg"));
set_attack_value(AT_USPECIAL_G, AG_AIR_SPRITE, sprite_get("uspecialgair"));
set_attack_value(AT_USPECIAL_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_G, AG_HURTBOX_SPRITE, sprite_get("uspecialg_hurt"));
set_attack_value(AT_USPECIAL_G, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecialgair_hurt"));

set_window_value(AT_USPECIAL_G, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_G, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//throw
set_window_value(AT_USPECIAL_G, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_G, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_G, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_G, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//recover
set_window_value(AT_USPECIAL_G, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_G, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_G, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USPECIAL_G, 1);

set_hitbox_value(AT_USPECIAL_G, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_G, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_USPECIAL_G, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_G, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_USPECIAL_G, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL_G, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_G, 1, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL_G, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL_G, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_G, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_G, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_SPRITE, sprite_get("grenade_spin"));
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_GROUND_FRICTION, 10);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_G, 1, HG_EXTENDED_PARRY_STUN, 1);