//JAB 2

set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("jab2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("jab2_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2, 2);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 85);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, -1);


