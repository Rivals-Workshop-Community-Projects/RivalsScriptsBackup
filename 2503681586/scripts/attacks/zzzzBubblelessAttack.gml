set_attack_value(3, AG_CATEGORY, 2);
set_attack_value(3, AG_SPRITE, sprite_get("fx_attack"));
set_attack_value(3, AG_NUM_WINDOWS, 4);
set_attack_value(3, AG_LANDING_LAG, 6);
set_attack_value(3, AG_HAS_LANDING_LAG, 1);
set_attack_value(3, AG_HURTBOX_SPRITE, sprite_get("fx_attack_hurt"));

set_window_value(3, 1, AG_WINDOW_TYPE, 1);
set_window_value(3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(3, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(3, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(3, 2, AG_WINDOW_TYPE, 8);
set_window_value(3, 2, AG_WINDOW_LENGTH, 8);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(3, 3, AG_WINDOW_TYPE, 8);
set_window_value(3, 3, AG_WINDOW_LENGTH, 16);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(3, 4, AG_WINDOW_TYPE, 7);
set_window_value(3, 4, AG_WINDOW_LENGTH, 0);
set_window_value(3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(3, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(3, 1);
//Sour
set_hitbox_value(3, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(3, 1, HG_SHAPE, 0);
set_hitbox_value(3, 1, HG_WINDOW, 2);
set_hitbox_value(3, 1, HG_LIFETIME, 8);
set_hitbox_value(3, 1, HG_HITBOX_X, 0);
set_hitbox_value(3, 1, HG_HITBOX_Y, -22);
set_hitbox_value(3, 1, HG_WIDTH, 40);
set_hitbox_value(3, 1, HG_HEIGHT, 40);
set_hitbox_value(3, 1, HG_PRIORITY, 3);
set_hitbox_value(3, 1, HG_DAMAGE, 2);
set_hitbox_value(3, 1, HG_ANGLE, 45);
set_hitbox_value(3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(3, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(3, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(3, 1, HG_HITPAUSE_SCALING, .3);