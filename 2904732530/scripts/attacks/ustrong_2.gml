//NAIR 2

set_attack_value(AT_USTRONG_2, AG_CATEGORY, 1);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USTRONG_2, AG_LANDING_LAG, 2);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2,4);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG_2, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG_2, 4, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USTRONG_2, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_GROUP, 4);


