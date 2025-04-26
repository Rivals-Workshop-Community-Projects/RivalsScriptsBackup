set_attack_value(AT_DTILT_G, AG_SPRITE, sprite_get("dtiltg"));
set_attack_value(AT_DTILT_G, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT_G, AG_HURTBOX_SPRITE, sprite_get("dtiltg_hurt"));

//dtiltg start1
set_window_value(AT_DTILT_G, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT_G, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT_G, 1, AG_WINDOW_SFX_FRAME, 6);

//dtiltg active1
set_window_value(AT_DTILT_G, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT_G, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//dtiltg end1
set_window_value(AT_DTILT_G, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT_G, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT_G, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//dtiltg start2
set_window_value(AT_DTILT_G, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT_G, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT_G, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT_G, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT_G, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//dtiltg active2
set_window_value(AT_DTILT_G, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT_G, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT_G, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//dtiltg end2
set_window_value(AT_DTILT_G, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT_G, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT_G, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DTILT_G, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT_G, 2);

//swipe1
set_hitbox_value(AT_DTILT_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT_G, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT_G, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT_G, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DTILT_G, 1, HG_WIDTH, 111);
set_hitbox_value(AT_DTILT_G, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT_G, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT_G, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT_G, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT_G, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT_G, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT_G, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTILT_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT_G, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//swipe2
set_hitbox_value(AT_DTILT_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT_G, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT_G, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT_G, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT_G, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DTILT_G, 2, HG_WIDTH, 111);
set_hitbox_value(AT_DTILT_G, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT_G, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT_G, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT_G, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT_G, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT_G, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT_G, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTILT_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT_G, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT_G, 2, HG_HITBOX_GROUP, 1);
