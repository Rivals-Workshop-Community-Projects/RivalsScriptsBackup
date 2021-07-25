set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
// set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("aerialfspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Shoot Arrow
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("chainshot"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//Pick your path
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//Pull in
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);

//Go into
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);

//Jump out off
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, -8);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("grapple"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("arrow_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("arrow_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, arrowhitFX);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, arrowhitwallFX);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));