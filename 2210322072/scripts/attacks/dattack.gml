set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK,2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 83);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("slice1"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 76);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("slice3"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 1);


