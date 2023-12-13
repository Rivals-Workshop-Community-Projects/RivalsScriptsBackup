set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 35);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);
// set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 9);
// set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_UTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_UTHROW, 2);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, get_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 65);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 55);
set_hitbox_value(AT_UTHROW, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
// set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);

// set_hitbox_value(AT_UTHROW, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, get_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -145);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 65);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 50);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 20);
// set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, uthrow_hitfx);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
// set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -1);