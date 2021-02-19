//AR DAIR [WIP]

set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//das   das2  daa   dar
//0-3:4 4-5:2 6-7:2 8-13:6

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("SWE3"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);//11
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -3);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//this is new

set_num_hitboxes(AT_DAIR, 4);

//1-sour 2-sweet-priority 4-arm
//this is very roy

/*set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));*/

//aerial
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 22);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 10);//7
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);//7
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .55);//1
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);//7
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);//1.4
//set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//grounded, this hitbox does not exist
/*set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 22);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));*/

//arm
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 26);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 79);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 7);//5
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);//7
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .4);//1
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 8);//7
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .7);//1.2
//set_hitbox_value(AT_DAIR, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));










