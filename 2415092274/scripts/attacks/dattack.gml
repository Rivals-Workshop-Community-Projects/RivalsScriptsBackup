//AR DASHATTACK [WIP]

set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));

//das   das2  daa   dah   dar   dar2
//0-2:3 3-3:1 4-6:3 7-7:1 8-9:2 10-10:1


set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);//7
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("SWB2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);//12
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 8);//6
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 6);//8//9
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 4);//8//9
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 1);

//1:forward
//2:backward

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);//4
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 70);//50
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);//5.5
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.6);//.8
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .6);//1.7
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 302); //303
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("ARSlash"));












