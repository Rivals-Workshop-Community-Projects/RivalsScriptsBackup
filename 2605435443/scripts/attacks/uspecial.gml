set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("tuba"));

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);


set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 78);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 36);