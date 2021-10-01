//Jab and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_NAIR with AT_NAIR

set_attack_value(AT_NAIR, AG_CATEGORY, 2);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NAIR, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("plop"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_NAIR, 4);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("ssl_shadowball_small"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_HSPEED, nspec_speed);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("shadow_hit"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, explode);


set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 24);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("ssl_shadowball_med"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_HSPEED, nspec_speed);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("zap"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, explode);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 34);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("ssl_shadowball_big"));
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_HSPEED, nspec_speed);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("zap"));
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, explode);


set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 44);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("ssl_shadowball_huge"));
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_HSPEED, nspec_speed);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("zap"));
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, explode);