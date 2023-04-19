set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("new_fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("new_fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 9); // pull out
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 7); // fire
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, -15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 52); // put away
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_FSPECIAL_2, 4);
make_hitbox(
    AT_FSPECIAL_2, 1, 
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME, 3,
    HG_DAMAGE, 12,
    HG_BASE_HITPAUSE, 40, // large hitpause go brrr
    HG_HITPAUSE_SCALING, 0.5,
    HG_BASE_KNOCKBACK, 10.5, //
    HG_KNOCKBACK_SCALING, 1.0, // revel in the spicy knockback 
    HG_ANGLE, 40, // and the juicy amgle
    HG_WIDTH, 120,
    HG_HEIGHT, 60,
    HG_HITBOX_X, 90,
    HG_HITBOX_Y, -30,
    HG_SHAPE, 1,
    HG_PRIORITY, 10,
    HG_VISUAL_EFFECT, 22
);
make_hitbox(
    AT_FSPECIAL_2, 2, 
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME, 3,
    HG_DAMAGE, 9,
    HG_BASE_HITPAUSE, 15,
    //HG_EXTRA_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, 0.5,
    HG_BASE_KNOCKBACK, 7, //
    HG_KNOCKBACK_SCALING, 0.8,  
    HG_ANGLE, 40,
    HG_WIDTH, 150,
    HG_HEIGHT, 90,
    HG_HITBOX_X, 120,
    HG_HITBOX_Y, -30,
    HG_SHAPE, 1,
    HG_PRIORITY, 9,
    HG_VISUAL_EFFECT, 22
);

make_hitbox(
    AT_FSPECIAL_2, 3, 
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_LIFETIME, 3,
    HG_DAMAGE, 4,
    HG_BASE_HITPAUSE, 15,
    //HG_EXTRA_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, 0.5,
    HG_BASE_KNOCKBACK, 2, //
    HG_KNOCKBACK_SCALING, 0.1,  
    HG_ANGLE, 40,
    HG_WIDTH, 200,
    HG_HEIGHT, 120,
    HG_HITBOX_X, 160,
    HG_HITBOX_Y, -30,
    HG_SHAPE, 1,
    HG_PRIORITY, 8,
    HG_VISUAL_EFFECT, 22,
    HG_EFFECT, 9
);

make_hitbox(
    AT_FSPECIAL_2, 4, 
    HG_HITBOX_TYPE, 2,
    HG_HITBOX_GROUP, -1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_PLASMA_SAFE, 1,
    HG_PROJECTILE_UNBASHABLE, 1,
    HG_LIFETIME, 2,
    HG_DAMAGE, 12,
    HG_BASE_HITPAUSE, 40, // large hitpause go brrr
    HG_HITPAUSE_SCALING, 0.5,
    HG_BASE_KNOCKBACK, 10.5, //
    HG_KNOCKBACK_SCALING, 1.0, // revel in the spicy knockback 
    HG_ANGLE, 40, // and the juicy amgle
    HG_WIDTH, 8000,
    HG_HEIGHT, 8000,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, -30,
    HG_SHAPE, 1,
    HG_PRIORITY, 10,
    HG_VISUAL_EFFECT, 22,
    HG_HIT_SFX, sound_get("shotgun_blast"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite")
);

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