set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_BAIR, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_BAIR, 2, AG_ACTIVE_WINDOW, 1);

//Endlag
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_GOTO, 8);

//Getting Stuck on a Wall
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));

//Stuck on a Wall (loop)
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED, 0);

//Jumping out
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_BAIR, 2);

//Sweetspot (Tipper)
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -155);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hfx_torment_small);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit1"));

//Sourspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -70);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 145);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));