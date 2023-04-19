curr_attack = AT_FSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 18);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 900);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 6);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("boomerang"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 36);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 24);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -16);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 45);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 1, HG_IGNORES_PROJECTILES, true);
