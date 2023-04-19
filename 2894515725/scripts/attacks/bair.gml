set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);


make_window(AT_BAIR, 1, 
    AG_WINDOW_LENGTH, 5,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX_FRAME, 4,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")
)

make_window(AT_BAIR, 2, 
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1
)

make_window(AT_BAIR, 3, 
    AG_WINDOW_LENGTH, 5,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX_FRAME, 4,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")
)
make_window(AT_BAIR, 4, 
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 3
)
make_window(AT_BAIR, 5, 
    AG_WINDOW_LENGTH, 15,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 4,
    AG_WINDOW_HAS_WHIFFLAG, 1
)

set_num_hitboxes(AT_BAIR, 2)

make_hitbox(AT_BAIR, 1,
    HG_HITBOX_GROUP, 1,
    HG_PRIORITY, 3,
    HG_ANGLE, 110,
    HG_DAMAGE, 3,
    HG_BASE_KNOCKBACK, 5,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME, 3,
    HG_BASE_HITPAUSE, 4,
    HG_HITPAUSE_SCALING, 0.01,
    HG_EXTRA_HITPAUSE, 3,
    HG_HIT_SFX, asset_get("sfx_blow_medium1"),
    HG_HITBOX_X, -32,
    HG_HITBOX_Y, -26,
    HG_WIDTH, 100,
    HG_HEIGHT, 40
)

make_hitbox(AT_BAIR, 2,
    HG_HITBOX_GROUP, 2,
    HG_PRIORITY, 3,
    HG_ANGLE, 110,
    HG_DAMAGE, 5,
    HG_BASE_KNOCKBACK, 5,
    HG_KNOCKBACK_SCALING, 0.5, 
    HG_WINDOW, 4,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME, 3,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0.3,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_X, -32,
    HG_HITBOX_Y, -26,
    HG_WIDTH, 100,
    HG_HEIGHT, 40
)

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