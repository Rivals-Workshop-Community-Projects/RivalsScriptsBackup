set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//start precharge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//start
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);

//anticipation //also used for buffer
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);//hopefully just basically 2
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5);

var len_A = 2;
var len_B = 20;
var len_C = 7;

//atk F
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, len_A);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

//hold F
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, len_B);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);

//hold 2 F
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, len_C);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);

//recover 1
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//recover 2
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 8, AG_IASA_THIS_WINDOW, 1);



//atk U
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, len_A);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);

//hold U
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, len_B);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);

//hold 2 U
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, len_C);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_GOTO, 7);



//atk D
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, len_A);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);

//hold D
set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, len_B);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 3);

//hold 2 D
set_window_value(AT_FSTRONG, 14, AG_WINDOW_LENGTH, len_C);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_GOTO, 7);






set_num_hitboxes(AT_FSTRONG, 6); 

//close (stronger apparently??)
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 44);//41
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 65);//38
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);//4
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);//1.2
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);//10...ranno value//7
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);//0.8...ranno value+1//0.9
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("ice_hit"));//additional sound in hit_player

//far
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 28);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);//3
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);//1.2
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);//8...ranno value//6
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);//0.7...ranno value+1//0.8
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("ice_hit"));//additional sound in hit_player



//copy UP close
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 25);//38
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);

//copy UP far
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);



//copy DOWN close
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 12);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 31);//44
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -19);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);

//copy DOWN far
set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 12);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -19);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 1);









