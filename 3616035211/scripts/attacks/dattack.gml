var atk = AT_DATTACK;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(atk, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//mid end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 7);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 8);
set_hitbox_value(atk, num, HG_HITBOX_X, 28);
set_hitbox_value(atk, num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, num, HG_WIDTH, 64);
set_hitbox_value(atk, num, HG_HEIGHT, 28);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 4);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 20);
set_hitbox_value(atk, num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, num, HG_WIDTH, 70);
set_hitbox_value(atk, num, HG_HEIGHT, 70);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ice_fspecial_hit_ground"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 4);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 50);
set_hitbox_value(atk, num, HG_HITBOX_Y, -60);
set_hitbox_value(atk, num, HG_WIDTH, 46);
set_hitbox_value(atk, num, HG_HEIGHT, 46);
set_hitbox_value(atk, num, HG_PRIORITY, 8);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_num_hitboxes(atk, num);