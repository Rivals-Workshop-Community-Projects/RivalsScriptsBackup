set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 4);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_BAIR, 4, HG_MUNO_HITBOX_NAME, "Final Hit");