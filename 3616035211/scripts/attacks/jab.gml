var atk = AT_JAB;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 1);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, num, AG_WINDOW_CANCEL_TYPE, 1);

//startup
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 5);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 10);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 11);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 48);
set_hitbox_value(atk, num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, num, HG_WIDTH, 76);
set_hitbox_value(atk, num, HG_HEIGHT, 54);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ice_fspecial_hit_ground"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 42);
set_hitbox_value(atk, num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, num, HG_WIDTH, 84);
set_hitbox_value(atk, num, HG_HEIGHT, 52);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_num_hitboxes(atk, num);