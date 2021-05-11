set_attack_value(AT_JAB_G, AG_SPRITE, sprite_get("jabg"));
set_attack_value(AT_JAB_G, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB_G, AG_HURTBOX_SPRITE, sprite_get("jabg_hurt"));

//jabg1 start
set_window_value(AT_JAB_G, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB_G, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB_G, 1, AG_WINDOW_SFX_FRAME, 6);

//jabg1 active
set_window_value(AT_JAB_G, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB_G, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//jabg1 end
set_window_value(AT_JAB_G, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB_G, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB_G, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB_G, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB_G, 3, AG_WINDOW_CANCEL_FRAME, 5); 

//jabg2 start
set_window_value(AT_JAB_G, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB_G, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB_G, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB_G, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB_G, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//jabg2 active
set_window_value(AT_JAB_G, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB_G, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB_G, 5, AG_WINDOW_ANIM_FRAME_START, 12);

//jabg2 end
set_window_value(AT_JAB_G, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB_G, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB_G, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB_G, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB_G, 6, AG_WINDOW_CANCEL_FRAME, 6);

//jabg3 start
set_window_value(AT_JAB_G, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB_G, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB_G, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB_G, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB_G, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//jabg3 active
set_window_value(AT_JAB_G, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB_G, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB_G, 8, AG_WINDOW_ANIM_FRAME_START, 17);

//jabg3 end
set_window_value(AT_JAB_G, 9, AG_WINDOW_LENGTH, 21);
set_window_value(AT_JAB_G, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB_G, 9, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_JAB_G, 4);

//jabg1
set_hitbox_value(AT_JAB_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB_G, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB_G, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB_G, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_JAB_G, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_JAB_G, 1, HG_WIDTH, 82);
set_hitbox_value(AT_JAB_G, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_JAB_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB_G, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB_G, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB_G, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB_G, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB_G, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB_G, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//jabg2
set_hitbox_value(AT_JAB_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB_G, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB_G, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB_G, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_JAB_G, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB_G, 2, HG_WIDTH, 109);
set_hitbox_value(AT_JAB_G, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB_G, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB_G, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB_G, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB_G, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB_G, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB_G, 2, HG_HITBOX_GROUP, 1);

//jabg3 upper
set_hitbox_value(AT_JAB_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB_G, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB_G, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB_G, 3, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB_G, 3, HG_HITBOX_Y, -65);
set_hitbox_value(AT_JAB_G, 3, HG_WIDTH, 77);
set_hitbox_value(AT_JAB_G, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_JAB_G, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB_G, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB_G, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB_G, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB_G, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_JAB_G, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB_G, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB_G, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB_G, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB_G, 3, HG_HITBOX_GROUP, 2);

//jabg3 lower
set_hitbox_value(AT_JAB_G, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB_G, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB_G, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB_G, 4, HG_HITBOX_X, 74);
set_hitbox_value(AT_JAB_G, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB_G, 4, HG_WIDTH, 71);
set_hitbox_value(AT_JAB_G, 4, HG_HEIGHT, 91);
set_hitbox_value(AT_JAB_G, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB_G, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB_G, 4, HG_ANGLE, 361);
set_hitbox_value(AT_JAB_G, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB_G, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_JAB_G, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB_G, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB_G, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB_G, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB_G, 4, HG_HITBOX_GROUP, 2);
