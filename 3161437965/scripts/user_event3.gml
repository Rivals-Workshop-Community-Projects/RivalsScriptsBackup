// Chara kinda goodlier

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 1.05);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 13);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);

set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 18);

set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);

set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_DRIFT_MULTIPLIER, .1);

set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);

set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -17);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 30);

set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1);

set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);

set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);

set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1);

set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 145);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);

set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 300);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

air_max_speed = 6;
leave_ground_max = 7;
max_jump_hsp = 6;
air_accel = 0.45;
wave_land_adj = 1.5;
wave_friction = .15;