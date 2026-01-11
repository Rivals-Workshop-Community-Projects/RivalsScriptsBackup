var atk = AT_DTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(atk, num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 62);
set_hitbox_value(atk, num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 36);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_TECHABLE, 0);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, num, HG_WIDTH, 70);
set_hitbox_value(atk, num, HG_HEIGHT, 36);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

set_num_hitboxes(atk, num);