set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND,AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("motor1"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED_TYPE, 1);

//active
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED_TYPE, 1);

//recovery
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1)
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HSPEED, 12);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 4)
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

//grab hitbox
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_FORCE_FLINCH, true);;
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 160);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 269);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 31);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 150);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));