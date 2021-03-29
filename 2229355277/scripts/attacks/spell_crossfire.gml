//this doesn't work but i promise it will eventually i hope

//Crossfire. Internal move ID: 28

set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("plasma_explosion"));

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DTHROW, 16);

//UP+RIGHT
//Bottom, up+right.
set_hitbox_value(AT_DTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -97);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTHROW, 1, HG_TECHABLE, 0);

//Second step, up+right.
set_hitbox_value(AT_DTHROW, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -161);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 128);


//Third step, up+right.
set_hitbox_value(AT_DTHROW, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, -225);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, 192);

//Top up+right.
set_hitbox_value(AT_DTHROW, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 4, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_Y, -289);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_X, 256);

//UP+LEFT
//Bottom up+left
set_hitbox_value(AT_DTHROW, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 5, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_Y, -97);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_X, -64);

//Second step, up+left.
set_hitbox_value(AT_DTHROW, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_Y, -161);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_X, -128);

//Third step, up+left.
set_hitbox_value(AT_DTHROW, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 7, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_Y, -225);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_X, -192);

//Top up+right.
set_hitbox_value(AT_DTHROW, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 8, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_Y, -289);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_X, -256);


//DOWN+LEFT
//Top, down+left.
set_hitbox_value(AT_DTHROW, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 9, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_Y, 33);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_X, -64);

//Second step, down+left.
set_hitbox_value(AT_DTHROW, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 10, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 10, HG_HITBOX_Y, 97);
set_hitbox_value(AT_DTHROW, 10, HG_HITBOX_X, -128);

//Third step, down+left.
set_hitbox_value(AT_DTHROW, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 11, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 11, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 11, HG_HITBOX_Y, 161);
set_hitbox_value(AT_DTHROW, 11, HG_HITBOX_X, -192);

//Bottom, down+left.
set_hitbox_value(AT_DTHROW, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 12, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 12, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 12, HG_HITBOX_Y, 225);
set_hitbox_value(AT_DTHROW, 12, HG_HITBOX_X, -256);



//DOWN + RIGHT
//Top, down+right.
set_hitbox_value(AT_DTHROW, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 13, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 13, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 13, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 13, HG_HITBOX_Y, 33);
set_hitbox_value(AT_DTHROW, 13, HG_HITBOX_X, 64);

//Second step, down+right.
set_hitbox_value(AT_DTHROW, 14, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 14, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 14, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 14, HG_HITBOX_Y, 97);
set_hitbox_value(AT_DTHROW, 14, HG_HITBOX_X, 128);

//Third step, down+right.
set_hitbox_value(AT_DTHROW, 15, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 15, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 15, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 15, HG_HITBOX_Y, 161);
set_hitbox_value(AT_DTHROW, 15, HG_HITBOX_X, 192);

//Bottom, down+right.
set_hitbox_value(AT_DTHROW, 16, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 16, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 16, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 16, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 16, HG_HITBOX_Y, 225);
set_hitbox_value(AT_DTHROW, 16, HG_HITBOX_X, 256);
