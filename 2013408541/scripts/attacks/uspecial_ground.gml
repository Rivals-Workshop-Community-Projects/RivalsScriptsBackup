set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_LENGTH, 45);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_HSPEED_TYPE, 1)


set_num_hitboxes(AT_USPECIAL_GROUND, 6);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 135);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WIDTH, 135);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HIT_SFX, sound_get("Rocket Hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_GROUP, -1);
