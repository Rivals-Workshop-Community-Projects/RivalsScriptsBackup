#region // NSPECIAL (Place)
#region // | ATTACK |
make_attack(AT_NSPECIAL,
    AG_CATEGORY, 2,
    AG_SPRITE, sprite_get("nspecial"),
    AG_NUM_WINDOWS, 5,
    AG_OFF_LEDGE, 1,
    AG_AIR_SPRITE, sprite_get("nspecial"),
    AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt")
);
#endregion

#region // | WINDOWS |
#region // 1 - Start-Up 3
make_window( AT_NSPECIAL, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 9,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_bubblepop"),
    AG_WINDOW_SFX_FRAME, 4
)
#endregion

#region // 2 - Loop 4
make_window( AT_NSPECIAL, 2,
    AG_WINDOW_TYPE, 9,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 4,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin")
)
#endregion

#region // 3 - Active 1
make_window( AT_NSPECIAL, 3,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 8
)
#endregion

#region // 4 - Recovery 4
make_window( AT_NSPECIAL, 4,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 9,
    AG_WINDOW_GOTO, 12
)
#endregion

#region // 5 - Cancel
make_window( AT_NSPECIAL, 5,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAMES, -2,
    AG_WINDOW_ANIM_FRAME_START, 2
)
#endregion
#endregion
#endregion

#region // NSPECIAL 2 (Recall)
#region // | ATTACK |
make_attack(AT_NSPECIAL_2,
AG_CATEGORY, 2,
AG_SPRITE, sprite_get("nspecial2"),
AG_NUM_WINDOWS, 2,
AG_OFF_LEDGE, 1,
AG_AIR_SPRITE, sprite_get("nspecial2"),
AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt")
)

#region // | WINDOWS |
#region // 1 - START-UP
make_window(AT_NSPECIAL_2, 1,
AG_WINDOW_TYPE, 1,
AG_WINDOW_LENGTH, 8,
AG_WINDOW_ANIM_FRAMES, 2,
AG_WINDOW_ANIM_FRAME_START, 0,
AG_WINDOW_HSPEED_TYPE, 1,
AG_WINDOW_VSPEED_TYPE, 1,
AG_WINDOW_HAS_SFX, 1,
AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin")
)
#endregion

#region // 2 - ACTIVE
make_window(AT_NSPECIAL_2, 2,
AG_WINDOW_TYPE, 1,
AG_WINDOW_LENGTH, 8,
AG_WINDOW_ANIM_FRAMES, 2,
AG_WINDOW_ANIM_FRAME_START, 2
)
#endregion
#endregion

#region // | HITBOXES |
set_num_hitboxes(AT_NSPECIAL_2, 2);

#region // Recall Hitbox - No Charge Default
make_hitbox(AT_NSPECIAL_2, 1,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 6,
    HG_LIFETIME, 999,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 8,
    HG_ANGLE, 70,
    HG_ANGLE_FLIPPER, 7,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, .4,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, 0,
    HG_HITSTUN_MULTIPLIER, .8,
    HG_SDI_MULTIPLIER, 0,
    HG_VISUAL_EFFECT, hfx_waves_small,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_heavy"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_PARRY_STUN, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_TECHABLE, 2
)
#endregion

#region // Sending Out
make_hitbox(AT_NSPECIAL_2, 2,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 6,
    HG_LIFETIME, 999,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 8,
    HG_ANGLE, 70,
    HG_ANGLE_FLIPPER, 0,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, .4,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, 0,
    HG_HITSTUN_MULTIPLIER, .8,
    HG_SDI_MULTIPLIER, 0,
    HG_VISUAL_EFFECT, hfx_waves_small,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_heavy"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_PARRY_STUN, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_TECHABLE, 2
)
#endregion

#endregion

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