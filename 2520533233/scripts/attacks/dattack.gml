set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 7);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("drill"));


set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 2);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 6);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 40);

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 40);

set_hitbox_value(AT_DATTACK, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
