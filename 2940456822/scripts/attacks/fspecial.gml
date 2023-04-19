curr_attack = AT_FSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(curr_attack, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(curr_attack, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 16);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 12);

//Fire Projectile
set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 30);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 16);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);


set_num_hitboxes(curr_attack, 1);

//Sour
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 24);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 36);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 36);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 60);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 30);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_SPRITE, sprite_get("mic"));
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 12);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 12);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -24);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(curr_attack, 2, HG_HIT_LOCKOUT, 8);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 2, HG_IGNORES_PROJECTILES, true);
