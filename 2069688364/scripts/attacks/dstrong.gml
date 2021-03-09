var a=AT_DSTRONG
var sprite=sprite_get("dstrong")
set_attack_value(a, AG_CATEGORY, 0);
set_attack_value(a, AG_SPRITE, sprite);
set_attack_value(a, AG_NUM_WINDOWS, 3);
set_attack_value(a, AG_HURTBOX_SPRITE, sprite_get("hitbox"));
set_attack_value(a, AG_HAS_LANDING_LAG, true);
set_attack_value(a, AG_LANDING_LAG, 3);
set_attack_value(a, AG_STRONG_CHARGE_WINDOW, 1);
//set_attack_value(a, AG_USES_CUSTOM_GRAVITY, true);

wn=1
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 12);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(a, wn, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(a, wn, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
//set_window_value(a, wn, AG_WINDOW_VSPEED, -10);
//set_window_value(a, wn, AG_WINDOW_CUSTOM_GRAVITY, 0);

wn++
//set_window_value(a, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 8);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(a, wn, AG_WINDOW_HAS_SFX, 1);
set_window_value(a, wn, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(a, wn, AG_WINDOW_SFX_FRAME, 0);
set_window_value(a, wn, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(a, wn, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

wn++
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 10);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(a, wn, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(a, wn, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

var i=1
var num=2
set_num_hitboxes(a,num);

for (var i=1;i<=2;i++)
{
    set_hitbox_value(a, i, HG_PARENT_HITBOX, i);
    set_hitbox_value(a, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(a, i, HG_WINDOW_CREATION_FRAME, 4);
    set_hitbox_value(a, i, HG_WINDOW, 2);
    set_hitbox_value(a, i, HG_LIFETIME, 6);
    set_hitbox_value(a, i, HG_HITBOX_X, 15);
    set_hitbox_value(a, i, HG_HITBOX_Y, -50);
    set_hitbox_value(a, i, HG_WIDTH, 80);
    set_hitbox_value(a, i, HG_HEIGHT, 80);
    set_hitbox_value(a, i, HG_PRIORITY, 7);
    set_hitbox_value(a, i, HG_DAMAGE, 13);
    set_hitbox_value(a, i, HG_ANGLE, 45+180);
    set_hitbox_value(a, i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(a, i, HG_KNOCKBACK_SCALING, .6);
    set_hitbox_value(a, i, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(a, i, HG_HITPAUSE_SCALING, .8);
    set_hitbox_value(a, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(a, i, HG_HITBOX_GROUP, 1);
    if i=2
    {
        set_hitbox_value(a, i, HG_HITBOX_X, -48);
        set_hitbox_value(a, i, HG_HITBOX_Y, -12);
        set_hitbox_value(a, i, HG_WIDTH, 60);
        set_hitbox_value(a, i, HG_HEIGHT, 60);
    }
}

//set_hitbox_value(a, i, HG_ANGLE_FLIPPER, 9);