set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

var ig = 1;

//Forward Tilt Start
set_window_value(AT_FTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, ig, AG_WINDOW_ANIM_FRAMES, 3);

ig++;

//Forward Tilt Hit
set_window_value(AT_FTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FTILT, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Forward Tilt End
set_window_value(AT_FTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, ig, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTILT, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

set_num_hitboxes(AT_FTILT, 1);
ig = 1;

set_hitbox_value(AT_FTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, ig, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, ig, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, ig, HG_HITBOX_X, 19);
set_hitbox_value(AT_FTILT, ig, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTILT, ig, HG_WIDTH, 51);
set_hitbox_value(AT_FTILT, ig, HG_HEIGHT, 78);
set_hitbox_value(AT_FTILT, ig, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, ig, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, ig, HG_ANGLE, 45); // changed to 45 from 20 in light of angle flipper removal
set_hitbox_value(AT_FTILT, ig, HG_BASE_KNOCKBACK, 7); // reduced bkb from 8 to 5
set_hitbox_value(AT_FTILT, ig, HG_KNOCKBACK_SCALING, .5); // reduced kbs from .6 to .3
set_hitbox_value(AT_FTILT, ig, HG_BASE_HITPAUSE, 8); // increased to 8 from 6
set_hitbox_value(AT_FTILT, ig, HG_HITPAUSE_SCALING, .4); // increased to .4 from .2
set_hitbox_value(AT_FTILT, ig, HG_EXTRA_HITPAUSE, 2); // added extra hp to facilitate frame advantage on hit
set_hitbox_value(AT_FTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, ig, HG_ANGLE_FLIPPER, 0); // changed to flipper 0

/*
set_hitbox_value(AT_FTILT, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, ig, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, ig, HG_LIFETIME, 26);
set_hitbox_value(AT_FTILT, ig, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, ig, HG_WIDTH, 32);
set_hitbox_value(AT_FTILT, ig, HG_HEIGHT, 86);
set_hitbox_value(AT_FTILT, ig, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, ig, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT, ig, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, ig, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_FTILT, ig, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_HSPEED, 0);
//Custom
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, ig, HG_PROJECTILE_IS_TRANSCENDENT, true);
*/