set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

// Sour
make_hitbox(AT_USTRONG, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 2,
    HG_HITBOX_Y, -93,
    HG_WIDTH, 32,
    HG_HEIGHT, 124,
    HG_SHAPE, 2,
    HG_PRIORITY, 4,
    HG_DAMAGE, 7,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 9,
    HG_KNOCKBACK_SCALING, .9,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .7,
    HG_VISUAL_EFFECT, hfx_yoyo_big,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HIT_LOCKOUT, 5
)

// Sweet
make_hitbox(AT_USTRONG, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 2,
    HG_HITBOX_Y, -153,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_PRIORITY, 6,
    HG_DAMAGE, 13,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 9,
    HG_KNOCKBACK_SCALING, 1.25,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_huge,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_HIT_LOCKOUT, 5
)

#region // Strong Extended Hitbox
make_hitbox(AT_USTRONG, 3,
    HG_PARENT_HITBOX, 3,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 6,
    HG_LIFETIME, 999,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 13,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 9,
    HG_KNOCKBACK_SCALING, 1.25,
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