set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_FAIR, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_FAIR, 2, AG_ACTIVE_WINDOW, 1);

//Active
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 5);

//Hitbox1 (Front)
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 107);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 79);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 159);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .9)
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hfx_sword_medium);

//Hitbox1 (Back)
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .9)
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hfx_sword_medium);

//Hitbox1 (Up)
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 83);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -112);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 61);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .9)
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hfx_sword_medium);

//Hitbox2 (Down)
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 53);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 31);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 167);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 112);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .7)
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, hfx_sword_small);

//Hitbox2 (Front)
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 110);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 73);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 158);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .7)
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, sound_get("dbd_weapon_hit2"));
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, hfx_sword_small);