//AR_BAIR
//basically kurekijin

set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//bas   baa   bar
//0-4:5 5-7:3 8-10:3

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);//9//10
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);//5
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);//moved from window 2
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);//this is new
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("SWFS5"));

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);//12
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);//5
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);//3
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);//10//6
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);//8
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);//3
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);//10//6
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);//8
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);//3
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 10);//THIS WINDOW IS IASA'D UP DONT WORRY
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);//8
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);//3

//1 x:-37 y:-25 w:20 h:24 priority - sweetspot
//2 x:-4 y:-25 w:60 h:24 latter swing long
//3: back hit sourspot

set_num_hitboxes(AT_BAIR, 2);

//big hit
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);//3
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 43); 
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 34);//14
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2); //0
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);//8
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 40);//30
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.8);//.85
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);//4
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.6);//0.5//2
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);//305
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));//sfx_blow_heavy2

//front weak hit
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 18);//8
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -18);//-16
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 51);//71
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 31);//36
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);//2
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .35);//1.2
//set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 302);//303
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//sfx_blow_heavy1

/*set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1); //commenting this sourspot out, not needed
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);//3
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 43);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));*/
