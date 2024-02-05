set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//1 startup
var num = 1;
set_window_value(AT_DTILT, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DTILT, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//2 swipe
num++;
set_window_value(AT_DTILT, num, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAME_START, 3);

//3 transitio
num++;
set_window_value(AT_DTILT, num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_DTILT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, num, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, num, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, num, HG_HITBOX_X, 60);
set_hitbox_value(AT_DTILT, num, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DTILT, num, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, num, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, num, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, num, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, num, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_num_hitboxes(AT_DTILT, 1);