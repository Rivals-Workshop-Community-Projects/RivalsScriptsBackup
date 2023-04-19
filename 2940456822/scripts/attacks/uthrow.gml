curr_attack = AT_UTHROW;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 10);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(curr_attack, 1);

//Launch
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 48);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 80);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 10);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);