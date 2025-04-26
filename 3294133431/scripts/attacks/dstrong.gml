set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
var moneyCountLoops = 1;//actually +1
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7+moneyCountLoops);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2+moneyCountLoops);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

for(var i = 0; i <= moneyCountLoops; i++)
{
    set_window_value(AT_DSTRONG, 2+i, AG_WINDOW_TYPE, 1);
    set_window_value(AT_DSTRONG, 2+i, AG_WINDOW_LENGTH, 8);
    set_window_value(AT_DSTRONG, 2+i, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_DSTRONG, 2+i, AG_WINDOW_ANIM_FRAME_START, 4);
}

set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSTRONG, 3+moneyCountLoops, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 4+moneyCountLoops, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4+moneyCountLoops, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 4+moneyCountLoops, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4+moneyCountLoops, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSTRONG, 5+moneyCountLoops, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5+moneyCountLoops, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5+moneyCountLoops, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 5+moneyCountLoops, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSTRONG, 6+moneyCountLoops, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6+moneyCountLoops, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 6+moneyCountLoops, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6+moneyCountLoops, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_DSTRONG, 7+moneyCountLoops, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7+moneyCountLoops, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 7+moneyCountLoops, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSTRONG, 7+moneyCountLoops, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DSTRONG, 7+moneyCountLoops, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

for(var i = 1; i <= get_num_hitboxes(AT_DSTRONG); i++)
{
    if(i == 1)
    {
        set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 32);
        set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 4+moneyCountLoops);
        set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_HSPEED, 8);
    }
    if(i == 2)
    {
        set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, -32);
        set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 6+moneyCountLoops);
        set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_HSPEED, -8);
    }

    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 16);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -58);
    set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 42);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 42);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 9);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 361);
    set_hitbox_value(AT_DSTRONG, i, HG_ANGLE_FLIPPER, 6);
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 8);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0.9);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 7);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, 0.9);//reduced over time in hitbox_update over
    set_hitbox_value(AT_DSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.0);
    set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));//overriden in hitbox_update

    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_SPRITE, sprite_get("money"));
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_ANIM_SPEED, 0.5);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_MASK, -1);//sprite_get("bulletProjectile"));
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("money"));
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_VSPEED, -4);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_GRAVITY, 1);
    //set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_GROUND_FRICTION, 0.1);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_AIR_FRICTION, 0.5);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_IS_TRANSCENDENT, false);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_DESTROY_EFFECT, 0);//asset_get("empty_sprite"));//115);
    set_hitbox_value(AT_DSTRONG, i, HG_VISUAL_EFFECT, 303);//overriden in hitbox_update
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_COLOR, $0000FF);//overriden in hitbox_update
}


// set_num_hitboxes(AT_DSTRONG, 6);

// for(var i = 1; i <= 2; i++)//first high hits on each side
// {
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 1);
//     if(i == 1)
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 50);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 4+moneyCountLoops);
//     }
//     else
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, -50);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 6+moneyCountLoops);
//     }
//     set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
//     set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 5);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -64);
//     set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 64);
//     set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 64);

//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 361);
//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE_FLIPPER, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 0);
//     set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 2);
//     set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 9);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 8);
//     set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0.9);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 7);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, .9);
//     set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//     set_hitbox_value(AT_DSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.0);
// }

// for(var i = 3; i <= 4; i++)//middle hits on each side
// {
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 1);
//     if(i == 3)
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 75);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 5+moneyCountLoops);
//     }
//     else
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, -75);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 7+moneyCountLoops);
//     }
//     set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 4);
//     set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -50);
//     set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 42);
//     set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 42);

//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 310);
//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE_FLIPPER, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 0);
//     set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 2);
//     set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0.8);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, .8);
//     set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//     set_hitbox_value(AT_DSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.0);
// }

// for(var i = 5; i <= 6; i++)//last low hits on each side
// {
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 1);
//     if(i == 5)
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 80);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 6+moneyCountLoops);
//     }
//     else
//     {
//         set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, -80);
//         set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 8+moneyCountLoops);
//     }
//     set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
//     set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 2);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -24);
//     set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 42);
//     set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 42);

//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 290);
//     set_hitbox_value(AT_DSTRONG, i, HG_ANGLE_FLIPPER, 6);
//     set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 0);
//     set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 2);
//     set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 9);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 4);
//     set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0.6);
//     set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 4);
//     set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, .6);
//     set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//     set_hitbox_value(AT_DSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.0);
// }