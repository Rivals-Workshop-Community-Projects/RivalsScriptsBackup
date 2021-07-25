set_attack_value( AT_FSTRONG_2, AG_SPRITE, sprite_get("f_fstrong"));
set_attack_value( AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value( AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value( AT_FSTRONG_2, AG_CATEGORY, 0);
set_attack_value( AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("f_fstrong_hurt"));

set_window_value( AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value( AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value( AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value( AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value( AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value( AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value( AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value( AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value( AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes( AT_FSTRONG_2,1);

set_hitbox_value( AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value( AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value( AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value( AT_FSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value( AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value( AT_FSTRONG_2, 1, HG_LIFETIME, 5);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HITBOX_X, 25);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value( AT_FSTRONG_2, 1, HG_WIDTH, 70);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value( AT_FSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value( AT_FSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value( AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value( AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value( AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value( AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value( AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 12);