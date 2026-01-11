var atk = AT_DATTACK;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 24);
set_hitbox_value(atk, num, HG_HITBOX_Y, -82);
set_hitbox_value(atk, num, HG_WIDTH, 74);
set_hitbox_value(atk, num, HG_HEIGHT, 46);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 9);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 38);
set_hitbox_value(atk, num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, num, HG_WIDTH, 72);
set_hitbox_value(atk, num, HG_HEIGHT, 98);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 80);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

set_num_hitboxes(atk, num);