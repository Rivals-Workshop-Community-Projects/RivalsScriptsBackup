set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_red"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);

//startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);








set_num_hitboxes(AT_NSPECIAL_2, 0);


// BLACK
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 55);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("cd_black"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 2.8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_black);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0.04);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

// BLUE
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME,70);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_swish_medium"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("cd_blue"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_blue);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);


//  GREEN
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME,60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 100);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("cd_green"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_green);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);


// YELLOW
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_SFX, sound_get("slash"));
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("cd_yellow"));
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_yellow);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);



// ORANGE
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 95);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("cd_orange"));
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_GRAVITY, -0.2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_orange);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.7);



// RED
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("cd_red"));
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_red);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITSTUN_MULTIPLIER, 0.7);

// PURPLE
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_WINDOW,2 )
set_hitbox_value(AT_NSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_LIFETIME,69);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HIT_SFX, sound_get("wait2"));
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_SPRITE, sprite_get("cd_purple"));
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_DESTROY_EFFECT, cdestroy_purple);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);