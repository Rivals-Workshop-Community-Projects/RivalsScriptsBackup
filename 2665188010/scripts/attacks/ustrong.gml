set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
// set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HITPAUSE_FRAME, 7);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);
//Link
for(i = 1; i <= 2; i++){
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 3);
    set_hitbox_value(AT_USTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 6);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, 4);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -55);
    set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 20);
    set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 50);
    set_hitbox_value(AT_USTRONG, i, HG_SHAPE, 0);
    set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 3);
    set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 90);
    set_hitbox_value(AT_USTRONG, i, HG_ANGLE_FLIPPER, 7);
    set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, 3);
    set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT_Y_OFFSET, -10);
    set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, asset_get("sfx_burnapplied"));
}
//Link 2
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);

//Launch
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 85);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.95);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));