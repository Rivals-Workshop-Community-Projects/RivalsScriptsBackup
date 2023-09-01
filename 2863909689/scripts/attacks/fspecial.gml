set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 13);

//overshoot
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//travel
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//pratfall transition
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);

//rising grab
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 180);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);

//falling grab
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 180);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);

//grab land
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);

//grab hit 1
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);

//grab hit 2
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);

//grab on-hit endlag
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 20);

//grab cancel
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 21);

//grab cancel endlag
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 20);


set_num_hitboxes(AT_FSPECIAL, 3);

//grab
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);

//grab finisher
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, explosion_effect);

//grab combo hit
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);

//grab cancel hit
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 50); 
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 301);