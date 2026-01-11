var atk = AT_NAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);


set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_CANCEL_FRAME, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);


num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 11);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 32);
set_hitbox_value(atk, num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, num, HG_WIDTH, 84);
set_hitbox_value(atk, num, HG_HEIGHT, 62);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 124);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

set_num_hitboxes(atk, num);