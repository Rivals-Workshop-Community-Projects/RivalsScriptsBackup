set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("rock_upper"));

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED, 0);;
set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

if !has_rune("O") exit;

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("rock_upper"));

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 17);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));