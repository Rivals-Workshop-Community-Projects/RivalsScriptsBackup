set_attack_value(AT_FTILT, AG_CATEGORY, 0);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

//Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);//7
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);

//Active
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);//5
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2.8);//3

//Endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);//11
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);//5
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 51);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);//70
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 43);//45
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 70);//65 //75
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7.5);//7.5
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .4);//.4
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7); //7
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .2);//.2
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8); //0.9

