set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.35); //turn off for wobbles woo
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 17); //let's go army woo

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -59);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 4);