set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_CATEGORY, 2);

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
// set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, -10); // -10
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 2);


set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 11);//8
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("alt_axe3"));
//set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("alt_axe3"));
//set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 0);

// set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
// set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 35);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
// set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 60);
// set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 80);
// set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 5);
// set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
// set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
// set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
// set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 0);
