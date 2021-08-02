set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
//set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get( "pomme_scream4" ));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -12);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_OFF_LEDGE, 0);

set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 24); //24
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -43); //-43
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 32); //32
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, shout_hfx1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 55); //55
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -40); //-40
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 55); //55
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, shout_hfx2);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1); //Sino booty blast
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 10);