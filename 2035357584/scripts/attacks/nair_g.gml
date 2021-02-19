set_attack_value(AT_NAIR_G, AG_CATEGORY, 1);
set_attack_value(AT_NAIR_G, AG_SPRITE, sprite_get("nairg"));
set_attack_value(AT_NAIR_G, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR_G, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR_G, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR_G, AG_HURTBOX_SPRITE, sprite_get("nairg_hurt"));

//nairg start1
set_window_value(AT_NAIR_G, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR_G, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR_G, 1, AG_WINDOW_SFX_FRAME, 8);

//nairg active1
set_window_value(AT_NAIR_G, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR_G, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//nairg end1
set_window_value(AT_NAIR_G, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR_G, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR_G, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//nairg start2
set_window_value(AT_NAIR_G, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR_G, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR_G, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR_G, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR_G, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR_G, 4, AG_WINDOW_SFX_FRAME, 2);

//nairg active2
set_window_value(AT_NAIR_G, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR_G, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR_G, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//nairg end2
set_window_value(AT_NAIR_G, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR_G, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR_G, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR_G, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR_G, 3);

//forward
set_hitbox_value(AT_NAIR_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR_G, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR_G, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR_G, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR_G, 1, HG_WIDTH, 95);
set_hitbox_value(AT_NAIR_G, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_NAIR_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR_G, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR_G, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR_G, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR_G, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_NAIR_G, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR_G, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NAIR_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR_G, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//backward
set_hitbox_value(AT_NAIR_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR_G, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR_G, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR_G, 2, HG_HITBOX_X, -37);
set_hitbox_value(AT_NAIR_G, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR_G, 2, HG_WIDTH, 110);
set_hitbox_value(AT_NAIR_G, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_NAIR_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR_G, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NAIR_G, 2, HG_ANGLE, 155);
set_hitbox_value(AT_NAIR_G, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR_G, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NAIR_G, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR_G, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR_G, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR_G, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR_G, 2, HG_HITBOX_GROUP, 1);

//backward lingering
set_hitbox_value(AT_NAIR_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR_G, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR_G, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR_G, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR_G, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_NAIR_G, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NAIR_G, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR_G, 3, HG_HEIGHT, 39);
set_hitbox_value(AT_NAIR_G, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR_G, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NAIR_G, 3, HG_ANGLE, 155);
set_hitbox_value(AT_NAIR_G, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR_G, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NAIR_G, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR_G, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_NAIR_G, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR_G, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR_G, 3, HG_HITBOX_GROUP, 1);


