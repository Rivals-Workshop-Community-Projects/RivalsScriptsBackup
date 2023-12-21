set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG, 6);

// Sour 1
make_hitbox(AT_DSTRONG, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 2,
    HG_HITBOX_X, -19,
    HG_HITBOX_Y, -12,
    HG_WIDTH, 60,
    HG_HEIGHT, 39,
    HG_SHAPE, 2,
    HG_PRIORITY, 4,
    HG_DAMAGE, 8,
    HG_ANGLE, 45,
    HG_ANGLE_FLIPPER, 5,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .9,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_big,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HIT_LOCKOUT, 5,
    HG_HITBOX_GROUP, 1
)

// Sweet 1
make_hitbox(AT_DSTRONG, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 2,
    HG_HITBOX_X, -53,
    HG_HITBOX_Y, -7,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_PRIORITY, 6,
    HG_DAMAGE, 13,
    HG_ANGLE, 45,
    HG_ANGLE_FLIPPER, 5,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.2,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_huge,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_HIT_LOCKOUT, 5,
    HG_HITBOX_GROUP, 1
)

// connector
make_hitbox(AT_DSTRONG, 3,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 4,
    HG_WINDOW_CREATION_FRAME, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 19,
    HG_HITBOX_Y, -7,
    HG_WIDTH, 88,
    HG_HEIGHT, 32,
    HG_SHAPE, 2,
    HG_PRIORITY, 4,
    HG_DAMAGE, 3,
    HG_ANGLE, 0,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 4,
    HG_HITPAUSE_SCALING, 0,
    HG_TECHABLE, 3,
    HG_VISUAL_EFFECT, hfx_yoyo_small,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HITBOX_GROUP, 1
)

// Sour 2
make_hitbox(AT_DSTRONG, 4,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 5,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 52,
    HG_HITBOX_Y, -8,
    HG_WIDTH, 84,
    HG_HEIGHT, 32,
    HG_SHAPE, 2,
    HG_PRIORITY, 4,
    HG_DAMAGE, 5,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .9,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_big,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HIT_LOCKOUT, 5,
    HG_HITBOX_GROUP, 2
)

// Sweet 2
make_hitbox(AT_DSTRONG, 5,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 5,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 99,
    HG_HITBOX_Y, -7,
    HG_WIDTH, 32,
    HG_HEIGHT, 32,
    HG_PRIORITY, 6,
    HG_DAMAGE, 13,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.2,
    HG_BASE_HITPAUSE, 12,
    HG_HITPAUSE_SCALING, .8,
    HG_VISUAL_EFFECT, hfx_yoyo_huge,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_HIT_LOCKOUT, 5,
    HG_HITBOX_GROUP, 2
)

#region // Strong Extended Hitbox 1
make_hitbox(AT_DSTRONG, 6,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 7,
    HG_LIFETIME, 999,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 13,
    HG_ANGLE, 45,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.2,
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