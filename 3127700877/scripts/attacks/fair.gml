// fair.gml

set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

    
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 13);


set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_FAIR, 2)

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 315);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 34);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GRAVITY, .03);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_AIR_FRICTION, -.03);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GROUND_FRICTION, -.03);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("fx_sludge_small"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, vfx_sludge_small);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_FAIR, 2, HG_SLUDGE_EFFECT, 35);
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 1);

if(has_rune("A")){
    set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_FAIR, 2, HG_EXTENDED_PARRY_STUN, false);
}

if(has_rune("G")){
    set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 5);
    set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 5);
    set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .8);
    set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 315);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 1);
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_window // Version 0
    // make_window(_attack_name, _index, (value_name, value)... )
    // Sets window values for the given window.
    // e.g.make_window(AT_BAIR, 1,
    //         AG_WINDOW_TYPE, 1,
    //         AG_WINDOW_LENGTH, 6
    //     )
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_window_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }

#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion