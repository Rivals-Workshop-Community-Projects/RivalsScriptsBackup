//EXPLOSION!! Internal move ID: 25

set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("explode"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("explode"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 999);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 999);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 999);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 999);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("plasma_explosion"));

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FSPECIAL_2, 4);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 500);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 500);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 500);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 500);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 500);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 500);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 500);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 500);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
