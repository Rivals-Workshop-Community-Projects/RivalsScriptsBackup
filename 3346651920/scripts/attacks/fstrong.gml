set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//start
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);//8
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

//pre
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);

//lunge
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 4);

//whiff
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

//whiff2
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

//empty window just in case
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);

//start
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

//starthold
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);

//antici
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);

//atk
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_FSTRONG, 2); 

//grab
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 76);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 31);//27
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//thrower (stab)
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -70);//-80
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);//40
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);//40
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hit5_t_b"));