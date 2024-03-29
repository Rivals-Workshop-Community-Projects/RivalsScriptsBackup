set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 36);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial2_proj"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("fspecial2_proj_mask"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);




/* old
set_num_hitboxes(AT_FSPECIAL_2, 6);

//bottom
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 340);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 6);

//top
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 340);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 6);

//tippy top top
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 340);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 6);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 340);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_waterhit_strong"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 6);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 105);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, 150);

set_hitbox_value(AT_FSPECIAL_2, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, 135);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL_2, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, 150);
