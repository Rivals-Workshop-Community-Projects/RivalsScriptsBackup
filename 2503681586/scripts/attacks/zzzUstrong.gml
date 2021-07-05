set_attack_value( AT_USTRONG_2, AG_SPRITE, sprite_get("f_ustrong"));
set_attack_value( AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value( AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value( AT_USTRONG_2, AG_CATEGORY, 0);
set_attack_value( AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("f_ustrong_hurt"));

set_window_value( AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value( AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value( AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value( AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value( AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value( AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value( AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value( AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value( AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value( AT_USTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes( AT_USTRONG_2,1);

set_hitbox_value( AT_USTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value( AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value( AT_USTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value( AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value( AT_USTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value( AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value( AT_USTRONG_2, 1, HG_LIFETIME, 6);
set_hitbox_value( AT_USTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value( AT_USTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value( AT_USTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value( AT_USTRONG_2, 1, HG_HEIGHT, 30);
set_hitbox_value( AT_USTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value( AT_USTRONG_2, 1, HG_DAMAGE, 6);
set_hitbox_value( AT_USTRONG_2, 1, HG_ANGLE, 80);
set_hitbox_value( AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value( AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value( AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value( AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value( AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
