curr_attack = AT_USTRONG;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 5);
set_attack_value(curr_attack, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(curr_attack, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 3, AG_WINDOW_SFX_FRAME, 8);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(curr_attack, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(curr_attack, 2);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -70);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 12);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
//set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 8);

set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 4);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 90);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 9);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 60);
set_hitbox_value(curr_attack, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, 2, HG_HIT_LOCKOUT, 8);

