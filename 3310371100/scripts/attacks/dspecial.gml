set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_v2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_v2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "true startup of 8 frames. hitbox startup is 12 frames. 80 frames inbetween is the max duration of umbrella hold. after that, endlag of 9 frames excluding endlag.");

//start
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);//8
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

//ease
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 80);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);//7
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_DSPECIAL_2, 5, AG_IASA_THIS_WINDOW, 1);

//end
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 200);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
//wait what is this window- oh yeah, parried thing attempt

//DOWNPOUR
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_GOTO, 7);




set_num_hitboxes(AT_DSPECIAL_2, 3); 

//1
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 82);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 16);//14
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -17);//-8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 55);//50
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 46);//28
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 82);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 69);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 0);


//DOWNPOUR
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 82);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 16);//14
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -17);//-8
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 55);//50
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 46);//28
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));






