set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("tent3"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);


set_num_hitboxes(AT_DSTRONG,3);

/*
some values are commented out that ended up not being used: parent hitbox and hitbox group
I organized all the hitbox size/shape stuff at the bottom of each hitbox
the final line is what makes it mask, everything right above it is what would make it the rectangle hitbox again
*/

//set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .19);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
/*
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
*/
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("dstrong_proj_1mask"));

//set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_1"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .19);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
/*
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 94);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
*/
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("dstrong_proj_1mask"));


//set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_1"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .19);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
/*
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 94);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
*/
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("dstrong_proj_1mask"));