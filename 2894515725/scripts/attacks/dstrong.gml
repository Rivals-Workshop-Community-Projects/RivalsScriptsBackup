set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

make_window(AT_DSTRONG,1,
    AG_WINDOW_ANIM_FRAMES,1,
    AG_WINDOW_ANIM_FRAME_START,0,
    AG_WINDOW_LENGTH,6,
    AG_WINDOW_HAS_CUSTOM_FRICTION,1,
    AG_WINDOW_CUSTOM_GROUND_FRICTION,0.04
)
make_window(AT_DSTRONG,2,
    AG_WINDOW_ANIM_FRAMES,1,
    AG_WINDOW_ANIM_FRAME_START,1,
    AG_WINDOW_LENGTH,5,
    AG_WINDOW_HAS_CUSTOM_FRICTION,1,
    AG_WINDOW_CUSTOM_GROUND_FRICTION,0.04,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 4,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1")
)
make_window(AT_DSTRONG,3,
    AG_WINDOW_ANIM_FRAMES,2,
    AG_WINDOW_ANIM_FRAME_START,2,
    AG_WINDOW_LENGTH,10,
    AG_WINDOW_HAS_CUSTOM_FRICTION,1,
    AG_WINDOW_CUSTOM_GROUND_FRICTION,0.04
)
make_window(AT_DSTRONG,4,
    AG_WINDOW_ANIM_FRAMES,3,
    AG_WINDOW_ANIM_FRAME_START,4,
    AG_WINDOW_LENGTH,20,
    AG_WINDOW_HAS_WHIFFLAG, true
)

set_num_hitboxes(AT_DSTRONG,2)

make_hitbox(AT_DSTRONG,1,
    HG_WINDOW,3,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME,5,
    HG_PRIORITY,5,
    HG_ANGLE,120,
    HG_BASE_KNOCKBACK,7,
    HG_KNOCKBACK_SCALING,1.1,
    HG_BASE_HITPAUSE,8,
    HG_HITPAUSE_SCALING,0.5,
    HG_HIT_SFX,sound_get("anchor_hit"),
    HG_HITBOX_X, -35,
    HG_HITBOX_Y, -20,
    HG_WIDTH, 130,
    HG_HEIGHT, 40,
    HG_DAMAGE, 10
)

make_hitbox(AT_DSTRONG,2,
    HG_WINDOW,3,
    HG_WINDOW_CREATION_FRAME,5,
    HG_LIFETIME,5,
    HG_PRIORITY,5,
    HG_ANGLE,60,
    HG_BASE_KNOCKBACK,7,
    HG_KNOCKBACK_SCALING,1.1,
    HG_BASE_HITPAUSE,8,
    HG_HITPAUSE_SCALING,0.5,
    HG_HIT_SFX,sound_get("anchor_hit"),
    HG_HITBOX_X, -8,
    HG_HITBOX_Y, -28,
    HG_WIDTH, 180,
    HG_HEIGHT, 60,
    HG_DAMAGE, 10
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