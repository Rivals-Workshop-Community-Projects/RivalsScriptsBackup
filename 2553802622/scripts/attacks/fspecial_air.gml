set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("aerialfspecial"));
// set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("aerialfspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("aerialfspecial_hurt"));

//Shoot Arrow
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("chainshot"));

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Pick your path
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//Pull in
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 17);

//Go into
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_TYPE, 2);    
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);

//Jump out off
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_VSPEED, -8);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("grapple"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("arrow_hit"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("arrow_hit"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, arrowhitFX);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, arrowhitwallFX);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, true);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));