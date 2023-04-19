curr_attack = AT_DTILT;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 10);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 16);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 35);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 70);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  30);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
