set_attack_value(AT_COPY_LEAF, AG_SPRITE, sprite_get("ability_leaf"));
set_attack_value(AT_COPY_LEAF, AG_NUM_WINDOWS, 5);
set_attack_value(AT_COPY_LEAF, AG_HURTBOX_SPRITE, sprite_get("ability_leaf_hurt"));
set_attack_value(AT_COPY_LEAF, AG_CATEGORY, 2);

//Startup
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_leaf_uppercut"));
set_window_value(AT_COPY_LEAF, 1, AG_WINDOW_SFX_FRAME, 10);

//Active Frames
set_window_value(AT_COPY_LEAF, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_LEAF, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_LEAF, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_LEAF, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Endlag 1
set_window_value(AT_COPY_LEAF, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_LEAF, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_COPY_LEAF, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_LEAF, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//Endlag 2
set_window_value(AT_COPY_LEAF, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_LEAF, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_LEAF, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_LEAF, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//Endlag 3
set_window_value(AT_COPY_LEAF, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_LEAF, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_LEAF, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_LEAF, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_COPY_LEAF, 1);

set_hitbox_value(AT_COPY_LEAF, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_LEAF, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_LEAF, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_LEAF, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_COPY_LEAF, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_COPY_LEAF, 1, HG_WIDTH, 52);
set_hitbox_value(AT_COPY_LEAF, 1, HG_HEIGHT, 116);
set_hitbox_value(AT_COPY_LEAF, 1, HG_SHAPE, 2);
set_hitbox_value(AT_COPY_LEAF, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_COPY_LEAF, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_LEAF, 1, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_LEAF, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_COPY_LEAF, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_LEAF, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_COPY_LEAF, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_LEAF, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_COPY_LEAF, 1, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_COPY_LEAF, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_LEAF, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_COPY_LEAF, 1, HG_HITBOX_GROUP, 1);