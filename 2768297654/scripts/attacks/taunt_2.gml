set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("dusterpsi"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 800);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sound_get("taunt2"));

set_num_hitboxes(AT_TAUNT_2,2);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 160);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 160);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT_2, 2, HG_WIDTH, 160);
set_hitbox_value(AT_TAUNT_2, 2, HG_HEIGHT, 160);
set_hitbox_value(AT_TAUNT_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_TAUNT_2, 2, HG_EFFECT, 11);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_GROUP, 2);