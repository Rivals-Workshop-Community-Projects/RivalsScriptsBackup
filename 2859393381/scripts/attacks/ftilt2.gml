set_attack_value(AT_FTILT2, AG_SPRITE, sprite_get("ftilt2"));
set_attack_value(AT_FTILT2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
//set_window_value(AT_FTILT2, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FTILT2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT2, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_FTILT2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT2, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT2, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT2,3);

set_hitbox_value(AT_FTILT2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT2, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FTILT2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT2, 1, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_FTILT2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT2, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_FTILT2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
//set_hitbox_value(AT_FTILT2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT2, 1, HG_HIT_SFX, sound_get("paper_beat"));
set_hitbox_value(AT_FTILT2, 1, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_FTILT2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT2, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FTILT2, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT2, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_FTILT2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT2, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT2, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT2, 2, HG_HIT_SFX, sound_get("paper_beat"));
set_hitbox_value(AT_FTILT2, 2, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_FTILT2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT2, 3, HG_HITBOX_X, 88);
set_hitbox_value(AT_FTILT2, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT2, 3, HG_WIDTH, 106);
set_hitbox_value(AT_FTILT2, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_FTILT2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT2, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT2, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FTILT2, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FTILT2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT2, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT2, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
