set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("slam"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("slam_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("wiw"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 34);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 280);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("hit3"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.80);