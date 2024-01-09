// ustrong.gml

set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_frog_dstrong"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 5)

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 125);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -145);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_sludgehit_heavy"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_sludge_large_2 );
set_hitbox_value(AT_USTRONG, 1, HG_SLUDGE_EFFECT, 70);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 95);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, vfx_sludge_small );
set_hitbox_value(AT_USTRONG, 2, HG_SLUDGE_EFFECT, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 130);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 120);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, vfx_sludge_smaller );
set_hitbox_value(AT_USTRONG, 4, HG_SLUDGE_EFFECT, 30);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 90);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, vfx_sludge_smaller );
set_hitbox_value(AT_USTRONG, 5, HG_SLUDGE_EFFECT, 30);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_PARTICLE_NUM, 1);


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