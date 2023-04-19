set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);


make_window(AT_UAIR, 1,
    AG_WINDOW_LENGTH, 9,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"),
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 8
)
make_window(AT_UAIR, 2,
    AG_WINDOW_LENGTH, 5,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
)

make_window(AT_UAIR, 3,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_HAS_WHIFFLAG, 1,
)

set_num_hitboxes(AT_UAIR, 4)

make_hitbox(AT_UAIR, 1,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME, 3,
    HG_PRIORITY, 2,
    HG_ANGLE, 60,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.5,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0.1,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_X, 35,
    HG_HITBOX_Y, -40,
    HG_WIDTH, 40,
    HG_HEIGHT, 80,
    HG_DAMAGE, 6,
    HG_ANGLE_FLIPPER, 6,
)
make_hitbox(AT_UAIR, 2,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME, 3,
    HG_PRIORITY, 2,
    HG_ANGLE, 60,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.5,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0.1,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_X, -5,
    HG_HITBOX_Y, -75,
    HG_WIDTH, 102,
    HG_HEIGHT, 50,
    HG_DAMAGE, 6,
    HG_ANGLE_FLIPPER, 6,
)
make_hitbox(AT_UAIR, 3,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME, 3,
    HG_PRIORITY, 2,
    HG_ANGLE, 60,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.5,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0.1,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_X, -50,
    HG_HITBOX_Y, -40,
    HG_WIDTH, 40,
    HG_HEIGHT, 80,
    HG_DAMAGE, 6,
    HG_ANGLE_FLIPPER, 6,
)



make_hitbox(AT_UAIR, 4,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME, 1,
    HG_PRIORITY, 3,
    HG_ANGLE, 265,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0.85,
    HG_BASE_HITPAUSE, 9,
    HG_HITPAUSE_SCALING, 0.1,
    HG_HIT_SFX, asset_get("sfx_blow_heavy2"),
    HG_HITBOX_X, -50,
    HG_HITBOX_Y, -40,
    HG_WIDTH, 20,
    HG_HEIGHT, 40,
    HG_DAMAGE, 9
)

// set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
// set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
// set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -40);
// set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -40);
// set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
// set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
// set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 6);
// set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 15);
// set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
// set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 230);
// set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
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