var atk = AT_BAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);


set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -42);
set_hitbox_value(atk, num, HG_HITBOX_Y, -42);
set_hitbox_value(atk, num, HG_WIDTH, 66);
set_hitbox_value(atk, num, HG_HEIGHT, 66);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 120);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -34);
set_hitbox_value(atk, num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 72);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 140);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

set_num_hitboxes(atk, num);