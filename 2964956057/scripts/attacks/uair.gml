var atk = AT_UAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 7:10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);
//set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_bash_launch"));

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 4:6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 0);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, has_rune("L")? 8:12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 4);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

/*hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -28);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -85);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 38);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 38);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);*/

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, has_rune("L")? 2:3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, has_rune("L")? 2:3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, has_rune("L")? 2:3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 12);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -88);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 108);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 75);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 7);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, vfx_star);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);

set_num_hitboxes(atk, hitbox_num);