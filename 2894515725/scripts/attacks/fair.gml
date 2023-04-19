set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);

make_window(AT_FAIR, 1, 
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"),
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 5
)
make_window(AT_FAIR, 2,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAME_START, 1,
    AG_WINDOW_ANIM_FRAMES, 2
)
make_window(AT_FAIR, 3,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_HAS_WHIFFLAG, 1
)
set_num_hitboxes(AT_FAIR, 5);


make_hitbox(AT_FAIR, 1,
    HG_WINDOW, 2,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW_CREATION_FRAME, 1,
    HG_SHAPE, 0,
    HG_LIFETIME, 2,
    HG_WIDTH, 132,
    HG_HEIGHT, 54,
    HG_PRIORITY, 5,
    HG_DAMAGE, 7,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, 0.15,
    HG_BASE_KNOCKBACK, 5.0,
    HG_KNOCKBACK_SCALING, 0.5,
    HG_HITBOX_X, 10,
    HG_HITBOX_Y, -28,
    HG_ANGLE, 55,
    HG_HIT_SFX, asset_get("sfx_blow_weak1")
)

make_hitbox(AT_FAIR, 2,
    HG_WINDOW, 2,
    HG_HITBOX_GROUP, 1,
    HG_WINDOW_CREATION_FRAME, 3,
    HG_SHAPE, 0,
    HG_LIFETIME, 3,
    HG_WIDTH, 96,
    HG_HEIGHT, 84,
    HG_PRIORITY, 6,
    HG_DAMAGE, 12,
    HG_BASE_HITPAUSE, 9,
    HG_HITPAUSE_SCALING, 0.15,
    HG_BASE_KNOCKBACK, 10.0,
    HG_KNOCKBACK_SCALING, 0.65,
    HG_HITBOX_X, 26,
    HG_HITBOX_Y, -42,
    HG_ANGLE, 60,
    HG_HIT_SFX, asset_get("sfx_blow_medium3")
)

#define hitbox_thingy(index, frame,lifetime,x,y,w,h)
    set_hitbox_value(AT_FAIR, index, HG_WINDOW, 2);
    set_hitbox_value(AT_FAIR, index, HG_WINDOW_CREATION_FRAME, frame);
    set_hitbox_value(AT_FAIR, index, HG_HITBOX_GROUP, 2);
    set_hitbox_value(AT_FAIR, index, HG_SHAPE, 0);
    set_hitbox_value(AT_FAIR, index, HG_LIFETIME, lifetime);
    set_hitbox_value(AT_FAIR, index, HG_HITBOX_X, x);
    set_hitbox_value(AT_FAIR, index, HG_HITBOX_Y, y);
    set_hitbox_value(AT_FAIR, index, HG_WIDTH, w);
    set_hitbox_value(AT_FAIR, index, HG_HEIGHT, h);
    set_hitbox_value(AT_FAIR, index, HG_PRIORITY, 6);
    set_hitbox_value(AT_FAIR, index, HG_DAMAGE, 7);
    set_hitbox_value(AT_FAIR, index, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FAIR, index, HG_KNOCKBACK_SCALING, 0.3);
    set_hitbox_value(AT_FAIR, index, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(AT_FAIR, index, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(AT_FAIR, index, HG_ANGLE, 70);
    set_hitbox_value(AT_FAIR, index, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

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