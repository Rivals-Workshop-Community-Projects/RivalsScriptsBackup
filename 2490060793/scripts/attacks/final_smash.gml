set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("fs"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fs_hurt"));

set_attack_value(49, AG_NUM_WINDOWS, 8);

set_window_value(49, 1, AG_WINDOW_LENGTH, 14);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("bar_swing_heavy"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(49, 2, AG_WINDOW_LENGTH, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(49, 3, AG_WINDOW_LENGTH, 12);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//teleport away on hit
set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(49, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(49, 4, AG_WINDOW_SFX_FRAME, 0);

//invisible while draw script runs
set_window_value(49, 5, AG_WINDOW_LENGTH, 30);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(49, 5, AG_WINDOW_SFX_FRAME, 20);

//reappear and swing
set_window_value(49, 6, AG_WINDOW_LENGTH, 18);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 6, AG_WINDOW_SFX, sound_get("bar_swing_heavy"));
set_window_value(49, 6, AG_WINDOW_SFX_FRAME, 15);

set_window_value(49, 7, AG_WINDOW_LENGTH, 8);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(49, 8, AG_WINDOW_LENGTH, 16);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_HITBOX_X, 70);
set_hitbox_value(49, 1, HG_HITBOX_Y, -40);
set_hitbox_value(49, 1, HG_WIDTH, 120);
set_hitbox_value(49, 1, HG_HEIGHT, 80);
set_hitbox_value(49, 1, HG_PRIORITY, 4);
set_hitbox_value(49, 1, HG_DAMAGE, 10);
set_hitbox_value(49, 1, HG_ANGLE, 50);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 120);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_HITBOX_X, 30);
set_hitbox_value(49, 2, HG_HITBOX_Y, -80);
set_hitbox_value(49, 2, HG_WIDTH, 140);
set_hitbox_value(49, 2, HG_HEIGHT, 100);
set_hitbox_value(49, 2, HG_PRIORITY, 4);
set_hitbox_value(49, 2, HG_DAMAGE, 10);
set_hitbox_value(49, 2, HG_ANGLE, 50);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 120);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 7);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 3, HG_LIFETIME, 4);
set_hitbox_value(49, 3, HG_HITBOX_X, 120);
set_hitbox_value(49, 3, HG_HITBOX_Y, -60);
set_hitbox_value(49, 3, HG_WIDTH, 220);
set_hitbox_value(49, 3, HG_HEIGHT, 220);
set_hitbox_value(49, 3, HG_PRIORITY, 4);
set_hitbox_value(49, 3, HG_DAMAGE, 30);
set_hitbox_value(49, 3, HG_ANGLE, 40);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(49, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(49, 3, HG_EFFECT, 99);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 157);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 2);