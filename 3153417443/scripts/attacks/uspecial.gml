set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.4);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.05);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.05);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.05);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.05);

set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70); //292 
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9); //292 
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3); //7
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70); 
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 3); //7
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80); //292 
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6); //7
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8); //0.6//0.7
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80); //292 
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6); //7
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8); //0.6//0.7
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -32);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 265); //292 
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5); //7
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5); //0.6//0.7
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

