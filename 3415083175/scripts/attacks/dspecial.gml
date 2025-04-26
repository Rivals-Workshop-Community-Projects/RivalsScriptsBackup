set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);

set_num_hitboxes(AT_DSPECIAL, 2);

//body burst
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, HFX_ABS_ZAP_HUGE);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 6);

//lightning channel
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -140);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, HFX_ABS_ZAP_DIR);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);