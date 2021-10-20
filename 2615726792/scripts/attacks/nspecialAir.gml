var at = AT_NSPECIAL_AIR

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("nair_2"));
set_attack_value(at, AG_NUM_WINDOWS, 2);
set_attack_value(at, AG_HAS_LANDING_LAG, 4);
set_attack_value(at, AG_OFF_LEDGE, 1);
set_attack_value(at, AG_AIR_SPRITE, sprite_get("nair_2"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("nair_2_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 14);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("whoosh"));

set_num_hitboxes(at, 1);
ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 2); //from 60
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 2);
set_hitbox_value(at, ig, HG_ANGLE, 70);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 5);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, ig, HG_HITBOX_X, 18);
set_hitbox_value(at, ig, HG_HITBOX_Y, -14);
set_hitbox_value(at, ig, HG_WIDTH, 36);
set_hitbox_value(at, ig, HG_HEIGHT, 28);
set_hitbox_value(at, ig, HG_HITBOX_Y, -20);
set_hitbox_value(at, ig, HG_SHAPE, 1);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("thud"));