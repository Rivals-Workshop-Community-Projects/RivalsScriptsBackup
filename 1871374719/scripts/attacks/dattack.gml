set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// Charge Up
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("sfx_boost"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

// Hold
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 0);

// Dash
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("sfx_ultraswing"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, -0.13);

// Charge Down
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);


set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 57);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
//set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("sfx_celebrate"));
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_EXTENDED_PARRY_STUN, 1);


set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_dash_helmet"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, sprite_get("proj_dash_helmet"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 500);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_HSPEED, -1.2);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("sfx_hit2"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
