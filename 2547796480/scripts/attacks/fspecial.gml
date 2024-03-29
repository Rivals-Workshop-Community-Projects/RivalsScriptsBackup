set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpair"));

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));

set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 20);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -7.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 150);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("hamburger2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, timeS);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("knifeS"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 99);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 600);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 1200);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 600);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 1200);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, true);