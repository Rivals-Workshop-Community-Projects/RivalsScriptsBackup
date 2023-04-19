set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialnew"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecialnew_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1); // startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1); // transform
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("pew"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1); // nyoom
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7); // endlag
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 11);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 54);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, has_rune("J")?9:7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, has_rune("J")?.8:.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, has_rune("J")?9:8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, has_rune("J")?.8:.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, smallstar_effect);