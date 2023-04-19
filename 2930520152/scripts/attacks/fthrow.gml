set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

if(has_rune("N")){
    set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 20);
    set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1.5);
    set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.1);
}