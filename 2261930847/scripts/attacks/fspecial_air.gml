set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial2_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial2_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -8);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_FSPECIAL_AIR, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial2_air_proj"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("fspecial2_air_proj_mask"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


/* old hitboxes
set_num_hitboxes(AT_FSPECIAL_AIR, 7);

//bottom
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 6);

//top
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 325);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 6);

//tippy top
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -110);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 325);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 6);

//2nd wave top
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 74);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 6);

//3rd wave
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 95);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_waterhit_strong"));
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 150);

//last
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 115);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_waterhit_strong"));
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 150);
