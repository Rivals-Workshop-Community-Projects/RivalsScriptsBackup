set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 0);


window_num = 1;
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX_FRAME, 12);

window_num++;//2
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX_FRAME, 12);

window_num++;//3
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_SFX_FRAME, 12);

window_num++;//4
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_VSPEED_TYPE, 2);

window_num++;//5
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);




hitbox_num = 1;//hit 1
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 67);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 103);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 1);
hitbox_num++;
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 21);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, 7);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 1);


hitbox_num++;//hit 2
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 67);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 103);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK,  8);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 2);
hitbox_num++;
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 21);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, 7);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 2);


hitbox_num++;//hit 3
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 67);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 103);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 3);
hitbox_num++;
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 21);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, 7);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_med);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 3);

hitbox_num++;//sweetspot
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_X, 66);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_Y, -82);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_VISUAL_EFFECT, vfx_knife_big);
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_USPECIAL, hitbox_num, HG_HITBOX_GROUP, 3);


set_num_hitboxes(AT_USPECIAL, hitbox_num);