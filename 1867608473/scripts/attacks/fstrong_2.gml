// FStrong (Soulless 5)
make_attack(AT_FSTRONG_2,
AG_SPRITE, sprite_get("fstrong_2"),
AG_NUM_WINDOWS, 4,
AG_HAS_LANDING_LAG, 3,
AG_STRONG_CHARGE_WINDOW, 1,
AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt")
)

make_window(AT_FSTRONG_2, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 9,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 1
)

make_window(AT_FSTRONG_2, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 4,
    AG_WINDOW_HSPEED, 3,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX_FRAME, 1,
    AG_WINDOW_SFX, sfx_swipe_bair
)

make_window(AT_FSTRONG_2, 3,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 5,
)

make_window(AT_FSTRONG_2, 4,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 17,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 6,
    AG_WINDOW_HAS_WHIFFLAG, 1
)

set_num_hitboxes(AT_FSTRONG_2, 2)

make_hitbox(AT_FSTRONG_2, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 44,
    HG_HITBOX_Y, -35,
    HG_WIDTH, 72,
    HG_HEIGHT, 63,
    HG_PRIORITY, 5,
    HG_DAMAGE, 12,
    HG_ANGLE, 361,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .9,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, 1.0,
    HG_HIT_SFX, sound_get("sfx_kris_hit_strong"),
    HG_VISUAL_EFFECT, 304,
    HG_HIT_LOCKOUT, 10
)

make_hitbox(AT_FSTRONG_2, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 18,
    HG_HITBOX_Y, -13,
    HG_WIDTH, 52,
    HG_HEIGHT, 32,
    HG_SHAPE, 2,
    HG_PRIORITY, 3,
    HG_DAMAGE, 12,
    HG_ANGLE, 361,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .9,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, 1.0,
    HG_HIT_SFX, sound_get("sfx_kris_hit_strong"),
    HG_VISUAL_EFFECT, 304,
    HG_HIT_LOCKOUT, 10
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