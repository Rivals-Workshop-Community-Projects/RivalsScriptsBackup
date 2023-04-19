//JAB 3

set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("jab3"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("jab3_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CANCEL_FRAME, 8);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTHROW, 2);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 85);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_GROUP, 2);


