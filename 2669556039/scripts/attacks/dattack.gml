set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH)-1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -5);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);// 0);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);// 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));//sfx_ori_stomp_hit//sfx_abyss_seed_land

set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 3);

//set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 9);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 1000);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);//270);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
