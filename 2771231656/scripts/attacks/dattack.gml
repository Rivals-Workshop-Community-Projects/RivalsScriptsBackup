set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("miss1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("choke"));

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("punch_weak"));

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("smallhitb"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);