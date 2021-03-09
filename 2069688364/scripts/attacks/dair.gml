var a=AT_DAIR
var sprite=sprite_get("dair")
set_attack_value(a, AG_CATEGORY, 1);
set_attack_value(a, AG_SPRITE, sprite);
set_attack_value(a, AG_NUM_WINDOWS, 3);
set_attack_value(a, AG_HURTBOX_SPRITE, sprite_get("hitbox"));
set_attack_value(a, AG_HAS_LANDING_LAG, true);
set_attack_value(a, AG_LANDING_LAG, 3);

wn=1
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 16);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(a, wn, AG_WINDOW_HAS_SFX, 1);
set_window_value(a, wn, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(a, wn, AG_WINDOW_SFX_FRAME, 10);

wn++
//set_window_value(a, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 6);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAME_START, 4);

wn++
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 12);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAME_START, 6);

var i=1
var num=1
set_num_hitboxes(a,num);
set_hitbox_value(a, i, HG_PARENT_HITBOX, i);
set_hitbox_value(a, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(a, i, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(a, i, HG_WINDOW, 2);
set_hitbox_value(a, i, HG_LIFETIME, 3);
set_hitbox_value(a, i, HG_HITBOX_X, 0);
set_hitbox_value(a, i, HG_HITBOX_Y, 10);
set_hitbox_value(a, i, HG_WIDTH, 130);
set_hitbox_value(a, i, HG_HEIGHT, 90);
set_hitbox_value(a, i, HG_PRIORITY, 7);
set_hitbox_value(a, i, HG_DAMAGE, 14);
set_hitbox_value(a, i, HG_ANGLE, -76);
set_hitbox_value(a, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(a, i, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(a, i, HG_BASE_HITPAUSE, 10);
set_hitbox_value(a, i, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(a, i, HG_HIT_SFX, sound_get("spike"));
set_hitbox_value(a, i, HG_HITBOX_GROUP, -1);
//set_hitbox_value(a, i, HG_ANGLE_FLIPPER, 9);