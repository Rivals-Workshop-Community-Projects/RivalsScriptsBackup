set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecialair"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecialair_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, true);

var win_num = 1;

//Startup
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GRAVITY, .15);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_SFX, sound_get("tee_dash"));
win_num++;

//Active
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HSPEED, 14 + (has_rune("H") * 8));
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_VSPEED, 5);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GRAVITY, 0);

win_num++;

//Endlag
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.2);
set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);

set_window_value(AT_DSPECIAL, win_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);



//zap
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, HFX_ABS_ZAP_SMALL);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, HFX_ABS_ZAP_SMALL);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

//crystal break
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_oly_dspecial_armorhit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, HFX_OLY_CRYSTALIZE_END);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, HFX_OLY_CRYSTALIZE_END);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);