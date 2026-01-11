var atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("swing22_delay"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 3);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 8);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //grab
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 24);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hit_num, HG_WIDTH, 20);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 0);
set_hitbox_value(atk, hit_num, HG_ANGLE, 0);
set_hitbox_value(atk, hit_num, HG_SHAPE, 1);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_num_hitboxes(atk, hit_num);