//FSTRONG 3

set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fstrong3"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTHROW, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW,2);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 145);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
