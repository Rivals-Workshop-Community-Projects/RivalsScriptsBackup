curr_attack = AT_FSTRONG;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(curr_attack, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_pom_yell1"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 1);

//Physical
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 11);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  45);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 10);

//Projectiles 
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ANIM_SPEED, 3 / 20);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 20);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 6);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_SPRITE, sprite_get("fstrong_sound"));
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 64);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 64);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .7); 
set_hitbox_value(curr_attack, 2, HG_ANGLE, 45);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 2, HG_EXTRA_HITPAUSE, 0); 
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 8); 
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .6); 
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, .5); 
set_hitbox_value(curr_attack, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
