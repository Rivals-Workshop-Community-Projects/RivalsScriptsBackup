set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);

//start
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//smear
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//smear hold
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//hit
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//hit hold
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 17);

//miss
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//miss hold
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0);
