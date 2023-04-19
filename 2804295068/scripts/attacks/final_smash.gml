set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 7);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));


set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 1);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 30);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 30);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 30);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 60);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 6);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 6, AG_WINDOW_SFX, asset_get ("sfx_bubblepop"));

set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 24);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 60);
set_hitbox_value(49, 1, HG_WIDTH, 24);
set_hitbox_value(49, 1, HG_HEIGHT, 24);
set_hitbox_value(49, 1, HG_PRIORITY, 1);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 75);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("splat3"));
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 60);
set_hitbox_value(49, 2, HG_WIDTH, 24);
set_hitbox_value(49, 2, HG_HEIGHT, 24);
set_hitbox_value(49, 2, HG_PRIORITY, 1);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 75);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(49, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_WINDOW, 6);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(49, 3, HG_LIFETIME, 60);
set_hitbox_value(49, 3, HG_HITBOX_X, -4);
set_hitbox_value(49, 3, HG_HITBOX_Y, -27);
set_hitbox_value(49, 3, HG_WIDTH, 60);
set_hitbox_value(49, 3, HG_HEIGHT, 60);
set_hitbox_value(49, 3, HG_PRIORITY, 3);
set_hitbox_value(49, 3, HG_DAMAGE, 15);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, sprite_get("pea_big"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);