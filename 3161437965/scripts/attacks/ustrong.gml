set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG, 1);

// set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
// set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
// set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
// set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 34);
// set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -14);
// set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
// set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 40);
// set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
// set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
// set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.95);
// set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
// set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_strike_up);
// set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
// set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
// set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_strike_up);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));

if(has_rune("F")){
    set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, -.1);
}