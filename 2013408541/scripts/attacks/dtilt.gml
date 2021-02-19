set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_TYPE, 2);
//set_window_value(AT_DTILT, 2, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DTILT,10);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 10, HG_HITBOX_X, 55);
set_hitbox_value(AT_DTILT, 10, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 10, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 10, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 10, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 10, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 10, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 10, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 10, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 10, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 10, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DTILT, 10, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DTILT, 10, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_DTILT, 10, HG_HITBOX_GROUP, 1);