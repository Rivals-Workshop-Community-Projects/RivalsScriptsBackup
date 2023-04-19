set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 90);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("gravitypush"));

//endlag
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 600);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("jab_uspecial"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);