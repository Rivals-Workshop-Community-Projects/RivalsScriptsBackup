var a=AT_FSPECIAL
var sprite=sprite_get("jump")
set_attack_value(a, AG_CATEGORY, 2);
set_attack_value(a, AG_SPRITE, sprite);
set_attack_value(a, AG_NUM_WINDOWS, 1);
set_attack_value(a, AG_HURTBOX_SPRITE, sprite_get("hitbox"));
set_attack_value(a, AG_HAS_LANDING_LAG, true);
set_attack_value(a, AG_LANDING_LAG, 3);

wn=1
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 7);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(a, wn, AG_WINDOW_VSPEED, 0);

var i=1
var num=0
set_num_hitboxes(a,num);
/*
set_hitbox_value(a, i, HG_PARENT_HITBOX, i);
set_hitbox_value(a, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(a, i, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(a, i, HG_WINDOW, 2);
set_hitbox_value(a, i, HG_LIFETIME, 5);
set_hitbox_value(a, i, HG_HITBOX_X, 0);
set_hitbox_value(a, i, HG_HITBOX_Y, -32);
set_hitbox_value(a, i, HG_WIDTH, 130);
set_hitbox_value(a, i, HG_HEIGHT, 130);
set_hitbox_value(a, i, HG_PRIORITY, 7);
set_hitbox_value(a, i, HG_DAMAGE, 3);
set_hitbox_value(a, i, HG_ANGLE, 90);
set_hitbox_value(a, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(a, i, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(a, i, HG_BASE_HITPAUSE, 3);
set_hitbox_value(a, i, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(a, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(a, i, HG_HITBOX_GROUP, -1);
//set_hitbox_value(a, i, HG_ANGLE_FLIPPER, 9);