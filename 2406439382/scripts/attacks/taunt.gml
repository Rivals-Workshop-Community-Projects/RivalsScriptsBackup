set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 5);

// first 
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("payday"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

// loop
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("payday"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);

// endlag
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);


set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 12);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 12);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, shine_effect);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_coin_collect"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("gold"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, shine_effect);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_FRICTION, 0.05);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);