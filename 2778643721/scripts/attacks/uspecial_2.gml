set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr );


//Startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);


/*set_num_hitboxes(AT_USPECIAL_2, 5);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
