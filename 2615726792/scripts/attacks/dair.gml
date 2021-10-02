var at = AT_DAIR

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("dair"));
set_attack_value(at, AG_NUM_WINDOWS, 3);
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 4);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 9);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, -1);
set_window_value(at, ig, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("whoosh"));

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 10);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(at, 1);
var ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 6);
set_hitbox_value(at, ig, HG_HITBOX_X, 16);
set_hitbox_value(at, ig, HG_HITBOX_Y, -13);
set_hitbox_value(at, ig, HG_WIDTH, 40);
set_hitbox_value(at, ig, HG_HEIGHT, 60);
set_hitbox_value(at, ig, HG_SHAPE, 1);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 7);
set_hitbox_value(at, ig, HG_ANGLE, 315);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .2); // Reduced from .5 to .3 
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 7); // Changed value to 6 from 2 (spikes should have have high base hitpause so they are easier for the opponent to react to)
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .5); // added hitpause scaling 
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 1);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 6);