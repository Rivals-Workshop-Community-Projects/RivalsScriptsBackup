var atk = AT_BAIR //sets attack var

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("bair_hurt"));

var i = 1; //current window
set_window_value(atk, i, AG_WINDOW_TYPE, 1);
set_window_value(atk, i, AG_WINDOW_LENGTH, 7);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_VSPEED, -1);
set_window_value(atk, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, i, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, i, AG_WINDOW_SFX_FRAME, 6);
i++;

set_window_value(atk, i, AG_WINDOW_TYPE, 1);
set_window_value(atk, i, AG_WINDOW_LENGTH, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 2);
i++;
set_window_value(atk, i, AG_WINDOW_TYPE, 1);
set_window_value(atk, i, AG_WINDOW_LENGTH, 8);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 3);
i++;

set_window_value(atk, i, AG_WINDOW_TYPE, 1);
set_window_value(atk, i, AG_WINDOW_LENGTH, 11);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, i, AG_WINDOW_HAS_WHIFFLAG, 4);


set_num_hitboxes(atk, 2);

var i = 1;

set_hitbox_value(atk, i, HG_PARENT_HITBOX, 1); // early
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_WINDOW, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, -29);
set_hitbox_value(atk, i, HG_HITBOX_Y, -20);
set_hitbox_value(atk, i, HG_WIDTH, 75);
set_hitbox_value(atk, i, HG_HEIGHT, 75);
set_hitbox_value(atk, i, HG_PRIORITY, 2);
set_hitbox_value(atk, i, HG_DAMAGE, 9);
set_hitbox_value(atk, i, HG_ANGLE, 361);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

i++;

set_hitbox_value(atk, i, HG_PARENT_HITBOX, 2); //late
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_WINDOW, 3);
set_hitbox_value(atk, i, HG_LIFETIME, 8);
set_hitbox_value(atk, i, HG_HITBOX_X, -29);
set_hitbox_value(atk, i, HG_HITBOX_Y, -25);
set_hitbox_value(atk, i, HG_WIDTH, 70);
set_hitbox_value(atk, i, HG_HEIGHT, 55);
set_hitbox_value(atk, i, HG_PRIORITY, 2);
set_hitbox_value(atk, i, HG_DAMAGE, 5);
set_hitbox_value(atk, i, HG_ANGLE, 361);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER, .7);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));