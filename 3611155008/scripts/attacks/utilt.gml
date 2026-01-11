var atk = AT_UTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -86);
set_hitbox_value(atk, num, HG_WIDTH, 64);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 9);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 40);
set_hitbox_value(atk, num, HG_HITBOX_Y, -50);
set_hitbox_value(atk, num, HG_WIDTH, 74);
set_hitbox_value(atk, num, HG_HEIGHT, 90);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

set_num_hitboxes(atk, num);