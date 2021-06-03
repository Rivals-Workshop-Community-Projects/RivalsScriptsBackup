set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//Dodge Strike
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swing_medium1"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//Follow-Up Barrage
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_swing_heavy2"));
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 4);

set_num_hitboxes(AT_DSPECIAL, 5);

set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Counter Hit");

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3)
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 24);;
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2)
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 40);;
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Final Hit");

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 36);;
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 8.5);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);