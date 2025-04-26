set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("pizzahead_uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("pizzahead_uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_uspecial_hurt"));

//Jump into
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 51);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);

//Invisible
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("sfx_lapexit"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);

//Get out
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, sound_get("pizzafacejump"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0);

//Freeze
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);

//Continue
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, 0);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);