set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 10);