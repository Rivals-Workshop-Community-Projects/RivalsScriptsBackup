set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//fas   faa   far
//0-1:2 2-3:2 4-6:3

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 11);//9//10
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);//27
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

//38 -26 56 59
//67 -22 52 46
//34 -5 94 15

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 56);//60
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);//64
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);//7
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);//60
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.95);//1.1//1.0
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.6);//0.5
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);//1.1//1.05
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("claw"));

set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 67);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 58);//66
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);//58
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);//7
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 70);//60
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.95);//1.1//1.0
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.6);//0.5
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 1);//1.1//1.05
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("claw"));










