set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_new"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_new_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 6);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 28);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 10);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 270);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 3, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 9);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 28);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 10);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 56);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_FTILT, 5, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 5, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 1);

/*set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 1);//*/