//AR USPECIAL [WIP]
//uspecial has like this weird bug right now and it's not syncing up correctly????????? everything follows logic here so it's beyond me

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 12);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//usps  uspb1 uspb2 uspb3 uspb4 uspc   uspa    uspr
//0-1:2 2-3:2 4-5:2 6-7:2 7-8:2 9-12:4 13-15:3 16-23:7

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("AFB1"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.08);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("AFB1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("AFB1"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8); //7
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("AFB1"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 16); //20
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10); //9
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("DST1"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14); //13
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17); //16
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.05);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);

set_num_hitboxes(AT_USPECIAL, 10);
//1-4:armswing 1,3-left 2,4-right
//L: X:-12 Y:-26 W:35 H:59
//R: X:14 Y:-26 W:35 H:59
//5-8:bullets 5,7-left 6-8-right
//L: X:-3 Y:9 W:16 H:20
//R: X:5 Y:9 W:16 H:20
//9:bighit
//X:-5 Y:17 W:66 H:77

//usps  uspb1 uspb2 uspb3 uspb4 uspc   uspa    uspr
//0-1:2 2-3:2 4-5:2 6-7:2 7-8:2 9-12:4 13-15:3 16-23:7

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 59);
//set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 68); //270 //72
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3.2); //3
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.28); //0.5
//set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 75); //270 //83
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6); //3
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.05); //0.5
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 5);

/*
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 5);
*/
//1-4:armswing 1,3-left 2,4-right
//L: X:-12 Y:-26 W:35 H:59
//R: X:14 Y:-26 W:35 H:59
//5-8:bullets 5,7-left 6-8-right
//L: X:-3 Y:9 W:16 H:20
//R: X:5 Y:9 W:16 H:20
//9:bighit
//X:-5 Y:17 W:66 H:77

//usps  uspb1 uspb2 uspb3 uspb4 uspc   uspa    uspr
//0-1:2 2-3:2 4-5:2 6-7:2 7-8:2 9-12:4 13-15:3 16-23:7

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 16);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 70);//361
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 9);//3
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 4);//.5
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("bullet"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 116);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, 9);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 5);

//1-4:armswing 1,3-left 2,4-right
//L: X:-12 Y:-26 W:35 H:59
//R: X:14 Y:-26 W:35 H:59
//5-8:bullets 5,7-left 6-8-right
//L: X:-3 Y:9 W:16 H:20
//R: X:5 Y:9 W:16 H:20
//9:bighit
//X:-5 Y:17 W:66 H:77

//usps  uspb1 uspb2 uspb3 uspb4 uspc   uspa    uspr
//0-1:2 2-3:2 4-5:2 6-7:2 7-8:2 9-12:4 13-15:3 16-23:7

//if the fourth hit has not hit (same hitbox group), it's stronger (yeah nope)
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, 17);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 7);
//set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 3);//6
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 77);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 8);//7.5
set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, .9);//.88
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 8);//1
set_hitbox_value(AT_USPECIAL, 9, HG_HITPAUSE_SCALING, .7);//1.2
set_hitbox_value(AT_USPECIAL, 9, HG_VISUAL_EFFECT, 117);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); //sfx_poison_hit_strong
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 6);//5

//if the fourth hit has already hit, it's weaker
/*set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, 17);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 7);
//set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 77);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USPECIAL, 10, HG_KNOCKBACK_SCALING, 0.86);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 117);
set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); //sfx_poison_hit_strong
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 6);*/







