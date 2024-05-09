set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
//set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_FTILT, 2, AG_ACTIVE_WINDOW, 1);

//Endlag 1
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));
//set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Endlag 2
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 164);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hfx_sword_medium);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));