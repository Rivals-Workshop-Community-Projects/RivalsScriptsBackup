set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("basslouder"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
