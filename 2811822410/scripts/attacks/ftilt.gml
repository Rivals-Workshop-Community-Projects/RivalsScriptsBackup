curr_attack = AT_FTILT;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 13);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 11);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(curr_attack, 2);


set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -35);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 58);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 70);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 40);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 8);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  45);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 24); //12
set_hitbox_value(curr_attack, 2, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 6);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -35);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 55);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 2, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 45);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
