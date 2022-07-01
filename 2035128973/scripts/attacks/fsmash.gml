if (get_synced_var(player)) exit;
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 7);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LENGTH, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_boss_laser"));

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 12);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 4, AG_WINDOW_HSPEED, -2);

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 6);
set_hitbox_value(49, 1, HG_HITBOX_X, -26);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 3);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 2, HG_LIFETIME, 1);
set_hitbox_value(49, 2, HG_WIDTH, 1000);
set_hitbox_value(49, 2, HG_HEIGHT, 300);
set_hitbox_value(49, 2, HG_HITBOX_X, 400);
set_hitbox_value(49, 2, HG_HITBOX_Y, -30);
set_hitbox_value(49, 2, HG_PRIORITY, 9);
set_hitbox_value(49, 2, HG_DAMAGE, 1);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_ANGLE, 5);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 50);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));