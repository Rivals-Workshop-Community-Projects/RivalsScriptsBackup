set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//usps  uspan uspa1 uspf  uspp   uspc    uspa2   usph    uspr
//0-1:2 2-2:1 3-6:4 7-7:1 8-10:3 11-11:1 12-12:1 13-14:2 15-16:2

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed-0.3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("ding_3"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed-0.3);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -5);//-6
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5);//-6
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.2);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.4);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.5);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.5);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed-0.3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.15);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed-0.3);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction+0.15);

set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);



set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 129);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 75);//80
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8.6);//8.2
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("hit_medium_5"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 129);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 88);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("hit_medium_5"));

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 130);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 55);//65
//set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);//0.7
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("hit_hard_1"));









