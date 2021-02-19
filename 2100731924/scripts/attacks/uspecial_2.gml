set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_gus_jump"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -8);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_USPECIAL_2, 3);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -59);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);