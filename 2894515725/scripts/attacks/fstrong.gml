set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);


make_window(AT_FSTRONG,1,
    AG_WINDOW_ANIM_FRAMES,2,
    AG_WINDOW_ANIM_FRAME_START,0,
    AG_WINDOW_LENGTH,10
)
make_window(AT_FSTRONG,2,
    AG_WINDOW_ANIM_FRAMES,1,
    AG_WINDOW_ANIM_FRAME_START,2,
    AG_WINDOW_LENGTH,3,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 2,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")
)
make_window(AT_FSTRONG,3,
    AG_WINDOW_ANIM_FRAMES,1,
    AG_WINDOW_ANIM_FRAME_START,3,
    AG_WINDOW_LENGTH,3
)
make_window(AT_FSTRONG,4,
    AG_WINDOW_ANIM_FRAMES,2,
    AG_WINDOW_ANIM_FRAME_START,4,
    AG_WINDOW_LENGTH,15,
    AG_WINDOW_HAS_WHIFFLAG, true
)

set_num_hitboxes(AT_FSTRONG,1)

make_hitbox(AT_FSTRONG,1,
    HG_PRIORITY,5,
    HG_WINDOW,3,
    HG_WINDOW_CREATION_FRAME,0,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 40,
    HG_HITBOX_Y, -27,
    HG_WIDTH, 200,
    HG_HEIGHT, 40,
    HG_DAMAGE, 11,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING,0.5,
    HG_BASE_KNOCKBACK,7,
    HG_KNOCKBACK_SCALING,1.0,
    HG_HIT_SFX,sound_get("anchor_hit"),
    HG_ANGLE,45,
    HG_VISUAL_EFFECT, HFX_GEN_BIG
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