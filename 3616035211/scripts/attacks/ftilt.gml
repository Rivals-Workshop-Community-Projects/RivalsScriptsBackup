var atk = AT_FTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_spew2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 7);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 48);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 56);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 56);
set_hitbox_value(atk, num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, num, HG_WIDTH, 64);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));

set_num_hitboxes(atk, num);