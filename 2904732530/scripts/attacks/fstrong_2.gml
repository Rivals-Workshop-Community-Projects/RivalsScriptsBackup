//FSTRONG 2

set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_leafy_hit1"));

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2,2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
