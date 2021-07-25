set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

//Weak
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE,  60);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);

//Weak Spike
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE,  270);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 306);



