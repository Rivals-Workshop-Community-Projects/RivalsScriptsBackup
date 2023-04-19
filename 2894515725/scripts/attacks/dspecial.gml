set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

make_window(AT_DSPECIAL, 1,
    AG_WINDOW_LENGTH,15,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"),
    AG_WINDOW_SFX_FRAME, 14
);
make_window(AT_DSPECIAL, 2,
    AG_WINDOW_LENGTH,3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_VSPEED, -5
);
make_window(AT_DSPECIAL, 3,
    AG_WINDOW_LENGTH,15,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_HAS_WHIFFLAG, true
);

set_num_hitboxes(AT_DSPECIAL, 3);

var anchor_hit_vfx = hit_fx_create(sprite_get("fspecial_anchor_vfx"), 20);

make_hitbox(AT_DSPECIAL, 1,
    HG_HITBOX_GROUP, 1,
    HG_LIFETIME, 3,
    HG_PRIORITY, 3,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, -84,
    HG_WIDTH, 120,
    HG_HEIGHT, 50,
    HG_BASE_KNOCKBACK, 3,
    HG_BASE_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, 0.4,
    HG_KNOCKBACK_SCALING, 0.55,
    HG_DAMAGE, 10,
    HG_ANGLE, 20,
    HG_HIT_SFX, sound_get("anchor_hit"),
    HG_VISUAL_EFFECT, anchor_hit_vfx
);

make_hitbox(AT_DSPECIAL, 2,
    HG_HITBOX_GROUP, 1,
    HG_LIFETIME, 3,
    HG_PRIORITY, 2,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_HITBOX_X, 50,
    HG_HITBOX_Y, -54,
    HG_WIDTH, 80,
    HG_HEIGHT, 72,
    HG_BASE_KNOCKBACK, 3,
    HG_BASE_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, 0.4,
    HG_KNOCKBACK_SCALING, 0.55,
    HG_DAMAGE, 10,
    HG_ANGLE, 20,
    HG_HIT_SFX, sound_get("anchor_hit"),
    HG_VISUAL_EFFECT, anchor_hit_vfx
);

make_hitbox(AT_DSPECIAL, 3,
    HG_HITBOX_TYPE, 2,
    HG_LIFETIME, 120,
    HG_PRIORITY, 1,
    HG_DAMAGE, 5,
    HG_BASE_HITPAUSE, 6,
    HG_HITPAUSE_SCALING, 0.5,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 1.0,
    HG_ANGLE, 60,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GRAVITY, 0.65,
    HG_PROJECTILE_AIR_FRICTION, 0.1,
    HG_PROJECTILE_GROUND_FRICTION, 0.1,
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_FINAL_BASE_KNOCKBACK, 1,
    HG_HITSTUN_MULTIPLIER, 0.7
);

// make_hitbox(AT_DSPECIAL, 2,
//     HG_HITBOX_GROUP, -1,
//     HG_LIFETIME, 2,
//     HG_PRIORITY, 9,
//     HG_DAMAGE, 1,
//     HG_BASE_KNOCKBACK, 2,
//     HG_KNOCKBACK_SCALING, 1,
//     HG_BASE_HITPAUSE, 4,
//     HG_HITPAUSE_SCALING, 0.6,
//     HG_WIDTH, 60,
//     HG_HEIGHT, 60
// )

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