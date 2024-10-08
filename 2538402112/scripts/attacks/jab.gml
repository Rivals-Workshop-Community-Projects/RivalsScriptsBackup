set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
// Jab1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);
// Jab2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);
// Jab3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_JAB, 3);

// Jab1
for(i = 1; i <= 6; i++){
    set_hitbox_value(AT_JAB, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_JAB, i, HG_WINDOW, 2);
    set_hitbox_value(AT_JAB, i, HG_LIFETIME, 3);
    set_hitbox_value(AT_JAB, i, HG_HITBOX_X, 44);
    set_hitbox_value(AT_JAB, i, HG_HITBOX_Y, -37);
    set_hitbox_value(AT_JAB, i, HG_WIDTH, 50);
    set_hitbox_value(AT_JAB, i, HG_HEIGHT, 40);
    set_hitbox_value(AT_JAB, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_JAB, i, HG_DAMAGE, 4);
    set_hitbox_value(AT_JAB, i, HG_ANGLE, 40);
    set_hitbox_value(AT_JAB, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_JAB, i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_JAB, i, HG_VISUAL_EFFECT, HFX_MAY_LEAF_BIG);
    set_hitbox_value(AT_JAB, i, HG_VISUAL_EFFECT_X_OFFSET, 12);
    set_hitbox_value(AT_JAB, i, HG_VISUAL_EFFECT_Y_OFFSET, 10);
    set_hitbox_value(AT_JAB, i, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
    set_hitbox_value(AT_JAB, i, HG_HITBOX_GROUP, i);
}
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 3);
// Jab2
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
// Jab3
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.85);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, HFX_MAY_LEAF_DASH);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));