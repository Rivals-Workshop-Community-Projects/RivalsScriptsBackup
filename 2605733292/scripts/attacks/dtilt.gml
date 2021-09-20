set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sfx_slide);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, -0.5);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 76);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));