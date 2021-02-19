set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
//Lag when landing "normally" is 6f (9 with whifflag)
//Lag when landing with the hitbox is 18 (like 25 or so with whifflag)
//Landing hitbox active frames 2 - 3
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Landing Hitbox
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

//Normal Landing
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);


set_num_hitboxes(AT_DAIR, 6);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 250);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("sfx_swordmedium"));
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.80);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 0);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);

//Landing
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 13);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 102);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 43);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.4);