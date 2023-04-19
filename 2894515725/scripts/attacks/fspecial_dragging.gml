make_attack(AT_FSPECIAL_AIR,
    AG_SPRITE, sprite_get("new_fspecial"),
    AG_AIR_SPRITE, sprite_get("new_fspecial_air"),
    AG_CATEGORY, 2,
    AG_NUM_WINDOWS, 3,
    AG_HURTBOX_SPRITE, sprite_get("new_fspecial_hurt"),
    AG_HURTBOX_AIR_SPRITE, sprite_get("new_fspecial_air_hurt"),
    AG_OFF_LEDGE, 0
);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

make_window(
    AT_FSPECIAL_AIR, 1,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_HAS_CUSTOM_FRICTION, true,
    AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1,
    AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 2,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")
);

make_window(
    AT_FSPECIAL_AIR, 2,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_TYPE, 9,
    AG_WINDOW_HAS_CUSTOM_FRICTION, true,
    AG_WINDOW_CUSTOM_AIR_FRICTION, 0.00001,
    AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.00001
);

make_window(
  AT_FSPECIAL_AIR, 3,
  AG_WINDOW_LENGTH, 16,
  AG_WINDOW_ANIM_FRAMES, 4,
  AG_WINDOW_ANIM_FRAME_START, 5
);

make_hitbox(AT_FSPECIAL_AIR, 1,
    // HG_WINDOW, 2,
    // HG_WINDOW_CREATION_FRAME, 1,
    HG_PRIORITY, 1,
    HG_LIFETIME, 10,
    HG_HITBOX_X, -16,
    HG_HITBOX_Y, -24,
    HG_WIDTH, 100,
    HG_HEIGHT, 50,
    HG_SHAPE, 1,
    HG_DAMAGE, 1,
    HG_BASE_KNOCKBACK, 9,
    // HG_KNOCKBACK_SCALING, 0.5,
    HG_ANGLE, 85,
    HG_HITBOX_GROUP, -1,
    HG_BASE_HITPAUSE, 5,
    HG_HIT_LOCKOUT, 10,
    // HG_EFFECT, 9,
    HG_HIT_SFX, asset_get("sfx_absa_singlezap1")
);

make_hitbox(
    AT_FSPECIAL_AIR, 2,
    HG_PRIORITY, 1,
    HG_LIFETIME, 4,
    HG_DAMAGE, 0,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 0.1,
    HG_ANGLE, 70,
    HG_WINDOW, 1,
    HG_WINDOW_CREATION_FRAME, 4,
    HG_HITBOX_X, 16,
    HG_HITBOX_Y, -24,
    HG_WIDTH, 100,
    HG_HEIGHT, 60,
    HG_HITSTUN_MULTIPLIER, .4,
    HG_FORCE_FLINCH, true,
    // HG_EFFECT, 9,
    HG_HIT_SFX, sound_get("smack_metal")
);

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