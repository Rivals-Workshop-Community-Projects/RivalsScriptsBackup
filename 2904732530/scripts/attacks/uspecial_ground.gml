//DATTACK 3

set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("dattack3"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("dattack3_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL_GROUND, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 35);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 35);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, 1);
