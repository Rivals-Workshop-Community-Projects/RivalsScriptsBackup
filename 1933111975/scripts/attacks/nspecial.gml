set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, spr_nspecial);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
/*set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);*/

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL, 1);

//Melee

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.15);
set_hitbox_value(AT_NSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

//Single

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 35);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));

//Double

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 35);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);

//Single Soak

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);

//Double Soak

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);