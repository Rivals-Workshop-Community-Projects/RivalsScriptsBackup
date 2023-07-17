set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("yes"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_ghost_glove"));
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, sound_get("slash"));
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 134);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 250);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 3, HG_EFFECT, 15);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 140);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 270);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 5);
