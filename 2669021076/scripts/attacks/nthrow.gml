set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 29);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_NTHROW, 2);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 136);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 65);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, 306); // shovel effect
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NTHROW, 2, HG_EXTRA_CAMERA_SHAKE, 2);
