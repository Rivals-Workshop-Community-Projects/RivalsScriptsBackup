set_attack_value(40, AG_SPRITE, sprite_get("utilt2"));
set_attack_value(40, AG_NUM_WINDOWS, 3);
set_attack_value(40, AG_HURTBOX_SPRITE, sprite_get("utilt2_hurt"));

set_window_value(40, 1, AG_WINDOW_TYPE, 1);
set_window_value(40, 1, AG_WINDOW_LENGTH, 9);
set_window_value(40, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(40, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(40, 1, AG_WINDOW_SFX, sound_get("utilt_wrench"));
set_window_value(40, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(40, 2, AG_WINDOW_TYPE, 1);
set_window_value(40, 2, AG_WINDOW_LENGTH, 9);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(40, 3, AG_WINDOW_TYPE, 1);
set_window_value(40, 3, AG_WINDOW_LENGTH, 9);
set_window_value(40, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(40, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(40, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(40,3);
//FRONT
set_hitbox_value(40, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(40, 1, HG_WINDOW, 2);
set_hitbox_value(40, 1, HG_LIFETIME, 9);
set_hitbox_value(40, 1, HG_HITBOX_X, 40);
set_hitbox_value(40, 1, HG_HITBOX_Y, -58);
set_hitbox_value(40, 1, HG_WIDTH, 80);
set_hitbox_value(40, 1, HG_HEIGHT, 110);
set_hitbox_value(40, 1, HG_SHAPE, 0);
set_hitbox_value(40, 1, HG_PRIORITY, 3);
set_hitbox_value(40, 1, HG_DAMAGE, 5);
set_hitbox_value(40, 1, HG_ANGLE, 80);
set_hitbox_value(40, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(40, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(40, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(40, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(40, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//TOP
set_hitbox_value(40, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(40, 2, HG_WINDOW, 2);
set_hitbox_value(40, 2, HG_LIFETIME, 9);
set_hitbox_value(40, 2, HG_HITBOX_X, -4);
set_hitbox_value(40, 2, HG_HITBOX_Y, -80);
set_hitbox_value(40, 2, HG_WIDTH, 153);
set_hitbox_value(40, 2, HG_HEIGHT, 105);
set_hitbox_value(40, 2, HG_SHAPE, 0);
set_hitbox_value(40, 2, HG_PRIORITY, 2);
set_hitbox_value(40, 2, HG_DAMAGE, 6);
set_hitbox_value(40, 2, HG_ANGLE, 95);
set_hitbox_value(40, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(40, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(40, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(40, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(40, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(40, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//BACK
set_hitbox_value(40, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(40, 3, HG_WINDOW, 2);
set_hitbox_value(40, 3, HG_LIFETIME, 9);
set_hitbox_value(40, 3, HG_HITBOX_X, -69);
set_hitbox_value(40, 3, HG_HITBOX_Y, -48);
set_hitbox_value(40, 3, HG_WIDTH, 55);
set_hitbox_value(40, 3, HG_HEIGHT, 103);
set_hitbox_value(40, 3, HG_SHAPE, 0);
set_hitbox_value(40, 3, HG_PRIORITY, 1);
set_hitbox_value(40, 3, HG_DAMAGE, 4);
set_hitbox_value(40, 3, HG_ANGLE, 95);
set_hitbox_value(40, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(40, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(40, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(40, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(40, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(40, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));