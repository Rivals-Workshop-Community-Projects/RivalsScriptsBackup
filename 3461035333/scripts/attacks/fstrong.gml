set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get("fstrong_air"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get("fstrong_air_hurt"));
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSTRONG, AG_LANDING_LAG, 7);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);

//Startup + charge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Startup 2
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

//Active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 5);//10
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 16);//12.7

//Endlag 1
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Endlag 2
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 14);//13
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 1);

//attack 1
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 55);//50
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 45);//35
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);//40
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);//0.9
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);//10
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 5);
