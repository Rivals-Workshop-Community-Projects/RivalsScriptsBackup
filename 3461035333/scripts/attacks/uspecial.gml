set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, prat_land_time);//18

//Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);//9
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("lasso"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

//Active
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);//30
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12.9);//-12.8

//Active 2
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);//30
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 15);//20
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_USPECIAL, 1)

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 20);//27
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -32);//-30
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);//5
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 45);//50
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 45);//50
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);//7
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);//90
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);//4
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);//0.3
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6); // 1
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);//5
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 1);//-1
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 311);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
