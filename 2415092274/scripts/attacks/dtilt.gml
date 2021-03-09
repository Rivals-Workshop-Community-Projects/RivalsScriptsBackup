// AR NEW DTILT

set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//dts   dta   dth   dtr
//0-1:2 2-3:2 4-4:1 5-6:2

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);//3
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);//5
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 36);//28
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);//6
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 61);//46
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 23);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);//78
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);//4
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.25);//.35
//set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);//2
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.4);//.6
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1); //1.1
//set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 1); 
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 12); 
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

/*set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 57);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 24);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 23);
//set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
//set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 2.5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1.2); //1.8
//set_hitbox_value(AT_DTILT, 2, HG_FORCE_FLINCH, 1); 
set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 12); 
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));*/










