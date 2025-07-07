// intro.gml
/*


*/

make_attack(AT_INTRO,
    AG_SPRITE, sprite_get("intro"),
    AG_NUM_WINDOWS, 2,
    AG_OFF_LEDGE, 1,
    AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"),

    
)

make_window(AT_INTRO, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 90,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, sound_get("cm_chestland"),
    AG_WINDOW_SFX_FRAME, 40, //match up to when the pod actually lands
)

make_window(AT_INTRO, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 30,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, sound_get("pod_open"),
    AG_WINDOW_SFX_FRAME, 1,
)
set_num_hitboxes(AT_INTRO, 1);

make_hitbox(AT_INTRO, 1,
    HG_HITBOX_TYPE, 2,
    HG_LIFETIME, 600,
    HG_WINDOW, 1,
    HG_WINDOW_CREATION_FRAME, 89,
    HG_WIDTH, 0,
    HG_HEIGHT, 0,
    HG_HITBOX_X, -70,
    HG_HITBOX_Y, -90,
    HG_PROJECTILE_HSPEED, -4,
    HG_PROJECTILE_VSPEED, -5,
    HG_PROJECTILE_GRAVITY, .2,
    HG_PROJECTILE_AIR_FRICTION, .05,
    HG_PRIORITY, -1,
    HG_DAMAGE, 0,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 1,
    HG_KNOCKBACK_SCALING, .1,

    HG_BASE_HITPAUSE, 1,
    HG_HITPAUSE_SCALING, .1,

    HG_HIT_SFX, asset_get("sfx_blow_medium1"),
    
    HG_PROJECTILE_SPRITE, sprite_get("pod_door"),
    HG_PROJECTILE_ANIM_SPEED, 1/4,
    HG_PROJECTILE_DESTROY_EFFECT, -1,
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, 1,
    HG_PROJECTILE_DOES_NOT_REFLECT, 1,
)

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
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion