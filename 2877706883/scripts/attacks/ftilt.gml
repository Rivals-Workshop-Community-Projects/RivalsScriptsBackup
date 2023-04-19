curr_attack = AT_FTILT;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 2, AG_WINDOW_HSPEED, 2);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 3, AG_WINDOW_HSPEED, 4);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 2);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  45);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(curr_attack, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 35);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 6);
set_hitbox_value(curr_attack, 2, HG_ANGLE,  45);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 304);
