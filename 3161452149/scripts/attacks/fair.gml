var at = AT_FAIR;

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("fair"));
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 6);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_weak);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 35);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 60);
set_hitbox_value(at, num, HG_HEIGHT, 60);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 40);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

set_num_hitboxes(at, num);