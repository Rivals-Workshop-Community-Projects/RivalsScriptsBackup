var atk = AT_FSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

//angleable startup
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_mobile_gear_deploy"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

//angleable startup
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);

//land
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 15);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -8);
set_hitbox_value(atk, num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, num, HG_WIDTH, 100);
set_hitbox_value(atk, num, HG_HEIGHT, 62);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, drill_speed);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_drill_loop"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -8);
set_hitbox_value(atk, num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, num, HG_WIDTH, 100);
set_hitbox_value(atk, num, HG_HEIGHT, 62);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, drill_speed);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_drill_loop"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, num, HG_LIFETIME, 1);
set_hitbox_value(atk, num, HG_HITBOX_X, -8);
set_hitbox_value(atk, num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, num, HG_WIDTH, 100);
set_hitbox_value(atk, num, HG_HEIGHT, 62);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));

set_num_hitboxes(atk, num);