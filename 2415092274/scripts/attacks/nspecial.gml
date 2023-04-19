//AO NAIR 2

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 6);//4
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);//4

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);//6
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);//14
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);//8
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

//ball
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);

//end attack
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);//8
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 14);//10
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);

//1 x:-6 y:-9 w:24 h:24
//2 x:29 y:-19 w:45 h:28
//8 first 5 later
//both hitbox has same knockback damage etc
//set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);


set_num_hitboxes(AT_NSPECIAL, 2);

//ball
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 53);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);//65
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);//.68
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);//.21
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);//2
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);//.9
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//end
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 104);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 93);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 65);//65
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);//.68
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.0);//.21
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);//2
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.75);//.9//0.4
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("DST1"));










