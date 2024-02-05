set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//1 startup
var num = 1;
set_window_value(AT_UTILT, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_UTILT, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//2 swipe
num++;
set_window_value(AT_UTILT, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, num, AG_WINDOW_HSPEED, 3);

//3 transition
num++;
set_window_value(AT_UTILT, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));

//4 fire
num++;
set_window_value(AT_UTILT, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAME_START, 11);

//5 endlag
num++;
set_window_value(AT_UTILT, num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTILT, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_UTILT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, num, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, num, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, num, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, num, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, num, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, num, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, num, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_UTILT, num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_UTILT, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(AT_UTILT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, num, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, num, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, num, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, num, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, num, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, num, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, num, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_UTILT, num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_UTILT, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(AT_UTILT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, num, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, num, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_X, 38);
set_hitbox_value(AT_UTILT, num, HG_HITBOX_Y, -120);
set_hitbox_value(AT_UTILT, num, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, num, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, num, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, num, HG_DAMAGE, 6 - 5*has_rune("C") + 6*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_UTILT, num, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, num, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, num, HG_VISUAL_EFFECT, snipe_hit);

set_num_hitboxes(AT_UTILT, 3);