set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
//set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("airdodge"));
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("super_dash"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("mfx_notice"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_EXTRA_2, 1);

//Emerald spawning
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 34);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 89);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 89);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);