set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED, -9); //-7
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .21);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 16);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 15); //16
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, snd_Fstrong);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FSTRONG,2);

// normal
// set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 45); // 30
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
// set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 26);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 25);

// SWEET
// set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, snd_Fstrong_hit);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4); //3 (mostly to match the animation more)
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 51); // 36
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12); //12   aah why isnt it working
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0); //whyyy
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 10); // only for the player getting hit
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, fx_strong_sweetspot);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);