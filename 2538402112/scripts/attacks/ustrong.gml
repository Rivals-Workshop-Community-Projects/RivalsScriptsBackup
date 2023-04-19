set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("Move_Start"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("Shine_Small"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_waterwarp"));

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_orca_absorb"));

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG, 5);

for(i = 1; i < 5; i++){ 
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_GROUP, i);
    set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 3);
    set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 2);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, -4);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -108);
    set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 54);
    set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 220);
    set_hitbox_value(AT_USTRONG, i, HG_SHAPE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 270);
    set_hitbox_value(AT_USTRONG, i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_USTRONG, i, HG_SDI_MULTIPLIER, 0.5);
    set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 0.2);
    set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, 9);
    set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT_Y_OFFSET, 15);
    set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
    set_hitbox_value(AT_USTRONG, i, HG_TECHABLE, 1);
}
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
//Sweet
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -108);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 54);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 220);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, HFX_ORC_WATER_BIG);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));

// RUNES
if has_rune("L"){
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 9);
    set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 10);
}