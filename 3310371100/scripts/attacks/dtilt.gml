set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_v2"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_v2_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 8);

//start
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//anticipation
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 2);

//attack1
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);

//wait
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);//7
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 3);

//attack2
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 8);//6
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 8, AG_IASA_THIS_WINDOW, 1);
set_window_value(AT_DTILT, 8, AG_MUNO_WINDOW_EXCLUDE, 1);












set_num_hitboxes(AT_DTILT, 2); 

//1
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 83);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 68);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 77);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
//set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));












