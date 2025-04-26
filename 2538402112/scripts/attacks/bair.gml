set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

// Sour
for(i = 1; i <= 2; i++){
    set_hitbox_value(AT_BAIR, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_BAIR, i, HG_WINDOW, 2);
    set_hitbox_value(AT_BAIR, i, HG_LIFETIME, 7);
    set_hitbox_value(AT_BAIR, i, HG_HITBOX_X, -37);
    set_hitbox_value(AT_BAIR, i, HG_HITBOX_Y, -25);
    set_hitbox_value(AT_BAIR, i, HG_WIDTH, 55);
    set_hitbox_value(AT_BAIR, i, HG_HEIGHT, 25);
    set_hitbox_value(AT_BAIR, i, HG_SHAPE, 2);
    set_hitbox_value(AT_BAIR, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_BAIR, i, HG_DAMAGE, 6);
    set_hitbox_value(AT_BAIR, i, HG_ANGLE, 60);
    set_hitbox_value(AT_BAIR, i, HG_ANGLE_FLIPPER, 5);
    set_hitbox_value(AT_BAIR, i, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_BAIR, i, HG_KNOCKBACK_SCALING, 0.4);
    set_hitbox_value(AT_BAIR, i, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_BAIR, i, HG_HITPAUSE_SCALING, 0.5);
    set_hitbox_value(AT_BAIR, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
// Sour 2
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -25);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -25);

// Sweet
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -58);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6.0);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, HFX_GEN_SWEET);

if has_rune("B"){
    set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
    set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 3);
}