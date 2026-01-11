var atk = AT_FTHROW;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 11);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);


set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //pistol smash
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hit_num, HG_WIDTH, 40);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 112);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hit_num, HG_ANGLE, 35);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.8); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_num_hitboxes(atk, hit_num);