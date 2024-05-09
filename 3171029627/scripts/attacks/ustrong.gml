set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Release Window
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
//set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_USTRONG, 3, AG_ACTIVE_WINDOW, 1);

//Swing Endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Blade hits the ground endlag
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

//Vertical Hitbox
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 68);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 196);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, hfx_sword_large);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));

//Horizontal Hitbox
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, hfx_sword_large);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));

//Blade hits the ground
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -118);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 76);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));