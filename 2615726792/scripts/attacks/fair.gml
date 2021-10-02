var at = AT_FAIR;

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("fair"));
set_attack_value(at, AG_NUM_WINDOWS, 4);
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 6);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 15);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, -.2);
set_window_value(at, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_HSPEED, 1);
set_window_value(at, ig, AG_WINDOW_SFX_FRAME, 2);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 3);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(at, ig, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(at, ig, AG_WINDOW_HSPEED, 30);
set_window_value(at, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, 0);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("whoosh"));

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 9);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(at, ig, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(at, ig, AG_WINDOW_HSPEED, 6);
set_window_value(at, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, 0);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 8);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 5);

ig++;

set_num_hitboxes(at, 1);
var ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 4);
set_hitbox_value(at, ig, HG_HITBOX_X, 34);
set_hitbox_value(at, ig, HG_HITBOX_Y, -28);
set_hitbox_value(at, ig, HG_WIDTH, 76);
set_hitbox_value(at, ig, HG_HEIGHT, 57);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 8);
set_hitbox_value(at, ig, HG_ANGLE, 70);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);