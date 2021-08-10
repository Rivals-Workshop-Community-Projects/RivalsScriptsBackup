set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 25);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//start
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//fly
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 31);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 31);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("uspecial"));//asset_get("sfx_swipe_medium1")); //not really well timed... but wanna keep other sound effects too?

//end
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);//7); pratfall?
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("fspecialRelease"));


set_num_hitboxes(AT_USPECIAL, 6);


set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 4);

//launcher
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 25);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0); 
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 112);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 1.1);
//set_hitbox_value(AT_USPECIAL, 6, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);
