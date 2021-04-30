set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("chainsaw_end"));
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, sound_get("chainsaw_end"));
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_num_hitboxes(AT_BAIR, 5);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("chainsaw1v2"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("chainsaw1v2"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("chainsaw1v2"));
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sound_get("chainsaw1v2"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, blood_effect);

//Stronger Hit

set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 85);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 54);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 20);
