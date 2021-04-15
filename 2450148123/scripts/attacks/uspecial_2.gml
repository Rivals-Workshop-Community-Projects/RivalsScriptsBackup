set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_NAME, "True USpecial");
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC, "Input: 623P
Higher jump");
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 3.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -17);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 81);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
