set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//start antic atk1  atkan atk2  atkh  recov1 recov2
//0-0:1 1-1:1 2-3:2 4-4:1 5-6:2 7-7:1 8-10:3 11-11:1

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("swing2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);//18
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, sound_get("EnemySword"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 5);//6
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 13);//17
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 4);//9
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR, 4);

//38 -26 56 59
//67 -22 52 46
//34 -5 94 15

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);//5//2
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit4"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 67);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 67);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 63);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 67);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);//5//2
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit4"));

//circle
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 116);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 116);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 6);//8//5
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 65);//70//65
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("claw"));