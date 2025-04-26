set_attack_value(AT_UTILT_G, AG_SPRITE, sprite_get("utiltg"));
set_attack_value(AT_UTILT_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT_G, AG_HURTBOX_SPRITE, sprite_get("utiltg_hurt"));

//utiltg start
set_window_value(AT_UTILT_G, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT_G, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT_G, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//utiltg active
set_window_value(AT_UTILT_G, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT_G, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT_G, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT_G, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT_G, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//utiltg end
set_window_value(AT_UTILT_G, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT_G, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT_G, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT_G, 5);

//lower1
set_hitbox_value(AT_UTILT_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_G, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT_G, 1, HG_HITBOX_X, 67);
set_hitbox_value(AT_UTILT_G, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_UTILT_G, 1, HG_WIDTH, 44);
set_hitbox_value(AT_UTILT_G, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_UTILT_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT_G, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UTILT_G, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT_G, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT_G, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT_G, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT_G, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//middle1
set_hitbox_value(AT_UTILT_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_G, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_G, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT_G, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT_G, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UTILT_G, 2, HG_WIDTH, 52);
set_hitbox_value(AT_UTILT_G, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_UTILT_G, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT_G, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT_G, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT_G, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT_G, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT_G, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT_G, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//lower2
set_hitbox_value(AT_UTILT_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_G, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_G, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT_G, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT_G, 3, HG_HITBOX_X, 74);
set_hitbox_value(AT_UTILT_G, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT_G, 3, HG_WIDTH, 65);
set_hitbox_value(AT_UTILT_G, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_UTILT_G, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT_G, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_UTILT_G, 3, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT_G, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT_G, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT_G, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT_G, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//middle2
set_hitbox_value(AT_UTILT_G, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_G, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_G, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT_G, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT_G, 4, HG_HITBOX_X, 41);
set_hitbox_value(AT_UTILT_G, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT_G, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT_G, 4, HG_HEIGHT, 71);
set_hitbox_value(AT_UTILT_G, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT_G, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT_G, 4, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT_G, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT_G, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT_G, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT_G, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//upper
set_hitbox_value(AT_UTILT_G, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_G, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_G, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT_G, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT_G, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_UTILT_G, 5, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT_G, 5, HG_WIDTH, 77);
set_hitbox_value(AT_UTILT_G, 5, HG_HEIGHT, 72);
set_hitbox_value(AT_UTILT_G, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_G, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_UTILT_G, 5, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT_G, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT_G, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT_G, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT_G, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT_G, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));