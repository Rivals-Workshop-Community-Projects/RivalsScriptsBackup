set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// Landing
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USPECIAL, 2);

for(i = 1; i < 3; i++){
    set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_WINDOW, 4);
    set_hitbox_value(AT_USPECIAL, i, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(AT_USPECIAL, i, HG_LIFETIME, 28);
    set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_X, 12);
    set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_Y, -5);
    set_hitbox_value(AT_USPECIAL, i, HG_WIDTH, 40);
    set_hitbox_value(AT_USPECIAL, i, HG_HEIGHT, 30);
    set_hitbox_value(AT_USPECIAL, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_GROUP, 5);
    set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 7);
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 310);
    set_hitbox_value(AT_USPECIAL, i, HG_GROUNDEDNESS, 2);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_USPECIAL, i, HG_KNOCKBACK_SCALING, 0.45);
    set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_USPECIAL, i, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(AT_USPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 304);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT_X_OFFSET, -10);
    set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT_Y_OFFSET, -10);
    set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 0);
}
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0);
