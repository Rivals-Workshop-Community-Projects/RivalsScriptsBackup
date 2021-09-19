set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dagger_swoosh2"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sour_sword"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//HIT
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_2"));

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_DSPECIAL, 7);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 63);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("dagger_slash2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

//BURN
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 250);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);