set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
set_attack_value(AT_JAB, AG_PSEUDO_DYNAMIC, 1);
set_attack_value(AT_JAB, AG_PD_ITEM, sprite_get("equipment"));
set_attack_value(AT_JAB, AG_PD_LOC_X, 24);
set_attack_value(AT_JAB, AG_PD_LOC_Y, -16);
set_attack_value(AT_JAB, AG_PD_ROT, 0);
set_attack_value(AT_JAB, AG_PD_NOT_FORCE_BODY_CELL, 1);
set_attack_value(AT_JAB, AG_PD_ALWAYS_FRONT, 1);


set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);//6
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_JAB, 2, AG_ROTATE, 40);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 3, AG_ROTATE, 15);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 4, AG_ROTATE, -55);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 1);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);


set_num_hitboxes(AT_JAB, 1); 

set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));













