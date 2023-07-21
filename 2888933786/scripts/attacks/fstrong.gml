set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 22);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, cartoon_punch);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .8);
