set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .22);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));


set_num_hitboxes(AT_DATTACK, 3);

// Ground
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 24);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 1, HG_GROUNDEDNESS, 0);

// Ground early
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 24);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 2, HG_GROUNDEDNESS, 0);

// Landing Hitbox
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 72);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 25);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);

// RUNES
if has_rune("L"){
    set_num_hitboxes(AT_DATTACK, 4);
    set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
    set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 49);
    set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 10);
    set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -20);
    set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 24);
    set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 40);
    set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
    set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 3);
    set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 310);
    set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .1);
    set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
    set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
    set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 2);
}