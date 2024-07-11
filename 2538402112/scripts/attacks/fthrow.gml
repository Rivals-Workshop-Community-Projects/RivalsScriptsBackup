// NSpecial Iron Thorn
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("fthrow_air_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 28);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, HFX_GEN_DIR);

set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("ironthorn"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_GEN_DIR);

if has_rune("M"){
    set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 22);
}