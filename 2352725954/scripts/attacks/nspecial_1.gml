set_attack_value(AT_NSPECIAL_1, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_1, AG_SPRITE, sprite_get("nspecial_1"));
set_attack_value(AT_NSPECIAL_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_1_hurt"));

set_window_value(AT_NSPECIAL_1, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL_1, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_SFX, sound_get("sfx_tornado"));
set_window_value(AT_NSPECIAL_1, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NSPECIAL_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL_1, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL_1, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_1, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NSPECIAL_1, 1);


set_hitbox_value(AT_NSPECIAL_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_LIFETIME, 55);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_HEIGHT, 77);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_BASE_KNOCKBACK, 14.5);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_HIT_SFX, sound_get("sfx_swordheavy"));
set_hitbox_value(AT_NSPECIAL_1, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspec1_proj"));
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_GRAVITY, 0.015);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_GROUND_FRICTION, -0.12);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_AIR_FRICTION, -0.12);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 303);