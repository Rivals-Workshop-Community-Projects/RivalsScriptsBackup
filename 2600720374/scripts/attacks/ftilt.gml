//set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_owl2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("orb"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
//set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));



/*
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("orb"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
*/

