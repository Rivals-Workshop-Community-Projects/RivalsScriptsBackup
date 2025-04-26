set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);

//start
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);//8
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 4);

//antici
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH,  4);//4
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);

//atk
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 5);

//hold
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 4);

//end
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 1); 

//cleanhit
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 108);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));





