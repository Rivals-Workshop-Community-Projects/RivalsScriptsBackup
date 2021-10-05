//Jab and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_NAIR with AT_JAB

var at = AT_NAIR

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("nair"));
set_attack_value(at, AG_NUM_WINDOWS, 2);
set_attack_value(at, AG_HAS_LANDING_LAG, 4);
set_attack_value(at, AG_OFF_LEDGE, 1);
set_attack_value(at, AG_AIR_SPRITE, sprite_get("nair"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 8);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 12);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("plop"));

set_num_hitboxes(at, 1);
ig = 1;

set_hitbox_value(at, ig, HG_PARENT_HITBOX, 1);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 60);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 4); //Change in init
set_hitbox_value(at, ig, HG_ANGLE, 45);
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 30);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, ig, HG_HITBOX_X, 30);
set_hitbox_value(at, ig, HG_HITBOX_Y, 0);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("zap"));

set_hitbox_value(at, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(at, ig, HG_PROJECTILE_HSPEED, 4.3);
set_hitbox_value(at, ig, HG_PROJECTILE_VSPEED, 4.3);
set_hitbox_value(at, ig, HG_PROJECTILE_SPRITE, sprite_get("nair_proj"));
set_hitbox_value(at, ig, HG_PROJECTILE_MASK, sprite_get("nair_proj"));
set_hitbox_value(at, ig, HG_PROJECTILE_ANIM_SPEED, .2);