var at = AT_TAUNT_2;

set_attack_value(at, AG_SPRITE, sprite_get("tauntalt"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 64);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 16);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 1);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 44);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, -10);
set_hitbox_value(at, num, HG_HITBOX_Y, -30);
set_hitbox_value(at, num, HG_WIDTH, 80);
set_hitbox_value(at, num, HG_HEIGHT, 20);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 9);
set_hitbox_value(at, num, HG_ANGLE, 140);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_heavy1);

set_num_hitboxes(at, num);
