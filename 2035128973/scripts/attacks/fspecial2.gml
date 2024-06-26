if (get_synced_var(player) == 15005) exit;
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED, 3);

set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_2, 3);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);