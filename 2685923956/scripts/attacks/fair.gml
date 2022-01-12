set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);//12

//st
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

//an2
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("psy_1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);

//at1
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);//3
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//an2
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, sound_get("psy_1"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);

//at2
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 2);//3
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

//an3
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX, sound_get("psy_3"));
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX_FRAME, 1);

//at3
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 4);//5
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//rec
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_FAIR, 3);

//hit1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);//3
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 52);//57
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -40);//-42
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 77);//67
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);//60
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);//2
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);//0.1
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));

//hit2
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);//3
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 52);//57
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

//hit3
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);//3
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 55);//63
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 82);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);//60
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.65);//0.5//0.8
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);//4
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.6);//0.2
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));













