set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG, 6);

// Sour 1
make_hitbox(AT_FSTRONG, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 147,
    HG_HITBOX_Y, -35,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_SHAPE, 0,
    HG_PRIORITY, 4,
    HG_DAMAGE, 7,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 5, //7
    HG_KNOCKBACK_SCALING, .6,//.9
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_big,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HIT_LOCKOUT, 5
)

// Sour 2
make_hitbox(AT_FSTRONG, 2,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 115,
    HG_HITBOX_Y, -35
)

// Sour 3
make_hitbox(AT_FSTRONG, 3,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 83,
    HG_HITBOX_Y, -35
)

// Sour 4
make_hitbox(AT_FSTRONG, 4,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 51,
    HG_HITBOX_Y, -35
)

// Sweet
make_hitbox(AT_FSTRONG, 5,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 179,
    HG_HITBOX_Y, -35,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_PRIORITY, 6,
    HG_DAMAGE, 13,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 8, // 8
    HG_KNOCKBACK_SCALING, 1, //1.2
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_huge,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_HIT_LOCKOUT, 5
)

#region // Strong Extended Hitbox
make_hitbox(AT_FSTRONG, 6,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 6,
    HG_LIFETIME, 999,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 13,
    HG_ANGLE, 45,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, .8,
    HG_HITSTUN_MULTIPLIER, 1,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_heavy"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_HIT_LOCKOUT, 5
)
#endregion

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