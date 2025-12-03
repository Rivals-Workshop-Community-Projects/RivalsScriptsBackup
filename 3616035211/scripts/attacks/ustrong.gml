var atk = AT_USTRONG;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

//post
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 2);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 2);
set_hitbox_value(atk, num, HG_HITBOX_X, 2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -92);
set_hitbox_value(atk, num, HG_WIDTH, 56);
set_hitbox_value(atk, num, HG_HEIGHT, 66);
set_hitbox_value(atk, num, HG_PRIORITY, 8);
set_hitbox_value(atk, num, HG_DAMAGE, 9);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 2);
set_hitbox_value(atk, num, HG_HITBOX_X, 2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 70);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, num, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(atk, num);