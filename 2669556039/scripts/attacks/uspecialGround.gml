set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecialGround"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);


set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_GROUND, 2);

//consecutive
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 9);
//set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 45);
//set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//launcher
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 9);
//set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 45);
//set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));