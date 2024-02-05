set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//1
var num = 1;
set_window_value(AT_BAIR, num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_BAIR, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//2
num++;
set_window_value(AT_BAIR, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAME_START, 4);

//3
num++;
set_window_value(AT_BAIR, num, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_BAIR, AG_NUM_WINDOWS, num);

set_num_hitboxes(AT_BAIR, 2);

var num = 1
set_hitbox_value(AT_BAIR, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, num, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, num, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, num, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, num, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, num, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, num, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

num++
set_hitbox_value(AT_BAIR, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, num, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, num, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, num, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, num, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, num, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, num, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));