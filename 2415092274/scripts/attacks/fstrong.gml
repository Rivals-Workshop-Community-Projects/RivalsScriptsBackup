//AR FSTRONG

set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//fsc   fss   fsa   fsr
//0-1:2 2-2:1 3-4:2 5-7:3

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10); //4//3
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_hit"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);//12
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);//20//25
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 77);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);//8
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 42);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);//7.5
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);//.95
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);//5.5
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);//1.75
//set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.77);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);//6
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);//55
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);//.7
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);//5
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);//1.6
//set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));




















