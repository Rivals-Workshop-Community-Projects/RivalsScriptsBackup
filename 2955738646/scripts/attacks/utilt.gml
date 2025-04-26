set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1); //Getting ready
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1); //Moving forward
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1); //Uppercut
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, 0.1);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1); //Follow-through endlag
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("utilt_hit"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
