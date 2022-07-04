set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_TAUNT_2, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 52);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
