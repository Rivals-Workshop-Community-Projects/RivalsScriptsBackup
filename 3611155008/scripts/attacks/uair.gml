var atk = AT_UAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);


set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -76);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 36);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, num, HG_WIDTH, 120);
set_hitbox_value(atk, num, HG_HEIGHT, 58);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

set_num_hitboxes(atk, num);