set_attack_value(AT_USPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 8);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL, 3);

set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE,  80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE,  70);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE,  60);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));