curr_attack = AT_DAIR;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dair"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 5);
//set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
//set_attack_value(curr_attack, AG_LANDING_LAG, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 10);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(curr_attack, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(curr_attack, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 3);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 9999);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 50);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 40);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  270);
set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, true);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 4);
set_hitbox_value(curr_attack, 2, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 55);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 44);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 2, HG_ANGLE,  90);
set_hitbox_value(curr_attack, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 304);

set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 3, HG_WINDOW, 4);
set_hitbox_value(curr_attack, 3, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 3, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 3, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 3, HG_WIDTH, 90);
set_hitbox_value(curr_attack, 3, HG_HEIGHT, 44);
set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 3, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, 3, HG_ANGLE,  40);
set_hitbox_value(curr_attack, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, 304);
