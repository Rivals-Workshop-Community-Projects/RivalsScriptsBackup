set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);
//

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//attack
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
/*set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sound_get("beam"));*/

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_waveland_ori"));

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);



set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);


set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);


set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 110);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);//16
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("beam"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 2);