set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("wft_uspecial"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("wft_uspecial_end"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_USPECIAL, 3);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);

//projectile
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("hoop"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("hoop"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));