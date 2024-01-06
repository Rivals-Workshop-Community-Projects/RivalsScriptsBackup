// dattack.gml

set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX,  asset_get("sfx_orca_shake_water"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);


set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 5)

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DATTACK, 3, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_DATTACK, 4, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));

set_hitbox_value(AT_DATTACK, 1, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_DATTACK, 2, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_DATTACK, 3, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_DATTACK, 4, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_DATTACK, 5, HG_SLUDGE_EFFECT, 14);

set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, vfx_sludge_smallest );

set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 20);

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