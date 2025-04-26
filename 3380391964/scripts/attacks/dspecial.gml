set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Charge windows
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);	//charge
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .01);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .01);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .01);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .01);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);


set_num_hitboxes(AT_DSPECIAL, 5);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 25);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 555);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 55);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 304);