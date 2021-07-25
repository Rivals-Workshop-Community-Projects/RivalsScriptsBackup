set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("f_fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 12);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("f_fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, -6); 
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, -2); 
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FSPECIAL_2, 1);
//hit 1
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 38);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 285);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
