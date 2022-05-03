set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sound_get("slash 3"));
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 5);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 302);
//set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 7, HG_WINDOW, 10);
set_hitbox_value(AT_FTILT, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTILT, 7, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 7, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_SPRITE, sprite_get("shockwave2"));
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("star_big_collision"));
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FTILT, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FTILT, 7, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FTILT, 7, HG_IGNORES_PROJECTILES, true);