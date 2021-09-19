set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_PD_NOT_FORCE_BODY_CELL, 1);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);//9
//sfx handled at attack update

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_NAIR, 1); 

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -9);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));