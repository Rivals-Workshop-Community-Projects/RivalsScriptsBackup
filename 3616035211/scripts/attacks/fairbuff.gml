var atk = AT_FAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);
set_attack_value(atk, AG_CATEGORY, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 7);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 36);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 65);
set_hitbox_value(atk, num, HG_HEIGHT, 72);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ice_fspecial_hit_ground"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 60);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 38);
set_hitbox_value(atk, num, HG_HEIGHT, 72);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, num, HG_HIT_SFX, sound_get("sweetspot"));

set_num_hitboxes(atk, num);