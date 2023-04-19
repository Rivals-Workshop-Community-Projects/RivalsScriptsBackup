set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, 1);

make_window(
    AT_JAB, 1, 
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 1,
    AG_WINDOW_SFX, sound_get("peck")
);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

set_num_hitboxes(AT_JAB, 1);


set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, true);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

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
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion