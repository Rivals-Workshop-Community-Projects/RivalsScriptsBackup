set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_zet"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 2);


set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 44);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);