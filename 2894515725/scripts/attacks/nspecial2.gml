set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 15);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);



set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));


set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("screech"));

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
// set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.15);


set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, true);
// set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
// set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.65);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

set_num_hitboxes(AT_NSPECIAL_2, 3);


make_hitbox(AT_NSPECIAL_2, 1,
    HG_WINDOW, 3,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME,6,
    HG_BASE_HITPAUSE, 6,
    HG_HITPAUSE_SCALING, 0.2,
    HG_BASE_KNOCKBACK, 5.5,
    HG_KNOCKBACK_SCALING, 0.95,
    HG_DAMAGE, 20,
    HG_PRIORITY, 9,
    HG_WIDTH, 50,
    HG_HEIGHT, 50,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1")
)

make_hitbox(AT_NSPECIAL_2, 2,
    HG_WINDOW, 3,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME,6,
    HG_BASE_HITPAUSE, 6,
    HG_HITPAUSE_SCALING, 0.2,
    HG_BASE_KNOCKBACK, 5.5,
    HG_KNOCKBACK_SCALING, 0.95,
    HG_DAMAGE, 20,
    HG_PRIORITY, 9,
    HG_WIDTH, 50,
    HG_HEIGHT, 50,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1")
)

make_hitbox(AT_NSPECIAL_2, 3,
    HG_WINDOW, 3,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME,6,
    HG_BASE_HITPAUSE, 6,
    HG_HITPAUSE_SCALING, 0.2,
    HG_BASE_KNOCKBACK, 5.5,
    HG_KNOCKBACK_SCALING, 0.95,
    HG_DAMAGE, 20,
    HG_PRIORITY, 9,
    HG_WIDTH, 50,
    HG_HEIGHT, 50,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1")
)

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
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