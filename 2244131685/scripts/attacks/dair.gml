set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// Sword Throw
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

// Throw Endlag/Down Startup
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Drop Sweetspot Window
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);

// Drop Sourspot Window
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);

// Endlag
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3);

// Thrown sword
var throw_win_length = get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) + 1;
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, throw_win_length);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, sprite_get("dair_proj_mask"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, 3 / throw_win_length);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

// Drop Hitbox
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 1);

// Drop Hitbox (Late)
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 14);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 3, HG_HIT_PARTICLE_NUM, 1);
