set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL, 6);

//Regular Hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, hfx_wind_small);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hfx_wind_small);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj_travel"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 16);

//Homing Hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);

//Multihit Trigger
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, hfx_wind_small);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hfx_wind_small);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);

//Multihit Launcher
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, hfx_wind_huge);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, hfx_wind_huge);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);

//Initial Grab
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, dspecial_vfx);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 0);

//Detection Window
set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 0);