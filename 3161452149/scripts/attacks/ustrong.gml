var at = AT_USTRONG;

set_attack_value(at, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(at, AG_STRONG_CHARGE_WINDOW, 1);

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//1 startup
num++
set_window_value(at, num, AG_WINDOW_LENGTH, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_swipe_weak);

//1 startup
num++
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_mol_norm_explode"));

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 15);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 20);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 95);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_weak);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 5);

num++;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_WINDOW, 4);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 10);
set_hitbox_value(at, num, HG_HITBOX_Y, -95);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 80);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 9);
set_hitbox_value(at, num, HG_ANGLE, 90);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(at, num);