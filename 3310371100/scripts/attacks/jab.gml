set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_both"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_both_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);

//1
//start
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

//anticipation
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 1);

//atk
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);

//2
//start
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 2);

//anticipation
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 2);

//atk
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_JAB, 11, AG_IASA_THIS_WINDOW, 1);
//set_window_value(AT_JAB, 11, AG_MUNO_WINDOW_EXCLUDE, 1);











set_num_hitboxes(AT_JAB, 2); 

//1
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);//6
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);//0.2
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 108);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);//6
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);//65//40
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);//7
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.35)//2;//0.35
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));












