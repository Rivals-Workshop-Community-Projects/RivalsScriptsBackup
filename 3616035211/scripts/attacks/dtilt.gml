var atk = AT_DTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_spew_end"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 12);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_VSPEED, -8);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 16);
set_hitbox_value(atk, num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, num, HG_WIDTH, 82);
set_hitbox_value(atk, num, HG_HEIGHT, 54);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));

set_num_hitboxes(atk, num);