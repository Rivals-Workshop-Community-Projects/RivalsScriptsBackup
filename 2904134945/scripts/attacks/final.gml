set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_absa_jump"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LENGTH, 24);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 8);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 8);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, 0);
set_hitbox_value(49, 1, HG_WIDTH, room_width*2);
set_hitbox_value(49, 1, HG_HEIGHT, room_height*2);
set_hitbox_value(49, 1, HG_PRIORITY, 9);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 30);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);