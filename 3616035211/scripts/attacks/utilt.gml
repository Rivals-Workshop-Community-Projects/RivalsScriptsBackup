var atk = AT_UTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 8);
set_hitbox_value(atk, num, HG_HITBOX_Y, -80);
set_hitbox_value(atk, num, HG_WIDTH, 50);
set_hitbox_value(atk, num, HG_HEIGHT, 80);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 85);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ice_fspecial_hit_ground"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 50);
set_hitbox_value(atk, num, HG_HEIGHT, 80);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 85);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ice_fspecial_hit_ground"));

set_num_hitboxes(atk, num);