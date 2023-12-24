#region // | ATTACK |
make_attack(AT_JAB,
    AG_SPRITE, sprite_get("jab"),
    AG_NUM_WINDOWS, 10,
    AG_HURTBOX_SPRITE, sprite_get("jab_hurt")
)
#endregion

#region // | WINDOWS |

#region // [JAB 1]
#region // 1 - Start-Up
make_window(AT_JAB, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_HSPEED, 0,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"),
    AG_WINDOW_SFX_FRAME, 3
)
#endregion

#region // 2 - Active
make_window(AT_JAB, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_HSPEED, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1
)
#endregion

#region // 3 - Recovery
make_window(AT_JAB, 3,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_CANCEL_TYPE, 1,
    AG_WINDOW_CANCEL_FRAME, 5,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 2,
)
#endregion
#endregion

#region // [JAB 2]
#region // 4 - Start-Up
make_window(AT_JAB, 4,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 5,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"),
    AG_WINDOW_SFX_FRAME, 3
)
#endregion

#region // 5 - Active 1
make_window(AT_JAB, 5,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_HSPEED, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 6
)
#endregion

#region // 6 - Active 2
make_window(AT_JAB, 6,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_HSPEED, 2,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 7,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"),
    AG_WINDOW_SFX_FRAME, 1
)
#endregion

#region // 7 - Recovery
make_window(AT_JAB, 7,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_CANCEL_TYPE, 1,
    AG_WINDOW_CANCEL_FRAME, 6,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 9,
)
#endregion
#endregion

#region // [JAB 3]
#region // 8 - Start-Up
make_window(AT_JAB, 8,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 5,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 11,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"),
    AG_WINDOW_SFX_FRAME, 3
)
#endregion

#region // 9 - Active
make_window(AT_JAB, 9,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_HSPEED, 8,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 13
)
#endregion

#region // 10 - Recovery
make_window(AT_JAB, 10,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 23,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 14,
    AG_WINDOW_HAS_WHIFFLAG, 1
)
#endregion
#endregion

#region // | HITBOXES |
set_num_hitboxes(AT_JAB, 4);

#region // JAB 1 HITBOX
make_hitbox(AT_JAB, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 27,
    HG_HITBOX_Y, -40,
    HG_WIDTH, 67,
    HG_HEIGHT, 57,
    HG_PRIORITY, 2,
    HG_DAMAGE, 2,
    HG_ANGLE, 70,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 4,
    HG_BASE_HITPAUSE, 4,
    HG_FORCE_FLINCH, 1,
    HG_VISUAL_EFFECT_X_OFFSET, 32,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_weak1"),
    HG_HITBOX_GROUP, 1
)
#endregion

#region // JAB 2 HIT 1 HITBOX
make_hitbox(AT_JAB, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 5,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 68,
    HG_HITBOX_Y, -37,
    HG_WIDTH, 103,
    HG_HEIGHT, 36,
    HG_SHAPE, 2,
    HG_PRIORITY, 2,
    HG_DAMAGE, 2,
    HG_ANGLE, 361,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 4,
    HG_BASE_HITPAUSE, 4,
    HG_FORCE_FLINCH, 1,
    HG_VISUAL_EFFECT_X_OFFSET, 32,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_GROUP, 2
)
#endregion

#region // JAB 2 HIT 2 HITBOX
make_hitbox(AT_JAB, 3,
    HG_PARENT_HITBOX, 3,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 6,
    HG_WINDOW_CREATION_FRAME, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 46,
    HG_HITBOX_Y, -37,
    HG_WIDTH, 115,
    HG_HEIGHT, 38,
    HG_SHAPE, 2,
    HG_PRIORITY, 2,
    HG_DAMAGE, 2,
    HG_ANGLE, 120,
    HG_ANGLE_FLIPPER, 7,
    HG_BASE_KNOCKBACK, 6,
    HG_BASE_HITPAUSE, 4,
    HG_VISUAL_EFFECT, hfx_yoyo_small,
    HG_VISUAL_EFFECT_X_OFFSET, 32,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium1"),
    HG_HITBOX_GROUP, 3
)
#endregion

#region // JAB 3 HITBOX
make_hitbox(AT_JAB, 4,
    HG_PARENT_HITBOX, 4,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 9,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 9,
    HG_HITBOX_Y, -33,
    HG_WIDTH, 110,
    HG_HEIGHT, 47,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_ANGLE, 361,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .55,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, .25,
    HG_VISUAL_EFFECT_X_OFFSET, 32,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
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