set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// Start Ground
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
// Dig into ground
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
// Ground wait
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
// Kick
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
// Kick Endlag
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
// Start Air
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 4);
// Air Drill
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
// Dig fail
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

set_num_hitboxes(AT_DSPECIAL, 5);

// Sweet
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, HFX_KRA_ROCK_BIG);

// Sour
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, HFX_GEN_DIR);

// Burst
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, HFX_KRA_ROCK_SMALL);

// Spin
for(i = 4; i <= 5; i++){
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DSPECIAL, i, HG_WINDOW, 7);
    set_hitbox_value(AT_DSPECIAL, i, HG_LIFETIME, 4);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_DSPECIAL, i, HG_SHAPE, 2);
    set_hitbox_value(AT_DSPECIAL, i, HG_WIDTH, 30);
    set_hitbox_value(AT_DSPECIAL, i, HG_HEIGHT, 70);
    set_hitbox_value(AT_DSPECIAL, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_DSPECIAL, i, HG_DAMAGE, 2);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DSPECIAL, i, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_HITPAUSE, 5.5);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.5);
    set_hitbox_value(AT_DSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    set_hitbox_value(AT_DSPECIAL, i, HG_ANGLE, 270);
    set_hitbox_value(AT_DSPECIAL, i, HG_ANGLE_FLIPPER, 3);
    set_hitbox_value(AT_DSPECIAL, i, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
}
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 5);

// RUNES
if has_rune("K"){
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 13);
    set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 7);
}