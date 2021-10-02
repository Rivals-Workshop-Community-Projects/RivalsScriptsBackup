var at = AT_UAIR;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("uair"));
set_attack_value(at, AG_NUM_WINDOWS, 3);
set_attack_value(at, AG_HAS_LANDING_LAG, 4);
set_attack_value(at, AG_AIR_SPRITE, sprite_get("uair"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 10);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_HSPEED, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, -1);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 5);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_HSPEED, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_VSPEED, -10);
set_window_value(at, ig, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("megafire"));

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 7);
set_window_value(at, ig, AG_WINDOW_LENGTH, 16);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 4);

ig++;


set_num_hitboxes(at, 1);
ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 5);
set_hitbox_value(at, ig, HG_HITBOX_X, 32);
set_hitbox_value(at, ig, HG_HITBOX_Y, -36);
set_hitbox_value(at, ig, HG_WIDTH, 55);
set_hitbox_value(at, ig, HG_HEIGHT, 73);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 6);
set_hitbox_value(at, ig, HG_ANGLE, 90);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(at, ig, HG_EFFECT, 6);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 15);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("bigpunch"));
set_hitbox_value(at, ig, HG_IGNORES_PROJECTILES, 1);