set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR,6);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);

for(i = 0; i < 4; i++){
    set_hitbox_value(AT_DAIR, 2+i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_DAIR, 2+i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, 2+i, HG_HITBOX_GROUP, i+2);
    // set_hitbox_value(AT_DAIR, 2+i, HG_WINDOW, 2);
    // set_hitbox_value(AT_DAIR, 2+i, HG_WINDOW_CREATION_FRAME, 2+(i*2));
    set_hitbox_value(AT_DAIR, 2+i, HG_LIFETIME, 3);
    set_hitbox_value(AT_DAIR, 2+i, HG_HITBOX_X, 7);
    set_hitbox_value(AT_DAIR, 2+i, HG_HITBOX_Y, -13);
}
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 0);

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 7);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 41);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 57);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, -5);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 6);

// RUNES

if has_rune("D"){
    // set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 280);
    set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
}