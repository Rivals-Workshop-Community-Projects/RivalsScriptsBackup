//La Reina ftilt.gml
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//Startup Hold
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 5);

//Swish
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HITPAUSE_FRAME, 3);

//Hold
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Recovery
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

var e_hitbox = 1; // round top box
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_WINDOW, 3);
//set_hitbox_value(AT_FTILT, e_hitbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, e_hitbox, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_X, 48);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, e_hitbox, HG_WIDTH, 74);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HEIGHT, 38);
set_hitbox_value(AT_FTILT, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, e_hitbox, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, e_hitbox, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, e_hitbox, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, e_hitbox, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_FTILT, e_hitbox, HG_EXTRA_CAMERA_SHAKE, 2);

var e_hitbox = 2; // squarish bottom box
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_WINDOW, 3);
//set_hitbox_value(AT_FTILT, e_hitbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_X, 56);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, e_hitbox, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HEIGHT, 28);
set_hitbox_value(AT_FTILT, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, e_hitbox, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, e_hitbox, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, e_hitbox, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, e_hitbox, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, e_hitbox, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, e_hitbox, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_FTILT, e_hitbox, HG_EXTRA_CAMERA_SHAKE, 2);
