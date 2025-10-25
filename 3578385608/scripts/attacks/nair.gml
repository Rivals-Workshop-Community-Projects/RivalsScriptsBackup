var atk = AT_NAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);


set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 16);
set_hitbox_value(atk, num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, num, HG_WIDTH, 50);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 16);
set_hitbox_value(atk, num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, num, HG_WIDTH, 70);
set_hitbox_value(atk, num, HG_HEIGHT, 70);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_num_hitboxes(atk, num);