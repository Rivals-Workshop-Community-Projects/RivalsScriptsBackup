set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 6);

for(i = 1; i <= 6; i++){
    set_hitbox_value(AT_DAIR, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, i, HG_WINDOW, 2);
    set_hitbox_value(AT_DAIR, i, HG_LIFETIME, 2);
    set_hitbox_value(AT_DAIR, i, HG_HITBOX_X, 7);
    set_hitbox_value(AT_DAIR, i, HG_HITBOX_Y, -7);
    set_hitbox_value(AT_DAIR, i, HG_WIDTH, 35);
    set_hitbox_value(AT_DAIR, i, HG_HEIGHT, 55);
    set_hitbox_value(AT_DAIR, i, HG_SHAPE, 0);
    set_hitbox_value(AT_DAIR, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_DAIR, i, HG_HITBOX_GROUP, i);
    set_hitbox_value(AT_DAIR, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_DAIR, i, HG_ANGLE, 280);
    set_hitbox_value(AT_DAIR, i, HG_BASE_KNOCKBACK, 2);
    set_hitbox_value(AT_DAIR, i, HG_KNOCKBACK_SCALING, 0.1);
    set_hitbox_value(AT_DAIR, i, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(AT_DAIR, i, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_DAIR, i, HG_EXTRA_HITPAUSE, 1);
    set_hitbox_value(AT_DAIR, i, HG_VISUAL_EFFECT, HFX_GEN_DIR);
    set_hitbox_value(AT_DAIR, i, HG_VISUAL_EFFECT_Y_OFFSET, 18);
    set_hitbox_value(AT_DAIR, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(AT_DAIR, i, HG_ANGLE_FLIPPER, 4);
}
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 41);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 57);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 6, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, HFX_GEN_SWEET);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, -5);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

if has_rune("B"){
    set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
}
if has_rune("D"){
    set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
}