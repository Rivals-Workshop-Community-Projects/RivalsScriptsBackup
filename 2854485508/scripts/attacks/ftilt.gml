set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 3);
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Linker 1");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Linker 2");
set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_NAME, "Final");
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 68);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hfx_leaf);
set_hitbox_value(AT_FTILT, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);