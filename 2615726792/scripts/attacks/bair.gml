var at = AT_BAIR

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("bair"));
set_attack_value(at, AG_NUM_WINDOWS, 3);
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 6);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("whoosh"));

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 15);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 7);

set_num_hitboxes(at, 1);
var ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 3);
set_hitbox_value(at, ig, HG_HITBOX_X, -32);
set_hitbox_value(at, ig, HG_HITBOX_Y, -15);
set_hitbox_value(at, ig, HG_WIDTH, 55);
set_hitbox_value(at, ig, HG_HEIGHT, 41);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_ANGLE, 140);
set_hitbox_value(at, ig, HG_DAMAGE, 8);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 1);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("bigpunch"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 6);