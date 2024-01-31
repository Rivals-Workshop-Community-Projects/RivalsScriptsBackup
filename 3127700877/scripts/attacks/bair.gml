// bair.gml

set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_BAIR, 2)

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 26);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -100);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_BAIR, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_AIR_FRICTION, .3);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_FRICTION, .25);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("fx_sludge_sm"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_sludge_small );
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_BAIR, 2, HG_SLUDGE_EFFECT, 35);
set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 3);

if(has_rune("A")){
    set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_BAIR, 2, HG_EXTENDED_PARRY_STUN, false);
}

if(has_rune("G")){
    set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, -14);
    set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .95);
    set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
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