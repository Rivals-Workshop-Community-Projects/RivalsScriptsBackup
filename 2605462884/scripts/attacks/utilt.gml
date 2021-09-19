
set_attack_value(AT_UTILT, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);


set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_BODY_CELL, 20);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_BODY_CELL, 21);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_BODY_CELL, 21);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("success_bling_short"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 4, AG_BODY_CELL, 21);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 5, AG_BODY_CELL, 20);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 6, AG_BODY_CELL, 20);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2); 

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -76-32);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


