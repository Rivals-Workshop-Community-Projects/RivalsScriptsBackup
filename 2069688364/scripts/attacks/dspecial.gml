var a=AT_DSPECIAL
var sprite=sprite_get("dspecial")
set_attack_value(a, AG_CATEGORY, 2);
set_attack_value(a, AG_SPRITE, sprite);
set_attack_value(a, AG_NUM_WINDOWS, 2);
set_attack_value(a, AG_HURTBOX_SPRITE, sprite_get("dts"));
set_attack_value(a, AG_HAS_LANDING_LAG, true);
set_attack_value(a, AG_LANDING_LAG, 3);

wn=1
set_window_value(a, wn, AG_WINDOW_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_LENGTH, 30);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(a, wn, AG_WINDOW_HAS_SFX, 1);
set_window_value(a, wn, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(a, wn, AG_WINDOW_SFX_FRAME, 15);

wn++
//set_window_value(a, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(a, wn, AG_WINDOW_TYPE, 0);
set_window_value(a, wn, AG_WINDOW_LENGTH, 40);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(a, wn, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(a, wn, AG_WINDOW_HAS_SFX, 1);
set_window_value(a, wn, AG_WINDOW_SFX, sound_get("replace"));
set_window_value(a, wn, AG_WINDOW_SFX_FRAME, 0);

var i=1
var num=2
set_num_hitboxes(a,num);

for (var i=1;i<=2;i++)
{
    set_hitbox_value(a, i, HG_PARENT_HITBOX, i);
    set_hitbox_value(a, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(a, i, HG_PROJECTILE_SPRITE, sprite_get("tank"));
    set_hitbox_value(a, i, HG_PROJECTILE_MASK, sprite_get("tank"));
    set_hitbox_value(a, i, HG_PROJECTILE_HSPEED, -2);
    set_hitbox_value(a, i, HG_PROJECTILE_ANIM_SPEED, -0.4);
    set_hitbox_value(a, i, HG_PROJECTILE_VSPEED, -6);
    set_hitbox_value(a, i, HG_PROJECTILE_GRAVITY, 0.3);
    set_hitbox_value(a, i, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(a, i, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(a, i, HG_WINDOW_CREATION_FRAME, 15);
    set_hitbox_value(a, i, HG_WINDOW, 1);
    set_hitbox_value(a, i, HG_LIFETIME, 100);
    set_hitbox_value(a, i, HG_HITBOX_X, -10);
    set_hitbox_value(a, i, HG_HITBOX_Y, -10);
    set_hitbox_value(a, i, HG_WIDTH, 130);
    set_hitbox_value(a, i, HG_HEIGHT, 130);
    set_hitbox_value(a, i, HG_PRIORITY, 1);
    set_hitbox_value(a, i, HG_DAMAGE, 3);
    set_hitbox_value(a, i, HG_ANGLE, 90);
    set_hitbox_value(a, i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(a, i, HG_KNOCKBACK_SCALING, .0);
    set_hitbox_value(a, i, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(a, i, HG_HITPAUSE_SCALING, .3);
    set_hitbox_value(a, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(a, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(a, i, HG_PROJECTILE_DESTROY_EFFECT, gasfx);
    if i=2
    {
        set_hitbox_value(a, i, HG_PROJECTILE_HSPEED, 2);
        set_hitbox_value(a, i, HG_PROJECTILE_ANIM_SPEED, 0.4);
        set_hitbox_value(a, i, HG_HITBOX_X, 10);
    }
}
//set_hitbox_value(a, i, HG_ANGLE_FLIPPER, 9);