#region // | ATTACK |
make_attack(AT_UTILT,
    AG_SPRITE, sprite_get("utilt"),
    AG_NUM_WINDOWS, 3,
    AG_HURTBOX_SPRITE, sprite_get("wren_hurtbox")
)
#endregion

#region // | WINDOWS |
#region // 1 - START-UP
make_window(AT_UTILT, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 7,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"),
    AG_WINDOW_SFX_FRAME, 6
)
#endregion
#region // 2 - ACTIVE
make_window(AT_UTILT, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 2
)
#endregion
#region // 3 - RECOVERY
make_window(AT_UTILT, 3,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 6,
    AG_WINDOW_HAS_WHIFFLAG, 5
)
#endregion
#endregion
#region // | HITBOXES |
set_num_hitboxes(AT_UTILT, 4);

#region // Hit 1
make_hitbox(AT_UTILT, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 30,
    HG_HITBOX_Y, -36,
    HG_WIDTH, 60,
    HG_HEIGHT, 60,
    HG_PRIORITY, 2,
    HG_DAMAGE, 2,
    HG_ANGLE, 80,
    HG_ANGLE_FLIPPER, 9,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0,
    HG_VISUAL_EFFECT, hfx_yoyo_small,
    HG_HIT_SFX, asset_get("sfx_blow_weak2"),
    HG_HITBOX_GROUP, 1
)
#endregion
#region // Hit 2
make_hitbox(AT_UTILT, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 29,
    HG_HITBOX_Y, -48,
    HG_WIDTH, 67,
    HG_HEIGHT, 60,
    HG_PRIORITY, 2,
    HG_DAMAGE, 1,
    HG_ANGLE, 80,
    HG_ANGLE_FLIPPER, 9,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0,
    HG_TECHABLE, 3,
    HG_VISUAL_EFFECT, hfx_yoyo_smalt,
    HG_HIT_SFX, asset_get("sfx_blow_weak1"),
    HG_HITBOX_GROUP, 2
)
#endregion
#region // Hit 3
make_hitbox(AT_UTILT, 3,
    HG_PARENT_HITBOX, 3,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 4,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 29,
    HG_HITBOX_Y, -65,
    HG_WIDTH, 69,   // nice
    HG_HEIGHT, 72,
    HG_PRIORITY, 2,
    HG_DAMAGE, 1,
    HG_ANGLE, 80,
    HG_ANGLE_FLIPPER, 9,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0,
    HG_TECHABLE, 3,
    HG_VISUAL_EFFECT, hfx_yoyo_smalt,
    HG_HIT_SFX, asset_get("sfx_blow_weak2"),
    HG_HITBOX_GROUP, 3
)
#endregion
#region // Hit 4 - Final
make_hitbox(AT_UTILT, 4,
    HG_PARENT_HITBOX, 4,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 6,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 9,
    HG_HITBOX_Y, -74,
    HG_WIDTH, 74,
    HG_HEIGHT, 91,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_ANGLE, 85,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0.4,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, .3,
    HG_VISUAL_EFFECT, hfx_yoyo_small,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HITBOX_GROUP, 4
)
#endregion
#endregion

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