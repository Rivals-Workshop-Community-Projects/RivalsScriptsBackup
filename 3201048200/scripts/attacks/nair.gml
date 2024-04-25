var atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 4);
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("nair_hurt"));

var window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num++
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);

window_num++
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(atk, 3);

var hbox_num = 1;
set_hitbox_value(atk, hbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hbox_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT, fx_medium_circle1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

hbox_num++;
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y, -15);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X, -10);
set_hitbox_value(atk, hbox_num, HG_WIDTH, 42);
set_hitbox_value(atk, hbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT, fx_medium_circle1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

hbox_num++
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hbox_num, HG_LIFETIME, 17);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X, 15);
set_hitbox_value(atk, hbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hbox_num, HG_HEIGHT, 45);
set_hitbox_value(atk, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hbox_num, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));