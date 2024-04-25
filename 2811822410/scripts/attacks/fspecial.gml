curr_attack = AT_FSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
//set_attack_value(curr_attack, AG_AIR_SPRITE, sprite_get("aerial_nspecial"));
//set_attack_value(curr_attack, AG_HURTBOX_AIR_SPRITE, sprite_get("aerial_nspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, .33);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 35);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 128);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 32);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -32);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 32);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .1); 
set_hitbox_value(curr_attack, 1, HG_ANGLE, 45);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 4); 
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5); 
//set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, sprite_get("empty"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);