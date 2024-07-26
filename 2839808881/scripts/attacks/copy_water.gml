set_attack_value(AT_COPY_WATER, AG_CATEGORY, 2);
set_attack_value(AT_COPY_WATER, AG_SPRITE, sprite_get("ability_water"));
set_attack_value(AT_COPY_WATER, AG_HURTBOX_SPRITE, sprite_get("ability_water_hurt"));
set_attack_value(AT_COPY_WATER, AG_NUM_WINDOWS, 3);
set_attack_value(AT_COPY_WATER, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_water_wave"));
set_window_value(AT_COPY_WATER, 1, AG_WINDOW_SFX_FRAME, 11);

//active/travelling
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_COPY_WATER, 2, AG_WINDOW_HSPEED_TYPE, 1);

//endlag (whiff)
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_HSPEED, 5.5);
set_window_value(AT_COPY_WATER, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_COPY_WATER, 5);

set_hitbox_value(AT_COPY_WATER, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_WATER, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_WATER, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_COPY_WATER, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_WATER, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_WATER, 1, HG_WIDTH, 75);
set_hitbox_value(AT_COPY_WATER, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_COPY_WATER, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_WATER, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_COPY_WATER, 1, HG_ANGLE, 35);
set_hitbox_value(AT_COPY_WATER, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_COPY_WATER, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_COPY_WATER, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_WATER, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_COPY_WATER, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_COPY_WATER, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_COPY_WATER, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_COPY_WATER, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_WATER, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_WATER, 2, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_WATER, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_COPY_WATER, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_COPY_WATER, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_WATER, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_WATER, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_WATER, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_WATER, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_WATER, 3, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_WATER, 3, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_COPY_WATER, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_COPY_WATER, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_WATER, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_WATER, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_WATER, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_WATER, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_WATER, 4, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_WATER, 4, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_COPY_WATER, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_COPY_WATER, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_WATER, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_WATER, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_WATER, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_WATER, 5, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_WATER, 5, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_COPY_WATER, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_COPY_WATER, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_WATER, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_WATER, 5, HG_WIDTH, 85);
set_hitbox_value(AT_COPY_WATER, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_COPY_WATER, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_WATER, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_COPY_WATER, 5, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_WATER, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_WATER, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_COPY_WATER, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_COPY_WATER, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_WATER, 5, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_COPY_WATER, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_COPY_WATER, 5, HG_HITBOX_GROUP, -1);