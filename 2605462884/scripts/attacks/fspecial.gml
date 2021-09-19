set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//cursor grab attack

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_BODY_CELL, 24);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_BODY_CELL, 24);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 3, AG_BODY_CELL, 25);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_BODY_CELL, 25);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 5, AG_BODY_CELL, 25);

set_num_hitboxes(AT_FSPECIAL, 1); 

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 22);//18
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("pick_up_softer_l"));