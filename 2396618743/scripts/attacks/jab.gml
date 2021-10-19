set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 8);
//set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("terra_slash2"));


set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);


set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_FRAME, 6);


set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("terra_slash3"));


set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 110);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("terra_swordhit1"));

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 88);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("terra_swordhit2"));