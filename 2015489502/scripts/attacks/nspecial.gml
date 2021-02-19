var _attack = AT_NSPECIAL;
var _window = 1;

set_attack_value(_attack, AG_CATEGORY, 2);
set_attack_value(_attack, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(_attack, AG_NUM_WINDOWS, 4);
set_attack_value(_attack, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(_attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(_attack, AG_USES_CUSTOM_GRAVITY, 1);

var custom_grav = .45;

//1 Startup
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 9);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, custom_grav);
_window++;

//2 Charge
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 20);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, custom_grav);
_window++;

//3 Throw
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 12);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
_window++;

//4 Throw End
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 16);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
_window++;

//5 Charge End
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 6);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, custom_grav);
_window++;

//6 Dthrow
set_window_value(_attack, _window, AG_WINDOW_TYPE, 1);
set_window_value(_attack, _window, AG_WINDOW_LENGTH, 18);
set_window_value(_attack, _window, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(_attack, _window, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
_window++;



set_num_hitboxes(_attack, 0);

var _hitbox = 0;

repeat(8){
    _hitbox++;
    set_hitbox_value(_attack, _hitbox, HG_PARENT_HITBOX, _hitbox);
    set_hitbox_value(_attack, _hitbox, HG_HITBOX_TYPE, 2);
    set_hitbox_value(_attack, _hitbox, HG_WINDOW, 200);
    set_hitbox_value(_attack, _hitbox, HG_LIFETIME, 200);
    set_hitbox_value(_attack, _hitbox, HG_WIDTH, 34);
    set_hitbox_value(_attack, _hitbox, HG_HEIGHT, 34);
    set_hitbox_value(_attack, _hitbox, HG_PRIORITY, 3);
    set_hitbox_value(_attack, _hitbox, HG_DAMAGE, 2 + _hitbox);
    set_hitbox_value(_attack, _hitbox, HG_ANGLE, 50);
    set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .5);
    set_hitbox_value(_attack, _hitbox, HG_BASE_HITPAUSE, 3 + _hitbox * 2);
    set_hitbox_value(_attack, _hitbox, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(_attack, _hitbox, HG_HIT_SFX, sfx_ball_hit[_hitbox]);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_SPRITE, spr_ball);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_ANIM_SPEED, .2);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_HSPEED, 10 + _hitbox);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(_attack, _hitbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(_attack, _hitbox, HG_VISUAL_EFFECT, vfx_ball_hit[_hitbox]);
}

_hitbox = 1;

//1 flinch
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 40);
_hitbox++;

//2 up-forward
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 60);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .4);
_hitbox++;

//3 forward
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 30);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .4);
_hitbox++;

//4 up
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 90);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .7);
_hitbox++;

//5 up-back
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 125);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .6);
_hitbox++;

//6 down
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 270);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, .7);
_hitbox++;

//7 kill
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 45);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(_attack, _hitbox, HG_EXTRA_HITPAUSE, 7);
_hitbox++;

//8 stun
set_hitbox_value(_attack, _hitbox, HG_ANGLE, 90);
set_hitbox_value(_attack, _hitbox, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(_attack, _hitbox, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(_attack, _hitbox, HG_EXTRA_HITPAUSE, 49);
set_hitbox_value(_attack, _hitbox, HG_HITPAUSE_SCALING, 0);
_hitbox++;