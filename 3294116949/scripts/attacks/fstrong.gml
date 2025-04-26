set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .120);

//swing 1
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .120);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));


set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 4);

//swing 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);

//end
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 3);

//hit 1
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
// set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("alt_axe_strong1"));
//set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_THROWS_ROCK, 1);

//hit 2
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
// set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("alt_axe_strong2"));
//set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
// set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("alt_axe_strong2"));
//set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 1);


if(has_rune("G")){
    set_num_hitboxes(AT_FSTRONG, 4);
    
    set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
    set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 2);
    set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 5);
    set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 4);
    set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
    set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 50);
    set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 110);
    set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 80);
    set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 10);
    set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 18);
    set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
    set_hitbox_value(AT_FSTRONG, 4, HG_EFFECT, 2);
    set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.3);
    set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("alt_axe_strong2"));
    set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 1);
}
